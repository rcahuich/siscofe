package siscofe

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class PersonaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def personaService

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def resultado = personaService.search(params,false)
        [personaInstanceList : resultado, personaInstanceTotal: Persona.count()]
    }

    def tipoSangre = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def resultado = personaService.listadeTipoDeSangre(params)
        [personaInstanceList : resultado.listas, personaInstanceTotal: Persona.count()]
    }

    def direMiembros = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def resultado = personaService.buscaDireccion(params)
        [personaInstanceList : resultado.listas, personaInstanceTotal: Persona.count()]
    }

    def create = {
        def personaInstance = new Persona()
        personaInstance.properties = params
        return [personaInstance: personaInstance]
    }

    def save = {
        def personaInstance = new Persona(params)
        try{
        Persona.withTransaction {
            def direccion = personaInstance.direccion
            personaInstance.direccion = direccion.save()
        if (personaInstance.save(flush: true)) {
            flash.message = "${message(code: 'persona.crea', args: [personaInstance.nombre])}"
            redirect(action: "show", id: personaInstance.id)
        }
        }
    }catch(Exception e) {
        log.error("No se pudo crear la persona",e)
        if (personaInstance) {
                personaInstance.discard()
            }
            flash.message = message(code:"persona.noCrea")
            render(view:"create", model: [personaInstance: personaInstance])
    }
    }

    def show = {
        def personaInstance = Persona.get(params.id)
        if (!personaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'persona.label', default: 'Persona'), params.id])}"
            redirect(action: "list")
        }
        else {
            [personaInstance: personaInstance]
        }
    }


    def personaCompleta = {
        def personaInstance = Persona.get(params.id)
        if (!personaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'persona.label', default: 'Persona'), params.id])}"
            redirect(action: "personaCompleta")
        }
        else {
            [personaInstance: personaInstance]
        }
    }
	
	
    def edit = {
        def personaInstance = Persona.get(params.id)
        if (!personaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'persona.label', default: 'Persona'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [personaInstance: personaInstance]
        }
    }

    def update = {
        def personaInstance = Persona.get(params.id)
        try{
        Persona.withTransaction {
                def direccion = personaInstance.direccion
                personaInstance.direccion = direccion.save()
        if (personaInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (personaInstance.version > version) {
                    personaInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'persona.label', default: 'Persona')] as Object[], "Another user has updated this Persona while you were editing")
                    render(view: "edit", model: [personaInstance: personaInstance])
                    return
                }
            }

            personaInstance.properties = params
            if (!personaInstance.hasErrors() && personaInstance.save(flush: true)) {
                flash.message = "${message(code: 'persona.actualiza', args: [personaInstance.nombre])}"
                redirect(action: "show", id: personaInstance.id)
            }
            }
        }
        }catch(Exception e){
            log.error("No se pudo actualizar la persona",e)
            if (personaInstance) {
                personaInstance.discard()
            }
            flash.message = message(code:"persona.noActualiza")
            render(view:"edit",model:[personaInstance:personaInstance])
        }
	
    }

    def delete = {
        def personaInstance = Persona.get(params.id)
            try {
                Persona.withTransaction{
                if(!personaInstance.esMiembro){
                     personaInstance.delete(flush: true)
                    flash.message = "${message(code: 'persona.baja', args: [personaInstance.nombre])}"
                    redirect(action: "list")
                }
                else{
                    flash.message = "${message(code: 'persona.falla.noBaja.esMiembro', args: [personaInstance.nombre])}"
                    redirect(action: "list")
                }
                }
            }
            catch (Exception e) {
                log.error("No se pudo dar de baja la persona",e)
                flash.message = message(code: 'persona.noBaja')
                redirect(action: "show", id: params.id)
            }
    }

    def elegirTipoDeIngreso= {
        def personaInstance = Persona.get(params.id)
        if (!personaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'persona.label', default: 'Persona'), params.id])}"
            redirect(action: "elegirTipoDeIngreso.gsp")
        }
        else {
            [personaInstance: personaInstance]
        }
    }

    def buscarMiembro={
        log.debug "f_nombre: $params.filtroNombre"
        log.debug "f_apellidoPaterno: $params.filtroApellidoPaterno"
        log.debug "f_apellidoMaterno: $params.filtroApellidoMaterno"

        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def resultado = personaService.searchMiembroByName(params)
        [personaInstanceList : resultado, personaInstanceTotal: Persona.count()]

    }

    def buscarPersona = {
        log.debug "f_nombre: $params.filtroNombre"
        log.debug "f_apellidoPaterno: $params.filtroApellidoPaterno"
        log.debug "f_apellidoMaterno: $params.filtroApellidoMaterno"

        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def resultado = personaService.searchPersonaByName(params)
        [personaInstanceList : resultado, personaInstanceTotal: Persona.count()]
    }

    def hojaMiembro={
        log.debug "Entro a la Hoja del Miembro"
        log.debug "params: $params"

        render(view:'hojaMiembro',model:[hoja:personaService.hojaMiembro(params)])
    }

    def buscarEdad = {
        log.debug "Entro a buscar por edad"
        log.debug "Buscar edad entre --- $params.filtroEdadInicio y $params.filtroEdadFin ---"

        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def resultado = personaService.searchByEdad(params)
        [personaInstanceList : resultado, personaInstanceTotal: Persona.count()]

    }

    def buscarMiembrosActivos = {
        log. debug "Entro a buscar Miembros Activos"
        def resultado = personaService.search(params, true)
        render(view:"reportes/miembrosActivos",model:[personaInstanceList: resultado, personaInstanceotal: Persona.count()])
    }

    def buscarIngresos = {
        log.debug "Entro a Buscar Ingresos"
        log.debug "params: $params"
        //Pasar en el params una variable de control (B=Bautismo, C=Carta de Traslado, P=Profesion de Fe)
        //def resultado = personaService.buscarIngresos(params, )

    }

}
