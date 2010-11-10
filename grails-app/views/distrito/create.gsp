

<%@ page import="siscofe.Distrito" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'distrito.label', default: 'Distrito')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${distritoInstance}">
            <div class="errors">
                <g:renderErrors bean="${distritoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="codigo"><g:message code="distrito.codigo.label" default="Codigo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distritoInstance, field: 'codigo', 'errors')}">
                                    <g:textField name="codigo" maxlength="6" value="${distritoInstance?.codigo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nombre"><g:message code="distrito.nombre.label" default="Nombre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distritoInstance, field: 'nombre', 'errors')}">
                                    <g:textField name="nombre" maxlength="64" value="${distritoInstance?.nombre}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nombreCompleto"><g:message code="distrito.nombreCompleto.label" default="Nombre Completo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distritoInstance, field: 'nombreCompleto', 'errors')}">
                                    <g:textField name="nombreCompleto" maxlength="128" value="${distritoInstance?.nombreCompleto}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="asociacion"><g:message code="distrito.asociacion.label" default="Asociacion" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distritoInstance, field: 'asociacion', 'errors')}">
                                    <g:select name="asociacion.id" from="${siscofe.Asociacion.list()}" optionKey="id" value="${distritoInstance?.asociacion?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
