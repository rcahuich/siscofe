package siscofe

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class DireccionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [direccionInstanceList: Direccion.list(params), direccionInstanceTotal: Direccion.count()]
    }

    def create = {
        def direccionInstance = new Direccion()
        direccionInstance.properties = params
        return [direccionInstance: direccionInstance]
    }

    def save = {
        def direccionInstance = new Direccion(params)
        if (direccionInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'direccion.label', default: 'Direccion'), direccionInstance.id])}"
            redirect(action: "show", id: direccionInstance.id)
        }
        else {
            render(view: "create", model: [direccionInstance: direccionInstance])
        }
    }

    def show = {
        def direccionInstance = Direccion.get(params.id)
        if (!direccionInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'direccion.label', default: 'Direccion'), params.id])}"
            redirect(action: "list")
        }
        else {
            [direccionInstance: direccionInstance]
        }
    }

    def edit = {
        def direccionInstance = Direccion.get(params.id)
        if (!direccionInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'direccion.label', default: 'Direccion'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [direccionInstance: direccionInstance]
        }
    }

    def update = {
        def direccionInstance = Direccion.get(params.id)
        if (direccionInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (direccionInstance.version > version) {
                    
                    direccionInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'direccion.label', default: 'Direccion')] as Object[], "Another user has updated this Direccion while you were editing")
                    render(view: "edit", model: [direccionInstance: direccionInstance])
                    return
                }
            }
            direccionInstance.properties = params
            if (!direccionInstance.hasErrors() && direccionInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'direccion.label', default: 'Direccion'), direccionInstance.id])}"
                redirect(action: "show", id: direccionInstance.id)
            }
            else {
                render(view: "edit", model: [direccionInstance: direccionInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'direccion.label', default: 'Direccion'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def direccionInstance = Direccion.get(params.id)
        if (direccionInstance) {
            try {
                direccionInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'direccion.label', default: 'Direccion'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'direccion.label', default: 'Direccion'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'direccion.label', default: 'Direccion'), params.id])}"
            redirect(action: "list")
        }
    }
}
