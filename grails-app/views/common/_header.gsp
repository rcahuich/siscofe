
<head>
</head>
<div id="header" style="margin-left: 180px;margin-right: 190px">
              <div id="grailsLogo">
                <a href="${createLinkTo(dir:'')}">
                  <img src="${resource(dir:'images',file:'logoSiscofe-white1.png')}" alt="Grails" border="0" align="left"/>
                </a>
              </div>

<div id="status">
        <sec:ifLoggedIn>
            Hola <sec:loggedInUserInfo field="username" />! | <g:link class="perfil" controller="logout" style="color:white;font-weight:normal;"><g:message code="Salir" /></g:link><br/>
            UMN | Asociación del Noreste | Distrito Montemorelos
        </sec:ifLoggedIn>
</div>
</div>
