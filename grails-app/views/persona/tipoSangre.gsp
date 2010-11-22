
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
                            <g:sortableColumn property="nombreCompleto" title="${message(code: 'persona.nombreCompleto')}" />
                            <g:sortableColumn property="direccion" title="${message(code: 'persona.direccion')}" />
                            <g:sortableColumn property="phoneCasa" title="${message(code: 'persona.phoneCasa')}" />
                            <g:sortableColumn property="phoneTrabajo" title="${message(code: 'persona.phoneTrabajo')}" />
                            <g:sortableColumn property="phoneCelular" title="${message(code: 'persona.phoneCelular')}" />
                            <g:sortableColumn property="phoneCelular" title="${message(code: 'persona.tipoDeSangre')}" />
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${personaInstanceList}" status="i" var="personaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                            <td>${fieldValue(bean: personaInstance, field: "nombreCompleto")}</td>
                            <td>${fieldValue(bean: personaInstance, field: "direccion")}</td>
                            <td>${fieldValue(bean: personaInstance, field: "phoneCasa")}</td>
                            <td>${fieldValue(bean: personaInstance, field: "phoneTrabajo")}</td>
                            <td>${fieldValue(bean: personaInstance, field: "phoneCelular")}</td>
                            <td>${fieldValue(bean: personaInstance, field: "tipoDeSangre")}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
