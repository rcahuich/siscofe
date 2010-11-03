
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
                        
                            <g:sortableColumn property="numeroVotoJuntaAdministrativa" title="${message(code: 'profesionDeFe.numeroVotoJuntaAdministrativa.label', default: 'Numero Voto Junta Administrativa')}" />
                        
                            <g:sortableColumn property="numeroVotoJuntaDirectiva" title="${message(code: 'profesionDeFe.numeroVotoJuntaDirectiva.label', default: 'Numero Voto Junta Directiva')}" />
                        
                            <g:sortableColumn property="comentarios" title="${message(code: 'profesionDeFe.comentarios.label', default: 'Comentarios')}" />
                        
                            <g:sortableColumn property="pastorEnFuncion" title="${message(code: 'profesionDeFe.pastorEnFuncion.label', default: 'Pastor En Funcion')}" />
                        
                            <g:sortableColumn property="iglesiaProcedencia" title="${message(code: 'profesionDeFe.iglesiaProcedencia.label', default: 'Iglesia Procedencia')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${profesionDeFeInstanceList}" status="i" var="profesionDeFeInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${profesionDeFeInstance.id}">${fieldValue(bean: profesionDeFeInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: profesionDeFeInstance, field: "numeroVotoJuntaAdministrativa")}</td>
                        
                            <td>${fieldValue(bean: profesionDeFeInstance, field: "numeroVotoJuntaDirectiva")}</td>
                        
                            <td>${fieldValue(bean: profesionDeFeInstance, field: "comentarios")}</td>
                        
                            <td>${fieldValue(bean: profesionDeFeInstance, field: "pastorEnFuncion")}</td>
                        
                            <td>${fieldValue(bean: profesionDeFeInstance, field: "iglesiaProcedencia")}</td>
                        
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
