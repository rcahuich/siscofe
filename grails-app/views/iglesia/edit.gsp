

<%@ page import="siscofe.Iglesia" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'iglesia.label', default: 'Iglesia')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${iglesiaInstance}">
            <div class="errors">
                <g:renderErrors bean="${iglesiaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${iglesiaInstance?.id}" />
                <g:hiddenField name="version" value="${iglesiaInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nombre"><g:message code="iglesia.nombre.label" default="Nombre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'nombre', 'errors')}">
                                    <g:textField name="nombre" maxlength="64" value="${iglesiaInstance?.nombre}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="tipoIglesia"><g:message code="iglesia.tipoIglesia.label" default="Tipo Iglesia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'tipoIglesia', 'errors')}">
                                    <g:select name="tipoIglesia" from="${iglesiaInstance.constraints.tipoIglesia.inList}" value="${iglesiaInstance?.tipoIglesia}" valueMessagePrefix="iglesia.tipoIglesia"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="telefono"><g:message code="iglesia.telefono.label" default="Telefono" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'telefono', 'errors')}">
                                    <g:textField name="telefono" maxlength="14" value="${iglesiaInstance?.telefono}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="direccion"><g:message code="iglesia.direccion.label" default="Direccion" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'direccion', 'errors')}">
                                    <g:select name="direccion.id" from="${siscofe.Direccion.list()}" optionKey="id" value="${iglesiaInstance?.direccion?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
