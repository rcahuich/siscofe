import roles.*
class BootStrap {

    def springSecurityService
    def init = { servletContext ->


        log.info "Creacion de Roles"
        def admin = Rol.findByAuthority('ROLE_ADMIN') ?: new Rol(authority: 'ROLE_ADMIN').save(failOnError: true)
        def user = Rol.findByAuthority('ROLE_USER') ?: new Rol(authority: 'ROLE_USER').save(flush: true)
        
        
        
        log.info "Creacion de Usuario"
        def usuario = Usuario.findByUsername('admin')
                if (!usuario){
                        usuario = new Usuario(
                        username : 'admin'
                        ,password : springSecurityService.encodePassword('admin')
                        ,enabled : true
                        ,nombre:'R. Angel'
                        ,apellido:'Cahuich'
                        ,correo:'rcc@um.edu.mx'
                    ).save(flush: true)
                }
                if (!usuario.authorities.contains(admin)){
                UsuarioRol.create(usuario, admin)
                }


           log.info("¡La aplicacion ha sido cargada exitosamente!")
    }

    def destroy = {
    }
}
