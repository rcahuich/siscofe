
<%@ page import="siscofe.Bautismo" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'bautismo.label', default: 'Bautismo')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'bautismo.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="lugarBautismo" title="${message(code: 'bautismo.lugarBautismo.label', default: 'Lugar Bautismo')}" />
                        
                            <g:sortableColumn property="ministroOficiante" title="${message(code: 'bautismo.ministroOficiante.label', default: 'Ministro Oficiante')}" />
                        
                            <g:sortableColumn property="cursoBiblico" title="${message(code: 'bautismo.cursoBiblico.label', default: 'Curso Biblico')}" />
                        
                            <g:sortableColumn property="numeroVotoJuntaAdministrativa" title="${message(code: 'bautismo.numeroVotoJuntaAdministrativa.label', default: 'Numero Voto Junta Administrativa')}" />
                        
                            <g:sortableColumn property="numeroVotoJuntaDirectiva" title="${message(code: 'bautismo.numeroVotoJuntaDirectiva.label', default: 'Numero Voto Junta Directiva')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${bautismoInstanceList}" status="i" var="bautismoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${bautismoInstance.id}">${fieldValue(bean: bautismoInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: bautismoInstance, field: "lugarBautismo")}</td>
                        
                            <td>${fieldValue(bean: bautismoInstance, field: "ministroOficiante")}</td>
                        
                            <td>${fieldValue(bean: bautismoInstance, field: "cursoBiblico")}</td>
                        
                            <td>${fieldValue(bean: bautismoInstance, field: "numeroVotoJuntaAdministrativa")}</td>
                        
                            <td>${fieldValue(bean: bautismoInstance, field: "numeroVotoJuntaDirectiva")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${bautismoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
