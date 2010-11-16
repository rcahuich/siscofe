package siscofe

import java.util.*

class PersonaService {

    static transactional = true

    def listadeTipoDeSangre(def params){
        def personas
        if(params?.filtro){
            personas = Persona.findAllByTipoDeSangre(params.filtro)
        }
        return [listas:personas]
    }

    def buscaDireccion(params){
        def personas
        if(params?.filtro){
            log.debug "nombre completo ################## $params.filtro"
            personas = Persona.findByNombreCompleto(params.filtro)
            log.debug "nombre completo ################## $personas"
        }
        return [listas:personas]
    }

    def searchMiembroByName(params){
        log.debug "params: $params"

        List<HojaVO> hojas = new ArrayList<HojaVO>()

//        HojaVO hoja = new HojaVO()

//        def miembros = Persona.createCriteria().list(){
//           def miembros = Persona.createCriteria().list(){
//            like("nombre", params.filtroNombre)
//            and like("apellidoPaterno", params.filtroApellidoPaterno)
//            and like("apellidoMaterno", params.filtroApellidoMaterno)
//        }
//        def results = c {
//	like("holderFirstName", "Fred%")
//	and {
//              between("balance", 500, 1000)
//              eq("branch", "London")
//	}
//	maxResults(10)
//	order("holderLastName", "desc")
//}
        //Book.findAll("from Book as b where b.title like :search or b.author like :search", [search:"The Shi%"])

//        def query = "from Persona as p where "
//        List<Persona> personas = null;

//        if(params.filtroNombre != null && !params.filtroNombre.equals("")){
//            log.debug "Entro nombre"
//            query += "p.nombre like :nombre "
//            log.debug(Persona.findAll(query,[nombre:params.filtroNombre+"%"]))
//            personas = Persona.findAll(query,[nombre:params.filtroNombre+"%"])//.getMetaPropertyValues()
//            log.debug "personas_size: $personas.size"
//            for(Persona p : personas){
//                log.debug(p.toString())
//            }
//            if(params.filtroApellidoPaterno != null && !params.filtroApellidoPaterno.equals("")){
//                log.debug "Entro apellidoPaterno"
//                query += "and p.apellidoPaterno like :apellidoPaterno "
//                log.debug(Persona.findAll(query,[nombre:params.filtroNombre+"%", apellidoPaterno:params.filtroApellidoM+"%"]))
//                if(params.filtroApellidoMaterno != null && !params.filtroApellidoMaterno.equals("")){
//                    log.debug "Entro apellidoMaterno"
//                    query += "and p.apellidoMaterno like :apellidoMaterno"
//                    log.debug(Persona.findAll(query,[nombre:params.filtroNombre+"%", apellidoPaterno:params.filtroApellidoPaterno+"%", apellidoMaterno:params.filtroApellidoMaterno+"%"]))
//                }
//            }
//        }

//        List personasList = null
        //BUSQUEDA DE PERSONAS
        def criteria = Persona.createCriteria()

        def personas = criteria.list{
            HojaVO hoja = new HojaVO()
            and{
                if(params.filtroNombre != null && !params.filtroNombre.equals("")){
                    like("nombre", params.filtroNombre + "%")
                }
                if(params.filtroApellidoPaterno != null && !params.filtroApellidoPaterno.equals("")){
                    like("apellidoPaterno", params.filtroApellidoPaterno + "%")
                }
                if(params.filtroApellidoMaterno != null && !params.filtroApellidoMaterno.equals("")){
                    like("apellidoMaterno", params.filtroApellidoMaterno + "%")
                }
            }
            order("apellidoPaterno")
        }

        log.debug personas
        log.debug "personas_size: $personas.size"
//        personasList = personas
//        log.debug "personasList_size: $personasList.size"
//        log.debug personasList

        //BUSQUEDA DE TIPO DE INGRESOS POR PERSONAS
        for(Persona p : personas){
            log.debug "persona_id: $p.id"
            //criteria = Persona.createCriteria()

            def results = p.ingresos{
                isNotEmpty("id")
            }

            log.debug "ingresos de $p: results"
        }

        





        return hoja
    }

    def serviceMethod() {

    }
}
