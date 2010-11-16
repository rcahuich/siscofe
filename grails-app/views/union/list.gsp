
<%@ page import="siscofe.Union" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'union.label', default: 'Union')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'union.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="codigo" title="${message(code: 'union.codigo.label', default: 'Codigo')}" />
                        
                            <g:sortableColumn property="nombre" title="${message(code: 'union.nombre.label', default: 'Nombre')}" />
                        
                            <g:sortableColumn property="nombreCompleto" title="${message(code: 'union.nombreCompleto.label', default: 'Nombre Completo')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${unionInstanceList}" status="i" var="unionInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${unionInstance.id}">${fieldValue(bean: unionInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: unionInstance, field: "codigo")}</td>
                        
                            <td>${fieldValue(bean: unionInstance, field: "nombre")}</td>
                        
                            <td>${fieldValue(bean: unionInstance, field: "nombreCompleto")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${unionInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
