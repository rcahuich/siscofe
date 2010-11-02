
<%@ page import="siscofe.CartaDeTraslado" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'cartaDeTraslado.label', default: 'CartaDeTraslado')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'cartaDeTraslado.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="numeroVotoJuntaAdministrativa" title="${message(code: 'cartaDeTraslado.numeroVotoJuntaAdministrativa.label', default: 'Numero Voto Junta Administrativa')}" />
                        
                            <g:sortableColumn property="numeroVotoJuntaDirectiva" title="${message(code: 'cartaDeTraslado.numeroVotoJuntaDirectiva.label', default: 'Numero Voto Junta Directiva')}" />
                        
                            <g:sortableColumn property="pastorEnFuncion" title="${message(code: 'cartaDeTraslado.pastorEnFuncion.label', default: 'Pastor En Funcion')}" />
                        
                            <g:sortableColumn property="iglesiaProcedencia" title="${message(code: 'cartaDeTraslado.iglesiaProcedencia.label', default: 'Iglesia Procedencia')}" />
                        
                            <g:sortableColumn property="trasladadoA" title="${message(code: 'cartaDeTraslado.trasladadoA.label', default: 'Trasladado A')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${cartaDeTrasladoInstanceList}" status="i" var="cartaDeTrasladoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${cartaDeTrasladoInstance.id}">${fieldValue(bean: cartaDeTrasladoInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: cartaDeTrasladoInstance, field: "numeroVotoJuntaAdministrativa")}</td>
                        
                            <td>${fieldValue(bean: cartaDeTrasladoInstance, field: "numeroVotoJuntaDirectiva")}</td>
                        
                            <td>${fieldValue(bean: cartaDeTrasladoInstance, field: "pastorEnFuncion")}</td>
                        
                            <td>${fieldValue(bean: cartaDeTrasladoInstance, field: "iglesiaProcedencia")}</td>
                        
                            <td>${fieldValue(bean: cartaDeTrasladoInstance, field: "trasladadoA")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${cartaDeTrasladoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
