package siscofe

class ProfesionDeFeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

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
        if (profesionDeFeInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'profesionDeFe.label', default: 'ProfesionDeFe'), profesionDeFeInstance.id])}"
            redirect(action: "show", id: profesionDeFeInstance.id)
        }
        else {
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
        def profesionDeFeInstance = ProfesionDeFe.get(params.id)
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
                redirect(action: "show", id: profesionDeFeInstance.id)
            }
            else {
                render(view: "edit", model: [profesionDeFeInstance: profesionDeFeInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'profesionDeFe.label', default: 'ProfesionDeFe'), params.id])}"
            redirect(action: "list")
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
}
