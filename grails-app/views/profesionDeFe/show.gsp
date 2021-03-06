
<%@ page import="siscofe.ProfesionDeFe" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'profesionDeFe.label', default: 'ProfesionDeFe')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
<!--            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>-->
<!--            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>-->
        </div>
        <div class="body">
            <h1><g:message code="profesionDeFe.ver"/></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="profesionDeFe.persona.label" default="Miembro" /></td>
                            <td valign="top" class="value">${fieldValue(bean: profesionDeFeInstance, field: "persona")}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="profesionDeFe.iglesia.label" default="Iglesia" /></td>
                            <td valign="top" class="value">${fieldValue(bean: profesionDeFeInstance, field: "iglesia")}</td>                           
                        </tr>


                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="profesionDeFe.pastorEnFuncion.label" default="Pastor En Funcion" /></td>

                            <td valign="top" class="value">${fieldValue(bean: profesionDeFeInstance, field: "pastorEnFuncion")}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="profesionDeFe.iglesiaProcedencia.label" default="Iglesia de Procedencia" /></td>

                            <td valign="top" class="value">${fieldValue(bean: profesionDeFeInstance, field: "iglesiaProcedencia")}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="profesionDeFe.fechaAlta.label" default="Fecha de Alta" /></td>

                            <td valign="top" class="value"><g:formatDate date="${profesionDeFeInstance?.fechaAlta}" /></td>

                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="profesionDeFe.numeroVotoJuntaAdministrativa.label" default="Numero de Voto Junta Administrativa" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: profesionDeFeInstance, field: "numeroVotoJuntaAdministrativa")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="profesionDeFe.fechaVotoJuntaAdministrativa.label" default="Fecha de Voto Junta Administrativa" /></td>

                            <td valign="top" class="value"><g:formatDate date="${profesionDeFeInstance?.fechaVotoJuntaAdministrativa}" /></td>

                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="profesionDeFe.numeroVotoJuntaDirectiva.label" default="Numero de Voto Junta Directiva" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: profesionDeFeInstance, field: "numeroVotoJuntaDirectiva")}</td>
                            
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="profesionDeFe.fechaVotoJuntaDirectiva.label" default="Fecha de Voto Junta Directiva" /></td>

                            <td valign="top" class="value"><g:formatDate date="${profesionDeFeInstance?.fechaVotoJuntaDirectiva}" /></td>

                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="profesionDeFe.comentarios.label" default="Comentarios" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: profesionDeFeInstance, field: "comentarios")}</td>
                            
                        </tr>
                    
                    
                    
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${profesionDeFeInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
