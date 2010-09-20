package siscofe

<<<<<<< HEAD
=======
//import grails.plugins.springsecurity.Secured

//@Secured(['ROLE_ADMIN'])
>>>>>>> a8aec2654b985f565b9a0027a1a7c26bf4757c6e
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
<<<<<<< HEAD
        def direccionInstance = new Direccion()
        direccionInstance.properties = params
        log.debug"################# Direccion = $direccionInstance.properties ######################"
        iglesiaInstance.properties = params
        log.debug"################# Iglesia = $iglesiaInstance.properties ######################"
        return [iglesiaInstance: iglesiaInstance]
        return [direccionInstance: direccionInstance]

=======

        iglesiaInstance.properties = params
        log.debug "##############################  Iglesia: $iglesiaInstance.properties"
        
        return ['iglesiaInstance': iglesiaInstance]
        
>>>>>>> a8aec2654b985f565b9a0027a1a7c26bf4757c6e
    }

    def save = {
        def iglesiaInstance = new Iglesia(params)
<<<<<<< HEAD
        log.debug"################# Iglesia = $iglesiaInstance ######################"
        def direccionInstance = new Direccion(params)
        log.debug"################# Direccion = $direccionInstance ######################"
        new Iglesia(direccion:new Direccion()).save()
        if (iglesiaInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'iglesia.label', default: 'Iglesia'), iglesiaInstance.id])}"
            redirect(action: "show", id: iglesiaInstance.id)
=======
        
        log.debug "#################################################  Iglesia: $iglesiaInstance"        

          if(!iglesiaInstance.hasErrors() && iglesiaInstance.save()) {
            flash.message = "Iglesia ${iglesiaInstance.id} created"
            redirect(action:show,id:iglesiaInstance.id)
>>>>>>> a8aec2654b985f565b9a0027a1a7c26bf4757c6e
        }
        else {
            render(view:'create',model:[iglesiaInstance:iglesiaInstance])
        }
    }

    def show = {
        def iglesiaInstance = Iglesia.get(params.id)
        
        if (!iglesiaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'iglesia.label', default: 'Iglesia'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [iglesiaInstance: iglesiaInstance]
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

            def _toBeDeleted = iglesiaInstance.direcciones.findAll {it._deleted}
            if (_toBeDeleted) {
                iglesiaInstance.direcciones.removeAll(_toBeDeleted)
            }
            log.debug "#################################################  Iglesia(antes save): $iglesiaInstance"
            if(!iglesiaInstance.hasErrors() && iglesiaInstance.save()) {
                log.debug "#################################################  Iglesia(despues save): $iglesiaInstance"
                flash.message = "Iglesia ${params.id} actualizada"
                redirect(action:show,id:iglesiaInstance.id)
            }
            else {
                render(view:'edit',model:[iglesiaInstance:iglesiaInstance])
            }
        }
        else {
            flash.message = "Iglesia not found with id ${params.id}"
            redirect(action:list)
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
