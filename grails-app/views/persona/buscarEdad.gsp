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
      <h1><g:message code="persona.busqueda.porEdad" /></h1>

      <div class="search">
        <g:form method="post">
          <div>
            <table>
        <tbody>
              <tr>
                  <td style="vertical-align:middle;width:50px;">
     <!--               <p>
                    <label for="filtro"><g:message code="entrada.buscar" default="Seleccione Iglesia"/>:</label>
                    <g:select id="filtroIglesia" name="filtroIglesia" from="${siscofe.Iglesia.list()}" optionKey="id" value="${params.filtroIglesia}"  />
                    </p>
                <p>
                    <label for="filtro"><g:message code="entrada.buscar" default="Los que nacieron entre la fecha de: "/></label>
                    <g:datePicker id="filtroFechaInicio" name="filtroFechaInicio" precision="day" value="${params.filtroFechaInicio}"  />
                                        
                    <label for="filtro"><g:message code="entrada.buscar" default=" y "/></label>
                    <g:datePicker id="filtroFechaFin" name="filtroFechaFin" precision="day" value="${params.filtroFechaFin}"  />
                    </p>-->
                    <p>
                    <label for="filtro"><g:message code="entrada.buscar" default="Entre la edad de: "/></label>
                    <input type="text" id="filtroEdadInicio" name="filtroEdadInicio" value="${params.filtroEdadInicio}" style="width:30px;"/>                     
                    <label for="filtro"><g:message code="entrada.buscar" default=" y "/></label>
                    <input type="text" id="filtroEdadFin" name="filtroEdadFin" value="${params.filtroEdadFin}" style="width:30px;"/>  años.
                    </p>
                  </td>

              </tr>
              <tr>
                    <td>
			<g:actionSubmit controller="persona" action="buscarEdad" value="Buscar" class="save" style="vertical-align: middle;" />
                    </td>
              </tr>
        </tbody>
</table>
</div>
</g:form>
      </div>

            <div class="list">
                <table id="personaInstanceList">
                    <thead>
                        <tr>
                            <g:sortableColumn property="id" title="${message(code: 'persona.id')}" />
                            <g:sortableColumn property="nombreCompleto" title="${message(code: 'persona.nombreCompleto')}" />
                            <g:sortableColumn property="sexo" title="${message(code: 'persona.sexo')}" />
                            <g:sortableColumn property="nivelEstudio" title="${message(code: 'persona.fechaNacimiento')}" />
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${personaInstanceList}" status="i" var="personaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                            <td>${fieldValue(bean: personaInstance, field: "id")}</td>
                            <td>${fieldValue(bean: personaInstance, field: "nombreCompleto")}</td>
                            <td>${fieldValue(bean: personaInstance, field: "sexo")}</td>
                            <td>${fieldValue(bean: personaInstance, field: "fechaNacimiento")}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>

    </div>
  </body>
</html>
