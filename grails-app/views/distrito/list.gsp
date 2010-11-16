
<%@ page import="siscofe.Distrito" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'distrito.label', default: 'Distrito')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'distrito.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="codigo" title="${message(code: 'distrito.codigo.label', default: 'Codigo')}" />
                        
                            <g:sortableColumn property="nombre" title="${message(code: 'distrito.nombre.label', default: 'Nombre')}" />
                        
                            <g:sortableColumn property="nombreCompleto" title="${message(code: 'distrito.nombreCompleto.label', default: 'Nombre Completo')}" />
                        
                            <th><g:message code="distrito.asociacion.label" default="Asociacion" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${distritoInstanceList}" status="i" var="distritoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${distritoInstance.id}">${fieldValue(bean: distritoInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: distritoInstance, field: "codigo")}</td>
                        
                            <td>${fieldValue(bean: distritoInstance, field: "nombre")}</td>
                        
                            <td>${fieldValue(bean: distritoInstance, field: "nombreCompleto")}</td>
                        
                            <td>${fieldValue(bean: distritoInstance, field: "asociacion")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${distritoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
