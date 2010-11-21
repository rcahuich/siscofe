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

        def miembros = search(params, true)
        log.debug "**************************"
        log.debug "miembros $miembros"

        log.debug "personas_size: $miembros.size"

        return miembros
    }

    /**
     *Regresa una lista de Personas, filtradas por su Nombre, ApellidoPaterno y ApellidoMaterno
     **/
    def searchPersonaByName(params){
        log.debug "params: $params"

        def personas = search(params, false)

        log.debug "**************************"
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

    /*
     * Devuelve un VO (Hoja) que contiene todos los datos relacionados con el Miembro, que se mostraran en la Hoja del Miembro
     * Lo que devuelve es:
     * -Persona
     * -Ultimo Ingreso de la Persona
     */
    def hojaMiembro(params){
        log.debug "Entro a hojaMiembro en PersonaService"
        log.debug "params: $params"

        def persona = Persona.get(params.id)
        log.debug "persona: $persona"

        HojaVO hoja = new HojaVO()
                
        //Agregando Persona al VO
        hoja.setPersona(persona)

        //Logica para traer el ultimo ingreso de la persona
        def ultimoIngreso = TipoDeIngreso.executeQuery("select ti from TipoDeIngreso ti where ti.persona=:p order by fecha_alta desc",[p:persona],[max:1])
        log.debug "ultimoIngreso: $ultimoIngreso"
        log.debug "ultimoIngreso_size: $ultimoIngreso.size"

        //Agregando Ultimo Ingreso al VO
        hoja.setTipoIngreso(ultimoIngreso.get(0))//Obteniendo el unico valor de la lista devuelta por el query
        log.debug "hoja: $hoja"

        return hoja
    }

    def serviceMethod() {

    }
}
