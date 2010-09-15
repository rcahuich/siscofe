<h1><a class="home" href="${createLinkTo(dir:'')}" style="color:white;font-weight:normal; text-align:left">Siscofe</a></h1>
   <div id="status">
        <sec:ifLoggedIn>
            Bienvenido <sec:loggedInUserInfo field="username" /> ::
            <g:link class="perfil" controller="logout" style="color:white;font-weight:normal;"><g:message code="Salir" /></g:link>
        </sec:ifLoggedIn>
   </div>

