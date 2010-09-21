import roles.*
class BootStrap {

    def springSecurityService
    def init = { servletContext ->
           def admin = Rol.findByAuthority('ROLE_ADMIN') ?: new Rol(authority: 'ROLE_ADMIN').save(failOnError: true)
    log.info "Creacion de usuario Admin"
        def usuario = Usuario.findByUsername('admin')
        if (!usuario){
            usuario = new Usuario(
                username : 'admin'
                , password : springSecurityService.encodePassword('admin')
                , enabled : true
            ).save(failOnError: true)
        }
        if (!usuario.authorities.contains(admin)){
            UsuarioRol.create(usuario, admin)
        }
    }
    def destroy = {
    }
}
