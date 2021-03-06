package siscofe

class ProfesionDeFeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def springSecurityService
    def sessionFactory

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [profesionDeFeInstanceList: ProfesionDeFe.list(params), profesionDeFeInstanceTotal: ProfesionDeFe.count()]
    }

    def create = {
        def profesionDeFeInstance = new ProfesionDeFe()
        profesionDeFeInstance.properties = params
        return [profesionDeFeInstance: profesionDeFeInstance]
    }

    def save = {
        def profesionDeFeInstance = new ProfesionDeFe(params)
        log.debug "params: $params"
        try{
        ProfesionDeFe.withTransaction{
        Persona persona = Persona.get(params.persona.id)
        persona.esMiembro=true
        persona.save(flush:true)

        if (profesionDeFeInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'profesionDeFe.label', default: 'ProfesionDeFe'), profesionDeFeInstance.id])}"
            redirect(action: "show", id: profesionDeFeInstance.id)
        }
    }
        }catch(Exception e){
            log.error("No se pudo crear la Profesión de Fe",e)
            if (profesionDeFeInstance) {
                profesionDeFeInstance.discard()
            }
            flash.message = message(code:"profesionDeFe.noCrea")
            render(view: "create", model: [profesionDeFeInstance: profesionDeFeInstance])
        }
       
    }

    def show = {
        def profesionDeFeInstance = ProfesionDeFe.get(params.id)
        if (!profesionDeFeInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'profesionDeFe.label', default: 'ProfesionDeFe'), params.id])}"
            redirect(action: "list")
        }
        else {
            [profesionDeFeInstance: profesionDeFeInstance]
        }
    }

    def edit = {
        log.debug "############ $params"
        def profesionDeFeInstance = ProfesionDeFe.get(params.id)
        log.debug "id_Persona_Bautismo: $profesionDeFeInstance.persona.id"
        def persona = Persona.get(profesionDeFeInstance.persona.id)
        log.debug "id_Persona: $persona"
        if (!profesionDeFeInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'profesionDeFe.label', default: 'ProfesionDeFe'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [profesionDeFeInstance: profesionDeFeInstance]
        }
    }

    def update = {
        def profesionDeFeInstance = ProfesionDeFe.get(params.id)
        try{
        ProfesionDeFe.withTransaction{
        if (profesionDeFeInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (profesionDeFeInstance.version > version) {
                    
                    profesionDeFeInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'profesionDeFe.label', default: 'ProfesionDeFe')] as Object[], "Another user has updated this ProfesionDeFe while you were editing")
                    render(view: "edit", model: [profesionDeFeInstance: profesionDeFeInstance])
                    return
                }
            }
            profesionDeFeInstance.properties = params
            if (!profesionDeFeInstance.hasErrors() && profesionDeFeInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'profesionDeFe.label', default: 'ProfesionDeFe'), profesionDeFeInstance.id])}"
                audita(profesionDeFeInstance,'ACTUALIZO | Profesion de Fe')
                redirect(action: "show", id: profesionDeFeInstance.id)
            }
            }
            }
        }catch(Exception e){
            log.error("No se pudo actualizar la Profesion de Fe",e)
            if (profesionDeFeInstance) {
                profesionDeFeInstance.discard()
            }
            flash.message = message(code:"profesionDeFe.noActualiza")
            render(view:"edit",model:[profesionDeFeInstance:profesionDeFeInstance])
        }
    }

    def delete = {
        def profesionDeFeInstance = ProfesionDeFe.get(params.id)
        if (profesionDeFeInstance) {
            try {
                profesionDeFeInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'profesionDeFe.label', default: 'ProfesionDeFe'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'profesionDeFe.label', default: 'ProfesionDeFe'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'profesionDeFe.label', default: 'ProfesionDeFe'), params.id])}"
            redirect(action: "list")
        }
    }

        def audita(ProfesionDeFe profesionDeFe, String actividad) {
        log.debug "[AUDITA] $actividad Profesion DeFe $profesionDeFe"
        def creador = springSecurityService.authentication.name
        def bitacora = new Bitacora()
        bitacora.tabla= "ProfesionDeFe"
        bitacora.usuario = creador
        bitacora.actividad = actividad
        bitacora.campo = profesionDeFe
        bitacora.save()
    }
}
