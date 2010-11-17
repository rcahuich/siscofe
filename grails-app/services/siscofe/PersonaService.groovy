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

    /**
     *Regresa una lista de Miembros, filtradas por su Nombre, ApellidoPaterno y ApellidoMaterno
     **/
    def searchMiembroByName(params){
        log.debug "params: $params"

//        List<HojaVO> hojas = new ArrayList<HojaVO>()

        def miembros = search(params, true)
        log.debug "************************************************************************************************************************"
        log.debug "miembros $miembros"

        log.debug "personas_size: $miembros.size"
//        personasList = personas
//        log.debug "personasList_size: $personasList.size"
//        log.debug personasList

        //BUSQUEDA DE TIPO DE INGRESOS DE LOS MIEMBROS
//        for(Persona m : miembros){
//            log.debug "-------"
//            log.debug m.ingresos
//            log.debug "-------"
//        }
//        return hoja
        return miembros
    }

    /**
     *Regresa una lista de Personas, filtradas por su Nombre, ApellidoPaterno y ApellidoMaterno
     **/
    def searchPersonaByName(params){
        log.debug "params: $params"

        def personas = search(params, false)

        log.debug "************************************************************************************************************************"
        log.debug "personas $personas"

        return personas
    }

    /**
     *Busca Personas o Miembros por su Nombre, ApellidoPaterno y ApellidoMaterno
     *Si es Persona --> esMiembro=false
     *Si es Miembro --> esMiembro=true
    **/
    def search(params, Boolean esMiembro){
        log.debug "esMiembro: $esMiembro"
        //BUSQUEDA DE PERSONAS
        def criteria = Persona.createCriteria()

        def personas = criteria.list{
            and{
                    if(params.filtroNombre != null && !params.filtroNombre.equals("")){
                        like("nombre", "%" + params.filtroNombre + "%")
                    }
                    if(params.filtroApellidoPaterno != null && !params.filtroApellidoPaterno.equals("")){
                        like("apellidoPaterno", params.filtroApellidoPaterno + "%")
                    }
                    if(params.filtroApellidoMaterno != null && !params.filtroApellidoMaterno.equals("")){
                        like("apellidoMaterno", params.filtroApellidoMaterno + "%")
                    }
                    eq("esMiembro", esMiembro)
            }
            order("apellidoPaterno")
        }
    }

    def serviceMethod() {

    }
}
