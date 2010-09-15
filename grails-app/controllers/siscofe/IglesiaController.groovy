package siscofe

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class IglesiaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [iglesiaInstanceList: Iglesia.list(params), iglesiaInstanceTotal: Iglesia.count()]
    }

    def create = {
        def iglesiaInstance = new Iglesia()
        def direccionInstance = new Direccion()
        iglesiaInstance.properties = params
        log.debug "##############################  Iglesia: $iglesiaInstance.properties"
        direccionInstance.properties = params
        log.debug "##############################  Direccion: $direccionInstance.properties"
        return [iglesiaInstance: iglesiaInstance]
        return [direccionInstance: direccionInstance]

    }

    def save = {
        def iglesiaInstance = new Iglesia(params)
        log.debug "#################################################  Iglesia: $iglesiaInstance"        
        def direccionInstance = new Direccion(params)//agregado
        log.debug "#################################################  Direccion: $direccionInstance"
        if (iglesiaInstance.save(flush: true) && direccionInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'iglesia.label', default: 'Iglesia'), iglesiaInstance.id])}"
            redirect(action: "show", id: iglesiaInstance.id)
        }
        else {
            render(view: "create", model: [iglesiaInstance: iglesiaInstance])
        }
    }

    def show = {
        def iglesiaInstance = Iglesia.get(params.id)
        if (!iglesiaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'iglesia.label', default: 'Iglesia'), params.id])}"
            redirect(action: "list")
        }
        else {
            [iglesiaInstance: iglesiaInstance]
        }
    }

    def edit = {
        def iglesiaInstance = Iglesia.get(params.id)
        if (!iglesiaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'iglesia.label', default: 'Iglesia'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [iglesiaInstance: iglesiaInstance]
        }
    }

    def update = {
        def iglesiaInstance = Iglesia.get(params.id)
        if (iglesiaInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (iglesiaInstance.version > version) {
                    
                    iglesiaInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'iglesia.label', default: 'Iglesia')] as Object[], "Another user has updated this Iglesia while you were editing")
                    render(view: "edit", model: [iglesiaInstance: iglesiaInstance])
                    return
                }
            }
            iglesiaInstance.properties = params
            if (!iglesiaInstance.hasErrors() && iglesiaInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'iglesia.label', default: 'Iglesia'), iglesiaInstance.id])}"
                redirect(action: "show", id: iglesiaInstance.id)
            }
            else {
                render(view: "edit", model: [iglesiaInstance: iglesiaInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'iglesia.label', default: 'Iglesia'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def iglesiaInstance = Iglesia.get(params.id)
        if (iglesiaInstance) {
            try {
                iglesiaInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'iglesia.label', default: 'Iglesia'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'iglesia.label', default: 'Iglesia'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'iglesia.label', default: 'Iglesia'), params.id])}"
            redirect(action: "list")
        }
    }
}
