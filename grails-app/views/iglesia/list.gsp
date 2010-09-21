
<%@ page import="siscofe.Iglesia" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'iglesia.label', default: 'Iglesia')}" />
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
                <table id="iglesiaInstanceList">
                    <thead>
                        <tr>
                        
<!--                            <g:sortableColumn property="id" title="${message(code: 'iglesia.id.label', default: 'Id')}" />-->
                        
                            <g:sortableColumn property="nombre" title="${message(code: 'iglesia.nombre.label', default: 'Nombre')}" />
                        
                            <th><g:message code="iglesia.direccion.label" default="Direccion" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${iglesiaInstanceList}" status="i" var="iglesiaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${iglesiaInstance.id}">${fieldValue(bean: iglesiaInstance, field: "nombre")}</g:link></td>
                        
<!--                            <td>${fieldValue(bean: iglesiaInstance, field: "nombre")}</td>-->
                        
                            <td>${fieldValue(bean: iglesiaInstance, field: "direccion")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${iglesiaInstanceTotal}" />
            </div>
        </div>
        <g:javascript>
            highlightTableRows('iglesiaInstanceList')
        </g:javascript>
    </body>
</html>
