package siscofe

class DistritoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [distritoInstanceList: Distrito.list(params), distritoInstanceTotal: Distrito.count()]
    }

    def create = {
        def distritoInstance = new Distrito()
        distritoInstance.properties = params
        return [distritoInstance: distritoInstance]
    }

    def save = {
        def distritoInstance = new Distrito(params)
        if (distritoInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'distrito.label', default: 'Distrito'), distritoInstance.id])}"
            redirect(action: "show", id: distritoInstance.id)
        }
        else {
            render(view: "create", model: [distritoInstance: distritoInstance])
        }
    }

    def show = {
        def distritoInstance = Distrito.get(params.id)
        if (!distritoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'distrito.label', default: 'Distrito'), params.id])}"
            redirect(action: "list")
        }
        else {
            [distritoInstance: distritoInstance]
        }
    }

    def edit = {
        def distritoInstance = Distrito.get(params.id)
        if (!distritoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'distrito.label', default: 'Distrito'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [distritoInstance: distritoInstance]
        }
    }

    def update = {
        def distritoInstance = Distrito.get(params.id)
        if (distritoInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (distritoInstance.version > version) {
                    
                    distritoInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'distrito.label', default: 'Distrito')] as Object[], "Another user has updated this Distrito while you were editing")
                    render(view: "edit", model: [distritoInstance: distritoInstance])
                    return
                }
            }
            distritoInstance.properties = params
            if (!distritoInstance.hasErrors() && distritoInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'distrito.label', default: 'Distrito'), distritoInstance.id])}"
                redirect(action: "show", id: distritoInstance.id)
            }
            else {
                render(view: "edit", model: [distritoInstance: distritoInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'distrito.label', default: 'Distrito'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def distritoInstance = Distrito.get(params.id)
        if (distritoInstance) {
            try {
                distritoInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'distrito.label', default: 'Distrito'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'distrito.label', default: 'Distrito'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'distrito.label', default: 'Distrito'), params.id])}"
            redirect(action: "list")
        }
    }
}
