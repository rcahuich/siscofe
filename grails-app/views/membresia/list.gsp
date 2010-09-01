
<%@ page import="siscofe.Membresia" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'membresia.label', default: 'Membresia')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'membresia.id.label', default: 'Id')}" />
                        
                            <th><g:message code="membresia.persona.label" default="Persona" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${membresiaInstanceList}" status="i" var="membresiaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${membresiaInstance.id}">${fieldValue(bean: membresiaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: membresiaInstance, field: "persona")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${membresiaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
