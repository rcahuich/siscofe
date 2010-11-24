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
                            <g:sortableColumn property="nombreCompleto" title="${message(code: 'persona.nombreCompleto')}" />
                            <g:sortableColumn property="sexo" title="${message(code: 'persona.fechaNacimiento')}" />
                            <g:sortableColumn property="nivelEstudio" title="${message(code: 'persona.phoneCasa')}" />
                            <g:sortableColumn property="nivelEstudio" title="${message(code: 'persona.direccion')}" />
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${personaInstanceList}" status="i" var="personaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                            <td>${fieldValue(bean: personaInstance, field: "nombreCompleto")}</td>
                            <td>${fieldValue(bean: personaInstance, field: "fechaNacimiento")}</td>
                            <td>${fieldValue(bean: personaInstance, field: "phoneCasa")}</td>
                            <td>${fieldValue(bean: personaInstance, field: "direccion")}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>

    </div>
  </body>
</html>
