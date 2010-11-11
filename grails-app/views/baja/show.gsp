
<%@ page import="siscofe.Baja" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'baja.label', default: 'Baja')}" />
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
                            <td valign="top" class="name"><g:message code="baja.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bajaInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="baja.pastorEnFuncion.label" default="Pastor En Funcion" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bajaInstance, field: "pastorEnFuncion")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="baja.tipoDeBaja.label" default="Tipo De Baja" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bajaInstance, field: "tipoDeBaja")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="baja.comentarios.label" default="Comentarios" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bajaInstance, field: "comentarios")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="baja.fecha.label" default="Fecha" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${bajaInstance?.fecha}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="baja.fechaActual.label" default="Fecha Actual" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${bajaInstance?.fechaActual}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="baja.iglesia.label" default="Iglesia" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bajaInstance, field: "iglesia")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="baja.persona.label" default="Persona" /></td>
                            
                            <td valign="top" class="value"><g:link controller="persona" action="show" id="${bajaInstance?.persona?.id}">${bajaInstance?.persona?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${bajaInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
