package siscofe

class AsociacionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [asociacionInstanceList: Asociacion.list(params), asociacionInstanceTotal: Asociacion.count()]
    }

    def create = {
        def asociacionInstance = new Asociacion()
        asociacionInstance.properties = params
        return [asociacionInstance: asociacionInstance]
    }

    def save = {
        def asociacionInstance = new Asociacion(params)
        if (asociacionInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'asociacion.label', default: 'Asociacion'), asociacionInstance.id])}"
            redirect(action: "show", id: asociacionInstance.id)
        }
        else {
            render(view: "create", model: [asociacionInstance: asociacionInstance])
        }
    }

    def show = {
        def asociacionInstance = Asociacion.get(params.id)
        if (!asociacionInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'asociacion.label', default: 'Asociacion'), params.id])}"
            redirect(action: "list")
        }
        else {
            [asociacionInstance: asociacionInstance]
        }
    }

    def edit = {
        def asociacionInstance = Asociacion.get(params.id)
        if (!asociacionInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'asociacion.label', default: 'Asociacion'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [asociacionInstance: asociacionInstance]
        }
    }

    def update = {
        def asociacionInstance = Asociacion.get(params.id)
        if (asociacionInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (asociacionInstance.version > version) {
                    
                    asociacionInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'asociacion.label', default: 'Asociacion')] as Object[], "Another user has updated this Asociacion while you were editing")
                    render(view: "edit", model: [asociacionInstance: asociacionInstance])
                    return
                }
            }
            asociacionInstance.properties = params
            if (!asociacionInstance.hasErrors() && asociacionInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'asociacion.label', default: 'Asociacion'), asociacionInstance.id])}"
                redirect(action: "show", id: asociacionInstance.id)
            }
            else {
                render(view: "edit", model: [asociacionInstance: asociacionInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'asociacion.label', default: 'Asociacion'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def asociacionInstance = Asociacion.get(params.id)
        if (asociacionInstance) {
            try {
                asociacionInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'asociacion.label', default: 'Asociacion'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'asociacion.label', default: 'Asociacion'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'asociacion.label', default: 'Asociacion'), params.id])}"
            redirect(action: "list")
        }
    }
}
