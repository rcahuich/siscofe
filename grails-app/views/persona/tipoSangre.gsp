
<%@ page import="siscofe.Persona" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
        <title><g:message code="persona.lista" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        </div>
        <div class="body">
            <h1><g:message code="persona.buscarTipoDeSangre"/></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="search">
              <g:form method="post">
                <div>
                  <table>
                    <tbody>
                      <tr>
                        <td style="vertical-align:middle;width:50px;">
                          <label for="filtro"><g:message code="entrada.buscar" default="Buscar"/>:</label>
                        </td>
                        <td style="width:50px; vertical-align: middle;">
                          <g:select id="filtro" name="filtro" from="${['A+','A-','B+','B-','AB+','AB-','O+','O-']}" valueMessagePrefix="persona.tipoDeSangre" value="${params.filtro}" />
                        </td>
                        <td>
                          <g:actionSubmit action="tipoSangre" value="Buscar" class="save" style="vertical-align: middle;" />
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

                            <g:sortableColumn property="nombre" title="${message(code: 'persona.nombre')}" />

                            <g:sortableColumn property="apellidoPaterno" title="${message(code: 'persona.apellidoPaterno')}" />

                            <g:sortableColumn property="apellidoMaterno" title="${message(code: 'persona.apellidoMaterno')}" />

                            <g:sortableColumn property="tipoDeSangre" title="${message(code: 'persona.tipoDeSangre')}" />
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${personaInstanceList}" status="i" var="personaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                            <td>${fieldValue(bean: personaInstance, field: "nombre")}</td>

                            <td>${fieldValue(bean: personaInstance, field: "apellidoPaterno")}</td>

                            <td>${fieldValue(bean: personaInstance, field: "apellidoMaterno")}</td>

                            <td>${fieldValue(bean: personaInstance, field: "tipoDeSangre")}</td>

                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
