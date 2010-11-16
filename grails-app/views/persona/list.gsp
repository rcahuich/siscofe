
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
            <span class="menuButton"><g:link class="create" action="create"><g:message code="persona.nuevo" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="persona.lista" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'persona.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nombre" title="${message(code: 'persona.nombreCompleto')}" />
                        
<!--                            <g:sortableColumn property="apellidoPaterno" title="${message(code: 'persona.apellidoPaterno')}" />
                        
                            <g:sortableColumn property="apellidoMaterno" title="${message(code: 'persona.apellidoMaterno')}" />-->
                        
                            <g:sortableColumn property="estadoCivil" title="${message(code: 'persona.estadoCivil')}" />
                        
                            <g:sortableColumn property="nivelEstudio" title="${message(code: 'persona.nivelEstudio')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${personaInstanceList}" status="i" var="personaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${personaInstance.id}">${fieldValue(bean: personaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: personaInstance, field: "nombreCompleto")}</td>
                        
<!--                            <td>${fieldValue(bean: personaInstance, field: "apellidoPaterno")}</td>
                        
                            <td>${fieldValue(bean: personaInstance, field: "apellidoMaterno")}</td>-->
                        
                            <td>${fieldValue(bean: personaInstance, field: "estadoCivil")}</td>
                        
                            <td>${fieldValue(bean: personaInstance, field: "nivelEstudio")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${personaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
