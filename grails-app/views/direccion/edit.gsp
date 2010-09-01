

<%@ page import="siscofe.Direccion" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'direccion.label', default: 'Direccion')}" />
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
            <g:hasErrors bean="${direccionInstance}">
            <div class="errors">
                <g:renderErrors bean="${direccionInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${direccionInstance?.id}" />
                <g:hiddenField name="version" value="${direccionInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="pais"><g:message code="direccion.pais.label" default="Pais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: direccionInstance, field: 'pais', 'errors')}">
                                    <g:textField name="pais" maxlength="16" value="${direccionInstance?.pais}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="estado"><g:message code="direccion.estado.label" default="Estado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: direccionInstance, field: 'estado', 'errors')}">
                                    <g:textField name="estado" maxlength="16" value="${direccionInstance?.estado}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ciudad"><g:message code="direccion.ciudad.label" default="Ciudad" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: direccionInstance, field: 'ciudad', 'errors')}">
                                    <g:textField name="ciudad" maxlength="32" value="${direccionInstance?.ciudad}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="municipio"><g:message code="direccion.municipio.label" default="Municipio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: direccionInstance, field: 'municipio', 'errors')}">
                                    <g:textField name="municipio" maxlength="32" value="${direccionInstance?.municipio}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ejido"><g:message code="direccion.ejido.label" default="Ejido" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: direccionInstance, field: 'ejido', 'errors')}">
                                    <g:textField name="ejido" maxlength="32" value="${direccionInstance?.ejido}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="colonia"><g:message code="direccion.colonia.label" default="Colonia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: direccionInstance, field: 'colonia', 'errors')}">
                                    <g:textField name="colonia" maxlength="32" value="${direccionInstance?.colonia}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="calle"><g:message code="direccion.calle.label" default="Calle" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: direccionInstance, field: 'calle', 'errors')}">
                                    <g:textField name="calle" maxlength="32" value="${direccionInstance?.calle}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="numero"><g:message code="direccion.numero.label" default="Numero" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: direccionInstance, field: 'numero', 'errors')}">
                                    <g:textField name="numero" maxlength="8" value="${direccionInstance?.numero}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="codigoPostal"><g:message code="direccion.codigoPostal.label" default="Codigo Postal" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: direccionInstance, field: 'codigoPostal', 'errors')}">
                                    <g:textField name="codigoPostal" maxlength="16" value="${direccionInstance?.codigoPostal}" />
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
