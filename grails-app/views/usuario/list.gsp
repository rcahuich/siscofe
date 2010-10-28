
<%@ page import="roles.Usuario" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
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

                            <g:sortableColumn property="id" title="${message(code: 'usuario.id.label', default: 'Id')}" />

                            <g:sortableColumn property="username" title="${message(code: 'usuario.username.label', default: 'Username')}" />

                            <g:sortableColumn property="nombreCompleto" title="${message(code: 'usuario.nombre.label', default: 'Nombre')}" />

                            <g:sortableColumn property="enabled" title="${message(code:'usuario.enabled.label', default: 'Habilitado')}" />

                            <g:sortableColumn property="correo" title="${message(code: 'usuario.correo.label', default: 'Correo')}" />

                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${usuarioInstanceList}" status="i" var="usuarioInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                            <td><g:link action="show" id="${usuarioInstance.id}">${fieldValue(bean: usuarioInstance, field: "id")}</g:link></td>

                            <td>${fieldValue(bean: usuarioInstance, field: "username")}</td>

                            <td>${fieldValue(bean: usuarioInstance, field: "nombreCompleto")}</td>

                            <td><g:checkBox name="enabled" value="${usuarioInstance.enabled}" disabled="true"/></td>

                            <td>${fieldValue(bean: usuarioInstance, field: "correo")}</td>

                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${usuarioInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
