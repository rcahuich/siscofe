package siscofe

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class BautismoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    Persona persona

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [bautismoInstanceList: Bautismo.list(params), bautismoInstanceTotal: Bautismo.count()]
    }

    def create = {
        def bautismoInstance = new Bautismo()
        bautismoInstance.properties = params
        return [bautismoInstance: bautismoInstance]
    }

    def save = {
        def bautismoInstance = new Bautismo(params)
        try{
        Bautismo.withTransaction{
        Persona persona = Persona.get(params.persona.id)
        persona.esMiembro=true
        persona.save(flush:true)
        if (bautismoInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'bautismo.label', default: 'Bautismo'), bautismoInstance.id])}"
            redirect(action: "show", id: bautismoInstance.id)
        }
        }
    }catch(Exception e){
            log.error("No se pudo crear la persona",e)
            if (bautismoInstance) {
                bautismoInstance.discard()
            }
            flash.message = message(code:"bautismo.noCrea")
            render(view:"create", model: [bautismoInstance: bautismoInstance])
        }
    }

    def show = {
        def bautismoInstance = Bautismo.get(params.id)
        if (!bautismoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'bautismo.label', default: 'Bautismo'), params.id])}"
            redirect(action: "list")
        }
        else {
            [bautismoInstance: bautismoInstance]
        }
    }

    def edit = {
        def bautismoInstance = Bautismo.get(params.id)
        if (!bautismoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'bautismo.label', default: 'Bautismo'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [bautismoInstance: bautismoInstance]
        }
    }

    def update = {
        def bautismoInstance = Bautismo.get(params.id)
        try{
        if (bautismoInstance) {
            log.debug "############ $params"
            if (params.version) {
                def version = params.version.toLong()
                if (bautismoInstance.version > version) {
                    
                    bautismoInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'bautismo.label', default: 'Bautismo')] as Object[], "Another user has updated this Bautismo while you were editing")
                    render(view: "edit", model: [bautismoInstance: bautismoInstance])
                    return
                }
            }
            bautismoInstance.properties = params
            if (!bautismoInstance.hasErrors() && bautismoInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'bautismo.label', default: 'Bautismo'), bautismoInstance.id])}"
                redirect(action: "show", id: bautismoInstance.id)
            }
        }
       }catch(Exception e){
            log.error("No se pudo actualizar el bautismo",e)
            if (bautismoInstance) {
                bautismoInstance.discard()
            }
            flash.message = message(code:"bautismo.noActualiza")
            render(view:"edit",model:[bautismoInstance:bautismoInstance])
        }
    }

    def delete = {
        def bautismoInstance = Bautismo.get(params.id)
        if (bautismoInstance) {
            try {
                bautismoInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'bautismo.label', default: 'Bautismo'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'bautismo.label', default: 'Bautismo'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'bautismo.label', default: 'Bautismo'), params.id])}"
            redirect(action: "list")
        }
    }
}
