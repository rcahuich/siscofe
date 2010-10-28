<html>
    <head>
        <title>Elegir tipo de Ingreso</title>
        <meta name="layout" content="main" />

    </head>

    <body>
        <div id="body">
          <div class="nav">
              <span class="menuButton"><a class="home" href="${resource(dir: '')}"><g:message code="Inicio" /></a></span> |
          </div>

            <p>Elige el tipo de Ingreso:</p>

            <div class="dialog">
                <ul>
                    <li><g:link class="bautismo" action="create" controller="bautismo"><g:message code="Bautismo" /></g:link></li>
                    <li><g:link class="cartadetraslado" controller="cartadetraslado"><g:message code="Carta de Traslado" /></g:link></li>
                    <li><g:link class="profesiondefe" controller="profesiondefe"><g:message code="Profesion de Fe" /></g:link></li>
                </ul>
            </div>
        </div>
    </body>
</html>
