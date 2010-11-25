
<%@ page import="siscofe.CartaDeTraslado" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'cartaDeTraslado.label', default: 'CartaDeTraslado')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
<!--            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>-->
<!--            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>-->
        </div>
        <div class="body">
            <h1><g:message code="cartaDeTraslado.ver"/></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                      <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.iglesia.label" default="Iglesia" /></td>
                            <td valign="top" class="value">${fieldValue(bean: cartaDeTrasladoInstance, field: "iglesia")}</td>
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.persona.label" default="Persona" /></td>
                            <td valign="top" class="value">${fieldValue(bean: cartaDeTrasladoInstance, field: "persona")}</td>
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.pastorEnFuncion.label" default="Pastor En Funcion" /></td>

                            <td valign="top" class="value">${fieldValue(bean: cartaDeTrasladoInstance, field: "pastorEnFuncion")}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.iglesiaProcedencia.label" default="Iglesia de procedencia" /></td>

                            <td valign="top" class="value">${fieldValue(bean: cartaDeTrasladoInstance, field: "iglesiaProcedencia")}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.fechaAlta.label" default="Fecha de Alta" /></td>

                            <td valign="top" class="value"><g:formatDate date="${cartaDeTrasladoInstance?.fechaAlta}" /></td>

                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.numeroVotoJuntaAdministrativa.label" default="Numero de Voto Junta Administrativa" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: cartaDeTrasladoInstance, field: "numeroVotoJuntaAdministrativa")}</td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.fechaVotoJuntaAdministrativa.label" default="Fecha de Voto Junta Administrativa" /></td>

                            <td valign="top" class="value"><g:formatDate date="${cartaDeTrasladoInstance?.fechaVotoJuntaAdministrativa}" /></td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.numeroVotoJuntaDirectiva.label" default="Numero de Voto Junta Directiva" /></td>

                            <td valign="top" class="value">${fieldValue(bean: cartaDeTrasladoInstance, field: "numeroVotoJuntaDirectiva")}</td>

                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.fechaVotoJuntaDirectiva.label" default="Fecha de Voto Junta Directiva" /></td>

                            <td valign="top" class="value"><g:formatDate date="${cartaDeTrasladoInstance?.fechaVotoJuntaDirectiva}" /></td>

                        </tr>
                    
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.comentarios.label" default="Comentarios" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: cartaDeTrasladoInstance, field: "comentarios")}</td>
                            
                        </tr>

                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${cartaDeTrasladoInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
