
<%@ page import="siscofe.Bautismo" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'bautismo.label', default: 'Bautismo')}" />
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

<!--                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.id.label" default="Id" /></td>

                            <td valign="top" class="value">${fieldValue(bean: bautismoInstance, field: "id")}</td>

                        </tr>-->
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.persona.label" default="Persona" /></td>

                            <td valign="top" class="value"><g:link controller="persona" action="show" id="${bautismoInstance?.persona?.id}">${bautismoInstance?.persona?.encodeAsHTML()}</g:link></td>

                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.iglesia.label" default="Iglesia" /></td>

                            <td valign="top" class="value"><g:link controller="iglesia" action="show" id="${bautismoInstance?.iglesia?.id}">${bautismoInstance?.iglesia?.encodeAsHTML()}</g:link></td>

                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.lugarBautismo.label" default="Lugar Bautismo" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bautismoInstance, field: "lugarBautismo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.ministroOficiante.label" default="Ministro Oficiante" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bautismoInstance, field: "ministroOficiante")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.cursoBiblico.label" default="Curso Biblico" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bautismoInstance, field: "cursoBiblico")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.numeroVotoJuntaAdministrativa.label" default="Numero Voto Junta Administrativa" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bautismoInstance, field: "numeroVotoJuntaAdministrativa")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.numeroVotoJuntaDirectiva.label" default="Numero Voto Junta Directiva" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bautismoInstance, field: "numeroVotoJuntaDirectiva")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.numeroBautismo.label" default="Numero Bautismo" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bautismoInstance, field: "numeroBautismo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.estudioVeintiochoCreencias.label" default="Estudio Veintiocho Creencias" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${bautismoInstance?.estudioVeintiochoCreencias}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.fechaBautismo.label" default="Fecha Bautismo" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${bautismoInstance?.fechaBautismo}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.fechaVotoJuntaAdministrativa.label" default="Fecha Voto Junta Administrativa" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${bautismoInstance?.fechaVotoJuntaAdministrativa}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.fechaVotoJuntaDirectiva.label" default="Fecha Voto Junta Directiva" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${bautismoInstance?.fechaVotoJuntaDirectiva}" /></td>
                            
                        </tr>
                    
                    
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${bautismoInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
