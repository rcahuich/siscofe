import roles.*
import siscofe.*
class BootStrap {

    def springSecurityService
    def init = { servletContext ->


        log.info "Creacion de Roles"
        def admin = Rol.findByAuthority('ROLE_ADMIN') ?: new Rol(authority: 'ROLE_ADMIN').save(failOnError: true)
        def user = Rol.findByAuthority('ROLE_USER') ?: new Rol(authority: 'ROLE_USER').save(flush: true)
        
        
//        log.info "Creacion de Union"
//        def union = Union.findByNombre('UMN')
//        if(!union){
//            union = new Union(
//                codigo : 'UMN'
//                ,nombre : 'UMN'
//                ,nombreCompleto : 'Union Mexicana del Norte'
//            )
//            union.save(flash:true)
//        }
//
//        log.info "Creacion de Asociacion"
//        def asoc = Asociacion.findByNombre('AN')
//            if(!asoc){
//                asoc = new Asociacion(
//                    codigo : 'AN'
//                    ,nombre : 'AN'
//                    ,nombreCompleto : 'Asociación del Noreste'
//                    ,union : 'UMN'
//                )
//                union.asociacion = asoc.save(flash:true)
//            }
//
//        log.info "Creacion de Distrito"
//        def dist = Distrito.findByNombre('DMont')
//                if(!dist){
//                    dist = new Distrito(
//                        codigo : 'UMN'
//                        ,nombre : 'UMN'
//                        ,nombreCompleto : 'Union Mexicana del Norte'
//                        ,asociacion : 'AN'
//                    )
//                    asoc.distrito = dist.save(flash:true)
//                }


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

//        log.info "Creacion de Iglesia"
//        def iglesia = Iglesia.findByNombre('Universitaria')
//        def direccion = Direccion.findByPais('Peru')
//        if (!iglesia){
//            iglesia = new Iglesia(
//                    nombre : 'Iglesia Universitaria'
//                    ,tipoIglesia : 'ORGANIZADA'
//                    ,telefono : '849382008'
//            )
//            if (!direccion){
//                direccion = new Direccion(
//                    pais : 'Mexico'
//                    ,estado : 'Nuevo Leon'
//                    ,municipio : 'Montemorelos'
//                    ,ciudad : 'Montemorelos'
//                    ,ejido : 'Montemorelos'
//                    ,colonia : 'Campus Universitario'
//                    ,calle : 'Calle a Huachinango'
//                    ,numero : '298'
//                    ,codigoPostal : '65500'
//                )
//                iglesia.direccion = direccion.save(flash:true)
//            }
//            iglesia.save(flush:true)
//        }
        
        
        log.info "Creacion de Persona Base"
        def persona = Persona.findByNombre('Alejandro Felipe')
        def direccion = Direccion.findByPais('Mexico')
        
        if (!persona){
            persona = new Persona(
                    nombre : 'Alejandro Felipe'
                    ,apellidoPaterno : 'Torres'
                    ,apellidoMaterno : 'Martinez'
                    ,estadoCivil : 'SOLTERO'
                    ,nivelEstudio : 'PRIMARIA'
                    ,religionAnterior : 'NINGUNO'
                    ,tipoDeSangre : 'A+'
                    ,enfermedades : 'Ninguna, antes asma, pero ahora nada =D'
                    ,fechaNacimiento : '07/07/2010'
                    ,phoneTrabajo : '8493833'
                    ,phoneCelular : '8492839'
                    ,phoneCasa : '87493021'
                    ,correo : 'alejandro.f@siscofe.com'
                    ,sexo : 'Masculino'
                    ,sabeLeer : true
                    ,esMiembro : false
            )
    
            if (!direccion){
                direccion = new Direccion(
                    pais : 'Mexico'
                    ,estado : 'Nuevo Leon'
                    ,municipio : 'Montemorelos'
                    ,ciudad : 'Montemorelos'
                    ,ejido : 'Montemorelos'
                    ,colonia : 'Campus Universitario'
                    ,calle : 'Av. Universidad'
                    ,numero : '289-C'
                    ,codigoPostal : '65900'
                )
                persona.direccion = direccion.save(flash:true)
            }
            
            persona.save(flush:true)
        }

        log.info("¡La aplicacion ha sido cargada exitosamente!")
    }

    def destroy = {
    }
}
