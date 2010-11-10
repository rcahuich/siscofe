

<%@ page import="siscofe.Iglesia" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'iglesia.label', default: 'Iglesia')}" />
        <title><g:message code="iglesia.edita" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="iglesia.lista" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="iglesia.nuevo" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="iglesia.edita" />${iglesiaInstance.nombre}</h1>
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
                                  <label for="nombre"><g:message code="iglesia.nombre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'nombre', 'errors')}">
                                    <g:textField name="nombre" maxlength="64" value="${iglesiaInstance?.nombre}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="tipoIglesia"><g:message code="iglesia.tipoIglesia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'tipoIglesia', 'errors')}">
                                    <g:select name="tipoIglesia" from="${iglesiaInstance.constraints.tipoIglesia.inList}" value="${iglesiaInstance?.tipoIglesia}" valueMessagePrefix="iglesia.tipoIglesia"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="telefono"><g:message code="iglesia.telefono" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'telefono', 'errors')}">
                                    <g:textField name="telefono" maxlength="14" value="${iglesiaInstance?.telefono}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <h4><g:message code="iglesia.direccion" /></h4>
                                </td>
                                <td
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.pais"><g:message code="direccion.pais.label" default="Pais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'direccion.pais', 'errors')}">
                                    <g:textField name="direccion.pais" maxlength="16" value="${iglesiaInstance?.direccion?.pais}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.estado"><g:message code="direccion.estado.label" default="Estado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'direccion.estado', 'errors')}">
                                    <g:textField name="direccion.estado" maxlength="16" value="${iglesiaInstance?.direccion?.estado}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.municipio"><g:message code="direccion.municipio.label" default="Municipio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'direccion.municipio', 'errors')}">
                                    <g:textField name="direccion.municipio" maxlength="32" value="${iglesiaInstance?.direccion?.municipio}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.ciudad"><g:message code="direccion.ciudad.label" default="Ciudad" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'direccion.ciudad', 'errors')}">
                                    <g:textField name="direccion.ciudad" maxlength="32" value="${iglesiaInstance?.direccion?.ciudad}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.ejido"><g:message code="direccion.ejido.label" default="Ejido" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'direccion.ejido', 'errors')}">
                                    <g:textField name="direccion.ejido" maxlength="32" value="${iglesiaInstance?.direccion?.ejido}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.colonia"><g:message code="direccion.colonia.label" default="Colonia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'direccion.colonia', 'errors')}">
                                    <g:textField name="direccion.colonia" maxlength="32" value="${iglesiaInstance?.direccion?.colonia}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.calle"><g:message code="direccion.calle.label" default="Calle" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'direccion.calle', 'errors')}">
                                    <g:textField name="direccion.calle" maxlength="32" value="${iglesiaInstance?.direccion?.calle}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.numero"><g:message code="direccion.numero.label" default="Numero" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'direccion.numero', 'errors')}">
                                    <g:textField name="direccion.numero" maxlength="8" value="${iglesiaInstance?.direccion?.numero}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.codigoPostal"><g:message code="personaInstance.codigoPostal.label" default="Codigo Postal" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'direccion.codigoPostal', 'errors')}">
                                    <g:textField name="direccion.codigoPostal" maxlength="16" value="${iglesiaInstance?.direccion?.codigoPostal}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'iglesia.confirma.baja', args:[iglesiaInstance.nombre])}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
