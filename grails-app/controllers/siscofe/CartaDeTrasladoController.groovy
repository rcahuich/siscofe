package siscofe

class CartaDeTrasladoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def springSecurityService
    def sessionFactory
    
    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [cartaDeTrasladoInstanceList: CartaDeTraslado.list(params), cartaDeTrasladoInstanceTotal: CartaDeTraslado.count()]
    }

    def create = {
        def cartaDeTrasladoInstance = new CartaDeTraslado()
        cartaDeTrasladoInstance.properties = params
        return [cartaDeTrasladoInstance: cartaDeTrasladoInstance]
    }

    def save = {
        def cartaDeTrasladoInstance = new CartaDeTraslado(params)
        log.debug "params: $params"
        try{
        CartaDeTraslado.withTransaction{
        Persona persona = Persona.get(params.persona.id)
        persona.esMiembro=true
        persona.save(flush:true)
        if (cartaDeTrasladoInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'cartaDeTraslado.label', default: 'CartaDeTraslado'), cartaDeTrasladoInstance.id])}"
            redirect(action: "show", id: cartaDeTrasladoInstance.id)
                }
             }
        }catch(Exception e){
            log.error("No se pudo crear la Carta de Traslado",e)
            if (cartaDeTrasladoInstance) {
                cartaDeTrasladoInstance.discard()
            }
            flash.message = message(code:"cartaDeTraslado.noCrea")
            render(view: "create", model: [cartaDeTrasladoInstance: cartaDeTrasladoInstance])
        }
       
    }

    def show = {
        def cartaDeTrasladoInstance = CartaDeTraslado.get(params.id)
        if (!cartaDeTrasladoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'cartaDeTraslado.label', default: 'CartaDeTraslado'), params.id])}"
            redirect(action: "list")
        }
        else {
            [cartaDeTrasladoInstance: cartaDeTrasladoInstance]
        }
    }

    def edit = {
        def cartaDeTrasladoInstance = CartaDeTraslado.get(params.id)
        if (!cartaDeTrasladoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'cartaDeTraslado.label', default: 'CartaDeTraslado'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [cartaDeTrasladoInstance: cartaDeTrasladoInstance]
        }
    }

    def update = {
        def cartaDeTrasladoInstance = CartaDeTraslado.get(params.id)
        try{
        CartaDeTraslado.withTransaction{
        if (cartaDeTrasladoInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (cartaDeTrasladoInstance.version > version) {                
                    cartaDeTrasladoInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'cartaDeTraslado.label', default: 'CartaDeTraslado')] as Object[], "Another user has updated this CartaDeTraslado while you were editing")
                    render(view: "edit", model: [cartaDeTrasladoInstance: cartaDeTrasladoInstance])
                    return
                }
            }
            cartaDeTrasladoInstance.properties = params
            if (!cartaDeTrasladoInstance.hasErrors() && cartaDeTrasladoInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'cartaDeTraslado.label', default: 'CartaDeTraslado'), cartaDeTrasladoInstance.id])}"
                audita(cartaDeTrasladoInstance,'ACTUALIZO | Carta de Traslado')
                redirect(action: "show", id: cartaDeTrasladoInstance.id)
            }
        }
    }
        }catch(Exception e){
            log.error("No se pudo actualizar la Carta de Traslado",e)
            if (cartaDeTrasladoInstance) {
                cartaDeTrasladoInstance.discard()
            }
            flash.message = message(code:"cartaDeTraslado.noActualiza")
            render(view:"edit",model:[cartaDeTrasladoInstance:cartaDeTrasladoInstance])
        }
        
    }

    def delete = {
        def cartaDeTrasladoInstance = CartaDeTraslado.get(params.id)
        if (cartaDeTrasladoInstance) {
            try {
                cartaDeTrasladoInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'cartaDeTraslado.label', default: 'CartaDeTraslado'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'cartaDeTraslado.label', default: 'CartaDeTraslado'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'cartaDeTraslado.label', default: 'CartaDeTraslado'), params.id])}"
            redirect(action: "list")
        }
    }

    def audita(CartaDeTraslado cartaDeTraslado, String actividad) {
        log.debug "[AUDITA] $actividad Carta de Traslado $cartaDeTraslado"
        def creador = springSecurityService.authentication.name
        def bitacora = new Bitacora()
        bitacora.tabla= "Carta De Traslado"
        bitacora.usuario = creador
        bitacora.actividad = actividad
        bitacora.campo = cartaDeTraslado
        bitacora.save()
    }
}
