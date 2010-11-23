<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="main" />
    <title><g:message code="persona.miembro.label" /></title>
  </head>
  <body>

    <div class="nav">
      <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
    </div>

    <div class="body">
      <h1><g:message code="persona.busqueda.miembrosActivos" /></h1>

            <div class="list">
                <table id="personaInstanceList">
                    <thead>
                        <tr>
                            <g:sortableColumn property="id" title="${message(code: 'persona.id')}" />
                            <g:sortableColumn property="nombreCompleto" title="${message(code: 'persona.nombreCompleto')}" />
                            <g:sortableColumn property="sexo" title="${message(code: 'persona.sexo')}" />
                            <g:sortableColumn property="nivelEstudio" title="${message(code: 'persona.nivelEstudio')}" />
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${personaInstanceList}" status="i" var="personaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                            <td>${fieldValue(bean: personaInstance, field: "id")}</td>
                            <td>${fieldValue(bean: personaInstance, field: "nombreCompleto")}</td>
                            <td>${fieldValue(bean: personaInstance, field: "sexo")}</td>
                            <td>${fieldValue(bean: personaInstance, field: "nivelEstudio")}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>

    </div>
  </body>
</html>
