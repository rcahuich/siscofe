
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
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: cartaDeTrasladoInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.lugarBautismo.label" default="Lugar Bautismo" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: cartaDeTrasladoInstance, field: "lugarBautismo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.ministroOficiante.label" default="Ministro Oficiante" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: cartaDeTrasladoInstance, field: "ministroOficiante")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.codigo.label" default="Codigo" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: cartaDeTrasladoInstance, field: "codigo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.cursoBiblico.label" default="Curso Biblico" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: cartaDeTrasladoInstance, field: "cursoBiblico")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.numeroVotoJuntaAdministrativa.label" default="Numero Voto Junta Administrativa" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: cartaDeTrasladoInstance, field: "numeroVotoJuntaAdministrativa")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.numeroVotoJuntaDirectiva.label" default="Numero Voto Junta Directiva" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: cartaDeTrasladoInstance, field: "numeroVotoJuntaDirectiva")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.numeroBautismo.label" default="Numero Bautismo" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: cartaDeTrasladoInstance, field: "numeroBautismo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.comentarios.label" default="Comentarios" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: cartaDeTrasladoInstance, field: "comentarios")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.pastorEnFuncion.label" default="Pastor En Funcion" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: cartaDeTrasladoInstance, field: "pastorEnFuncion")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.estudioVeintiochoCreencias.label" default="Estudio Veintiocho Creencias" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${cartaDeTrasladoInstance?.estudioVeintiochoCreencias}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.fechaAlta.label" default="Fecha Alta" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${cartaDeTrasladoInstance?.fechaAlta}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.fechaBautismo.label" default="Fecha Bautismo" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${cartaDeTrasladoInstance?.fechaBautismo}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.fechaVotoJuntaAdministrativa.label" default="Fecha Voto Junta Administrativa" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${cartaDeTrasladoInstance?.fechaVotoJuntaAdministrativa}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.fechaVotoJuntaDirectiva.label" default="Fecha Voto Junta Directiva" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${cartaDeTrasladoInstance?.fechaVotoJuntaDirectiva}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.iglesia.label" default="Iglesia" /></td>
                            
                            <td valign="top" class="value"><g:link controller="iglesia" action="show" id="${cartaDeTrasladoInstance?.iglesia?.id}">${cartaDeTrasladoInstance?.iglesia?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cartaDeTraslado.persona.label" default="Persona" /></td>
                            
                            <td valign="top" class="value"><g:link controller="persona" action="show" id="${cartaDeTrasladoInstance?.persona?.id}">${cartaDeTrasladoInstance?.persona?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${cartaDeTrasladoInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
