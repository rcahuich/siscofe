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
        iglesiaInstance.properties = params
        return [iglesiaInstance: iglesiaInstance]
    }

    def save = {
        def iglesiaInstance = new Iglesia(params)

        try{
        Iglesia.withTransaction {
            def direccion = iglesiaInstance.direccion
            iglesiaInstance.direccion = direccion.save()
            if (iglesiaInstance.save(flush: true)) {
                flash.message = "${message(code: 'iglesia.crea', args: [iglesiaInstance.nombre])}"
                redirect(action: "show", id: iglesiaInstance.id)
            }
        }
     }catch(Exception e){
         log.error("No se pudo crear la iglesia", e)
         if(iglesiaInstance){
             iglesiaInstance.discard()
         }
         flash.message = message(code:"iglesia.noCrea")
         render(view:"create", model: [iglesiaInstance: iglesiaInstance])
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
        try{
        Iglesia.withTransaction {
            def direccion = iglesiaInstance.direccion
            iglesiaInstance.direccion = direccion.save()
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
                flash.message = "${message(code: 'iglesia.actualiza', args: [iglesiaInstance.nombre])}"
                redirect(action: "show", id: iglesiaInstance.id)
            }
          }
        }
        }catch(Exception e){
            log.error("No se pudo actualizar la iglesia",e)
            if (iglesiaInstance) {
                iglesiaInstance.discard()
            }
            flash.message = message(code:"iglesia.noActualiza")
            render(view:"edit",model:[iglesiaInstance:iglesiaInstance])
        }
    }

    def delete = {
        def iglesiaInstance = Iglesia.get(params.id)
        try {
                Iglesia.withTransaction{
                    iglesiaInstance.delete(flush: true)
                    flash.message = "${message(code: 'iglesia.baja', args: [iglesiaInstance.nombre])}"
                    redirect(action: "list")
                }
            }catch (Exception e) {
                log.error("No se pudo dar de baja a la iglesia",e)
                flash.message = message(code: 'iglesia.noBaja')
                redirect(action: "show", id: params.id)
            }
    }
}
