
<%@ page import="siscofe.Iglesia" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'iglesia.label', default: 'Iglesia')}" />
        <title><g:message code="iglesia.ver" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="iglesia.ver"/></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="iglesia.nombre" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: iglesiaInstance, field: "nombre")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="iglesia.tipoIglesia" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: iglesiaInstance, field: "tipoIglesia")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="iglesia.telefono" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: iglesiaInstance, field: "telefono")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="iglesia.direccion" /></td>
                            <td valign="top" class="value">${fieldValue(bean: iglesiaInstance, field: "direccion")}</td>                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${iglesiaInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'iglesia.confirma.baja', args:[iglesiaInstance.nombre])}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
