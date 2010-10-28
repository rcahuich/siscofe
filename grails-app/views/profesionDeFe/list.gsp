
<%@ page import="siscofe.ProfesionDeFe" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'profesionDeFe.label', default: 'ProfesionDeFe')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'profesionDeFe.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="lugarBautismo" title="${message(code: 'profesionDeFe.lugarBautismo.label', default: 'Lugar Bautismo')}" />
                        
                            <g:sortableColumn property="ministroOficiante" title="${message(code: 'profesionDeFe.ministroOficiante.label', default: 'Ministro Oficiante')}" />
                        
                            <g:sortableColumn property="codigo" title="${message(code: 'profesionDeFe.codigo.label', default: 'Codigo')}" />
                        
                            <g:sortableColumn property="cursoBiblico" title="${message(code: 'profesionDeFe.cursoBiblico.label', default: 'Curso Biblico')}" />
                        
                            <g:sortableColumn property="numeroVotoJuntaAdministrativa" title="${message(code: 'profesionDeFe.numeroVotoJuntaAdministrativa.label', default: 'Numero Voto Junta Administrativa')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${profesionDeFeInstanceList}" status="i" var="profesionDeFeInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${profesionDeFeInstance.id}">${fieldValue(bean: profesionDeFeInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: profesionDeFeInstance, field: "lugarBautismo")}</td>
                        
                            <td>${fieldValue(bean: profesionDeFeInstance, field: "ministroOficiante")}</td>
                        
                            <td>${fieldValue(bean: profesionDeFeInstance, field: "codigo")}</td>
                        
                            <td>${fieldValue(bean: profesionDeFeInstance, field: "cursoBiblico")}</td>
                        
                            <td>${fieldValue(bean: profesionDeFeInstance, field: "numeroVotoJuntaAdministrativa")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${profesionDeFeInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
