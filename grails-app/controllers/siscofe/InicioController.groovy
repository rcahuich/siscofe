package siscofe

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class InicioController {

    def index = { }
	
	def ayuda = { render view:'ayuda'}
}
