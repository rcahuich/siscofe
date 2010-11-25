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
      <h1><g:message code="persona.busqueda.buscarIngresos" /></h1>

      <div class="search">
        <g:form method="post">
          <div>
            <table>
        <tbody>
              <tr>
                  <td style="vertical-align:middle;width:50px;">
                    <p>
                    <label for="filtro"><g:message code="entrada.buscar" default="Seleccione Iglesia"/>:</label>
                    <g:select id="filtroIglesia" name="tipo_iglesia" from="${siscofe.Iglesia.list()}" optionKey="id" value="${params.filtroIglesia}" noSelection="['':'TODAS']" />
                    </p>
                    <p>
                    <label for="filtro"><g:message code="entrada.buscar" default="Seleccione el Tipo de Ingreso"/>:</label>
                    <g:select id="filtroTipoIngreso" name="tipo_ingreso" from="${['BAUTISMO', 'CARTA DE TRASLADO', 'PROFESION DE FE']}" valueMessagePrefix="hoja.ingreso.tipoIngreso" />
                    </p>
                    <p>
                    <label for="filtro"><g:message code="entrada.buscar" default="Durante el Mes De"/>:</label>
                    <g:select name="mes_ingreso" from="${['TODOS', 'ENERO', 'FEBRERO', 'MARZO', 'ABRIL', 'MAYO', 'JUNIO', 'JULIO', 'AGOSTO', 'SEPTIEMBRE', 'OCTUBRE', 'NOVIEMBRE', 'DICIEMBRE']}" valueMessagePrefix="hoja.ingreso.tipoIngreso" />
                    </p>
                    <p>
                    <label for="filtro"><g:message code="entrada.buscar" default="Durante el Ano De"/>:</label>
                    <g:select name="anio_ingreso" from="${1995..2020}" value="${ano}" />
                    </p>
                  </td>
              </tr>
              <tr>
                  <td>
                    <g:actionSubmit controller="persona" action="buscarIngresos" value="Buscar" class="save" style="vertical-align: middle;" />
                  </td>
              </tr>
        </tbody>
</table>
</div>
</g:form>
      </div>

            <div class="list">
                <table id="hojasIngresosList">
                    <thead>
                        <tr>
                            <g:sortableColumn property="persona.id" title="${message(code: 'persona.id')}" />
                            <g:sortableColumn property="persona.nombreCompleto" title="${message(code: 'persona.nombreCompleto')}" />
                            <g:sortableColumn property="persona.sexo" title="${message(code: 'persona.sexo')}" />
                            <g:sortableColumn property="tipoIngreso.fechaAlta" title="${message(code: 'hoja.ingreso.fechaAlta')}" />
<!--                            <g:sortableColumn property="tipoIngreso.tipoIngreso" title="${message(code: 'hoja.ingreso.tipoIngreso')}" />-->
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${hojasIngresosList}" status="i" var="resultado">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                            <td>${fieldValue(bean: resultado, field: "persona.id")}</td>
                            <td>${fieldValue(bean: resultado, field: "persona.nombreCompleto")}</td>
                            <td>${fieldValue(bean: resultado, field: "persona.sexo")}</td>
                            <td>${fieldValue(bean: resultado, field: "tipoIngreso.fechaAlta")}</td>
<!--                        <td>${fieldValue(bean: resultado, field: "tipoIngreso.tipoIngreso")}</td>-->
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>

    </div>
  </body>
</html>
