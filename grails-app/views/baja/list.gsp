
<%@ page import="siscofe.Baja" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'baja.label', default: 'Baja')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'baja.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="pastorEnFuncion" title="${message(code: 'baja.pastorEnFuncion.label', default: 'Pastor En Funcion')}" />
                        
                            <g:sortableColumn property="tipoDeBaja" title="${message(code: 'baja.tipoDeBaja.label', default: 'Tipo De Baja')}" />
                        
                            <g:sortableColumn property="comentarios" title="${message(code: 'baja.comentarios.label', default: 'Comentarios')}" />
                        
                            <g:sortableColumn property="fecha" title="${message(code: 'baja.fecha.label', default: 'Fecha')}" />
                        
                            <g:sortableColumn property="fechaActual" title="${message(code: 'baja.fechaActual.label', default: 'Fecha Actual')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${bajaInstanceList}" status="i" var="bajaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${bajaInstance.id}">${fieldValue(bean: bajaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: bajaInstance, field: "pastorEnFuncion")}</td>
                        
                            <td>${fieldValue(bean: bajaInstance, field: "tipoDeBaja")}</td>
                        
                            <td>${fieldValue(bean: bajaInstance, field: "comentarios")}</td>
                        
                            <td><g:formatDate date="${bajaInstance.fecha}" /></td>
                        
                            <td><g:formatDate date="${bajaInstance.fechaActual}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${bajaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
