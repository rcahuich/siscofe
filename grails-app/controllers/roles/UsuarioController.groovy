package roles
import grails.plugins.springsecurity.Secured
import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

@Secured(['ROLE_ADMIN'])
class UsuarioController {

    def usuarioService
    def springSecurityService
    def sessionFactory
    
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [usuarioInstanceList: Usuario.list(params), usuarioInstanceTotal: Usuario.count()]
    }

    def create = {
        def usuarioInstance = new Usuario()
        usuarioInstance.properties = params
        def roles = obtieneListaDeRoles(null)
        return [usuarioInstance: usuarioInstance, roles:roles]
    }

    def save = {
        def usuarioInstance = new Usuario(params)
        log.debug "Agregando nuevo usuario --$usuarioInstance.nombre"
        usuarioInstance.password = springSecurityService.encodePassword(params.password)
                def roles = [] as Set
                if (params.ROLE_ADMIN) {
                    roles << Rol.findByAuthority('ROLE_ADMIN')
                }else {
                    roles << Rol.findByAuthority('ROLE_USER')
                }

        if (usuarioInstance.save(flush: true)) {
            for(rol in roles) {
                    UsuarioRol.create(usuarioInstance, rol)
                }
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuarioInstance.id])}"
            redirect(action: "show", id: usuarioInstance.id)
        }
        else {
            render(view: "create", model: [usuarioInstance: usuarioInstance])
        }
    }

    def show = {
        def usuarioInstance = Usuario.get(params.id)
        def roles = obtieneListaDeRoles(usuarioInstance)
        if (!usuarioInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])}"
            redirect(action: "list")
        }
        else {
            [usuarioInstance: usuarioInstance, roles:roles]
        }
    }

    def edit = {
        def usuarioInstance = Usuario.get(params.id)
        def roles = obtieneListaDeRoles(usuarioInstance)
        if (!usuarioInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [usuarioInstance: usuarioInstance, roles:roles]
        }
    }

    def update = {
        def usuarioInstance = Usuario.get(params.id)
        if (usuarioInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (usuarioInstance.version > version) {

                    usuarioInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'usuario.label', default: 'Usuario')] as Object[], "Another user has updated this Usuario while you were editing")
                    render(view: "edit", model: [usuarioInstance: usuarioInstance])
                    return
                }
            }

            usuarioInstance.properties = params
            def cambioPasswd = false
                if (!usuarioInstance.password.equals(params.password)) {
                    cambioPasswd = true
                }
                usuarioInstance.properties = params
                if (cambioPasswd) {
                    usuarioInstance.password = springSecurityService.encodePassword(params.password)
                }
                def roles = [] as Set
                if (params.ROLE_ADMIN) {
                    roles << Rol.findByAuthority('ROLE_ADMIN')
                }else {
                    roles << Rol.findByAuthority('ROLE_USER')
                }

            if (!usuarioInstance.hasErrors() && usuarioInstance.save(flush: true)) {
                    if (roles) {
                        UsuarioRol.removeAll(usuarioInstance)
                        sessionFactory.currentSession.flush()

                        for(rol in roles) {
                            UsuarioRol.create(usuarioInstance, rol, false)
                        }
                    }
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuarioInstance.id])}"
                redirect(action: "show", id: usuarioInstance.id)
            }
            else {
                render(view: "edit", model: [usuarioInstance: usuarioInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def usuarioInstance = Usuario.get(params.id)
        if (usuarioInstance) {
            try {

                String nombre = usuarioInstance.username
                UsuarioRol.removeAll(usuarioInstance)
                usuarioInstance.delete(flush: true)

                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])}"
            redirect(action: "list")
        }
    }

    Map obtieneListaDeRoles(usuario) {
        def roles = Rol.list()

        def rolesFiltrados = [] as Set
        //def creador = usuarioService.obtiene(springSecurityService.principal().id)
        if (SpringSecurityUtils.ifAnyGranted('ROLE_ADMIN')) {
            rolesFiltrados = roles
            }

        roles.sort { r1, r2 ->
            r1.authority <=> r2.authority
        }

        Set userRoleNames = []
        for (role in usuario?.authorities) {
            userRoleNames << role.authority
        }

        LinkedHashMap<Rol, Boolean> roleMap = [:]
        for (role in roles) {
            roleMap[(role)] = userRoleNames.contains(role.authority)
        }

        return roleMap
    }
}
