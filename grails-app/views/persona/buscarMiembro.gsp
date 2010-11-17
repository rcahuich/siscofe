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
      <h1><g:message code="persona.miembro.label" /></h1>

      <div class="search">
        <g:form method="post">
          <div>
            <table>
              <tbody>
                <tr>
                  <td style="vertical-align:middle;width:50px;">
                    <label for="filtro"><g:message code="entrada.buscar" default="Nombre"/>:</label>
                    <input type="text" id="filtroNombre" name="filtroNombre" value="${params.filtroNombre}" style="width:300px;"/>
                    <label for="filtro"><g:message code="entrada.buscar" default="Apellido Paterno"/>:</label>
                    <input type="text" id="filtroApellidoPaterno" name="filtroApellidoPaterno" value="${params.filtroApellidoPaterno}" style="width:300px;"/>
                    <label for="filtro"><g:message code="entrada.buscar" default="Apellido Materno"/>:</label>
                    <input type="text" id="filtroApellidoMaterno" name="filtroApellidoMaterno" value="${params.filtroApellidoMaterno}" style="width:300px;"/>
                  </td>
              <td>
                <g:actionSubmit controller="persona" action="buscarMiembro" value="Buscar" class="save" style="vertical-align: middle;" />
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
                            <g:sortableColumn property="direccion" title="${message(code: 'persona.direccion')}" />
                            <g:sortableColumn property="phoneCasa" title="${message(code: 'persona.phoneCasa')}" />
                            <g:sortableColumn property="fechaNacimiento" title="${message(code: 'persona.fechaNacimiento')}" />
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${personaInstanceList}" status="i" var="personaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                            <td><g:link controller="persona" action="hojaMiembro" id="${personaInstance.id}">${fieldValue(bean: personaInstance, field: "id")}</g:link></td>
                            <td>${fieldValue(bean: personaInstance, field: "nombreCompleto")}</td>
                            <td>${fieldValue(bean: personaInstance, field: "direccion")}</td>
                            <td>${fieldValue(bean: personaInstance, field: "phoneCasa")}</td>
                            <td><g:formatDate date="${personaInstance?.fechaNacimiento}" /></td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>


      <div class="dialog">
      </div>

      <div class="buttons">
        <g:form>
          <g:hiddenField name="id" value="${personaInstance?.id}" />
          <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
        </g:form>
      </div>
    </div>
  </body>
</html>