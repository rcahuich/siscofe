class UrlMappings {

    static mappings = {

        "/login/$action"(controller: "login")
        "/logout/$action"(controller: "logout")

	"/$controller/$action?/$id?"{
            constraints {
                // apply constraints here
            }
        }

	"/"(controller:"inicio",view:"/index")
        "500"(view:'/error')

    }
}
