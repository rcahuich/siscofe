
<%@ page import="siscofe.Persona" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]"/></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'persona.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="codigo" title="${message(code: 'persona.codigo.label', default: 'Codigo')}" />

                            <g:sortableColumn property="nombre" title="${message(code: 'persona.nombre.label', default: 'Nombre')}" />
                        
                            <g:sortableColumn property="apellidoPaterno" title="${message(code: 'persona.apellidoPaterno.label', default: 'Apellido Paterno')}" />
                        
                            <g:sortableColumn property="apellidoMaterno" title="${message(code: 'persona.apellidoMaterno.label', default: 'Apellido Materno')}" />
                        
                            <g:sortableColumn property="estadoCivil" title="${message(code: 'persona.estadoCivil.label', default: 'Estado Civil')}" />
                        
                            <g:sortableColumn property="nivelEstudio" title="${message(code: 'persona.nivelEstudio.label', default: 'Nivel Estudio')}" />
                        
                            <g:sortableColumn property="religionAnterior" title="${message(code: 'persona.religionAnterior.label', default: 'Religion Anterior')}" />

                            <g:sortableColumn property="fechaNacimiento" title="${message(code: 'persona.fechaNacimiento.label', default: 'Fecha Nacimiento')}" />

                            <g:sortableColumn property="miembro" title="${message(code: 'persona.miembro.label', default: 'Es miembro')}" />

                            </tr>
                    </thead>
                    <tbody>
                    <g:each in="${personaInstanceList}" status="i" var="personaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${personaInstance.id}">${fieldValue(bean: personaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: personaInstance, field: "codigo")}</td>
                            
                            <td>${fieldValue(bean: personaInstance, field: "nombre")}</td>
                        
                            <td>${fieldValue(bean: personaInstance, field: "apellidoPaterno")}</td>
                        
                            <td>${fieldValue(bean: personaInstance, field: "apellidoMaterno")}</td>
                        
                            <td>${fieldValue(bean: personaInstance, field: "estadoCivil")}</td>
                        
                            <td>${fieldValue(bean: personaInstance, field: "nivelEstudio")}</td>
                        
                            <td>${fieldValue(bean: personaInstance, field: "religionAnterior")}</td>

                            <td>${fieldValue(bean: personaInstance, field: "fechaNacimiento")}</td>

                            <td>${fieldValue(bean: personaInstance, field: "miembro")}</td>
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
