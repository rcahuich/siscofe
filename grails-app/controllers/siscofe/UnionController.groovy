package siscofe

class UnionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [unionInstanceList: Union.list(params), unionInstanceTotal: Union.count()]
    }

    def create = {
        def unionInstance = new Union()
        unionInstance.properties = params
        return [unionInstance: unionInstance]
    }

    def save = {
        def unionInstance = new Union(params)
        if (unionInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'union.label', default: 'Union'), unionInstance.id])}"
            redirect(action: "show", id: unionInstance.id)
        }
        else {
            render(view: "create", model: [unionInstance: unionInstance])
        }
    }

    def show = {
        def unionInstance = Union.get(params.id)
        if (!unionInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'union.label', default: 'Union'), params.id])}"
            redirect(action: "list")
        }
        else {
            [unionInstance: unionInstance]
        }
    }

    def edit = {
        def unionInstance = Union.get(params.id)
        if (!unionInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'union.label', default: 'Union'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [unionInstance: unionInstance]
        }
    }

    def update = {
        def unionInstance = Union.get(params.id)
        if (unionInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (unionInstance.version > version) {
                    
                    unionInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'union.label', default: 'Union')] as Object[], "Another user has updated this Union while you were editing")
                    render(view: "edit", model: [unionInstance: unionInstance])
                    return
                }
            }
            unionInstance.properties = params
            if (!unionInstance.hasErrors() && unionInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'union.label', default: 'Union'), unionInstance.id])}"
                redirect(action: "show", id: unionInstance.id)
            }
            else {
                render(view: "edit", model: [unionInstance: unionInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'union.label', default: 'Union'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def unionInstance = Union.get(params.id)
        if (unionInstance) {
            try {
                unionInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'union.label', default: 'Union'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'union.label', default: 'Union'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'union.label', default: 'Union'), params.id])}"
            redirect(action: "list")
        }
    }
}
