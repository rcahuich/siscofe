
<%@ page import="siscofe.Bitacora" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'bitacora.label', default: 'Bitacora')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
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
                        
                            <g:sortableColumn property="usuario" title="${message(code: 'bitacora.usuario.label', default: 'Usuario')}" />
                        
                            <g:sortableColumn property="fecha" title="${message(code: 'bitacora.fecha.label', default: 'Fecha')}" />

                            <g:sortableColumn property="actividad" title="${message(code: 'bitacora.actividad.label', default: 'Actividad')}" />
                        
                            <g:sortableColumn property="tabla" title="${message(code: 'bitacora.tabla.label', default: 'Tabla')}" />

                            <g:sortableColumn property="campo" title="${message(code: 'bitacora.campo.label', default: 'Campo')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${bitacoraInstanceList}" status="i" var="bitacoraInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td>${fieldValue(bean: bitacoraInstance, field: "usuario")}</td>

                            <td><g:formatDate date="${bitacoraInstance.fecha}" /></td>
                        
                            <td>${fieldValue(bean: bitacoraInstance, field: "actividad")}</td>
                        
                            <td>${fieldValue(bean: bitacoraInstance, field: "tabla")}</td>

                            <td>${fieldValue(bean: bitacoraInstance, field: "campo")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${bitacoraInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
