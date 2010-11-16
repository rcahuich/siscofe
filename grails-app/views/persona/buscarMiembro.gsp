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