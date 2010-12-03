package siscofe

class BajaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def springSecurityService
    def sessionFactory

    def index = {
        redirect(action: "list", params: params)
    }

    def fin = {
        render(view: "fin",  params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [bajaInstanceList: Baja.list(params), bajaInstanceTotal: Baja.count()]
    }

    def create = {
        log.debug "entro a create de Baja"
        def bajaInstance = new Baja(params)
        log.debug "########### params $params"
        log.debug "########### params $params.id"
        Persona persona = Persona.get(params.id)
        bajaInstance.persona = persona
//        bajaInstance.properties = params
        log.debug "########### params $bajaInstance"
        return [bajaInstance: bajaInstance]
    }

    def save = {
        log.debug "entro a save de Baja"
        def bajaInstance = new Baja(params)
        log.debug "################## $params"
        log.debug "################## $params.persona.id"
        try{
            Baja.withTransaction{
                Persona persona = Persona.get(params.persona.id)
                log.debug "################## $persona"
                persona.esMiembro=false
                persona.save(flush:true)
                if (bajaInstance.save(flush: true)) {
                    flash.message = "${message(code: 'baja.crea', args: [bajaInstance.persona.nombre])}"
                    audita(bajaInstance,'BAJA | Se dio de baja a un miembro')
                    redirect(action: "show", id: bajaInstance.id)
                }
            }

        }catch(Exception e){
            log.error("No se pudo dar de Baja",e)
            if (bajaInstance) {
                bajaInstance.discard()
            }
            flash.message = message(code:"baja.noCrea")
            render(view:"create", model: [bajaInstance: bajaInstance])
        }
    }

    def show = {
        def bajaInstance = Baja.get(params.id)
        if (!bajaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'baja.label', default: 'Baja'), params.id])}"
            redirect(action: "list")
        }
        else {
            [bajaInstance: bajaInstance]
        }
    }

    def edit = {
        def bajaInstance = Baja.get(params.id)
        if (!bajaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'baja.label', default: 'Baja'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [bajaInstance: bajaInstance]
        }
    }

    def update = {
        def bajaInstance = Baja.get(params.id)
        if (bajaInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (bajaInstance.version > version) {
                    bajaInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'baja.label', default: 'Baja')] as Object[], "Another user has updated this Baja while you were editing")
                    render(view: "edit", model: [bajaInstance: bajaInstance])
                    return
                }
            }
            bajaInstance.properties = params
            if (!bajaInstance.hasErrors() && bajaInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'baja.label', default: 'Baja'), bajaInstance.id])}"
                redirect(action: "show", id: bajaInstance.id)
            }
            else {
                render(view: "edit", model: [bajaInstance: bajaInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'baja.label', default: 'Baja'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def bajaInstance = Baja.get(params.id)
        if (bajaInstance) {
            try {
                bajaInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'baja.label', default: 'Baja'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'baja.label', default: 'Baja'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'baja.label', default: 'Baja'), params.id])}"
            redirect(action: "list")
        }
    }

    def audita(Baja baja, String actividad) {
        log.debug "[AUDITA] $actividad persona $baja"
        def creador = springSecurityService.authentication.name
        def bitacora = new Bitacora()
        bitacora.tabla= "Baja"
        bitacora.usuario = creador
        bitacora.actividad = actividad
        bitacora.campo = baja
        bitacora.save()
    }
}
