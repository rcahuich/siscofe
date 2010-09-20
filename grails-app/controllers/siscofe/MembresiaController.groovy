package siscofe
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class MembresiaController {

    def scaffold = Membresia
}
