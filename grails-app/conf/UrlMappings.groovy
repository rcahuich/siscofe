class UrlMappings {

    static mappings = {

        "/login/$action"(controller: "login")
        "/logout/$action"(controller: "logout")

	"/$controller/$action?/$id?"{
            constraints {
                // apply constraints here
            }
        }
	
	"/persona/buscar-persona" {
		controller= 'persona'
		action= 'searchPerson'
	}
	
	"/persona/buscar-sangre" {
		controller= 'persona'
		action= 'tipoSangre'
	}
	
	"/persona/buscar-edad" {
		controller= 'persona'
		action= 'searchAge'
	}
	
	"/persona/buscar-miembro" {
		controller= 'persona'
		action= 'searchMember'
	}
	
	"/persona/buscar-ingresos" {
		controller= 'persona'
		action= 'searchIncome'
	}
	
	"/ayuda" {
		controller= 'inicio'
		action= 'ayuda'
	}
	
	"/"(controller:"inicio",view:"/index")
    
	"500"(view:'/pages-error/error')
    "404"(view:'/pages-error/notFound')

    }
}
