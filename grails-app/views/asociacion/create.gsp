

<%@ page import="siscofe.Asociacion" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'asociacion.label', default: 'Asociacion')}" />
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
            <g:hasErrors bean="${asociacionInstance}">
            <div class="errors">
                <g:renderErrors bean="${asociacionInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="codigo"><g:message code="asociacion.codigo.label" default="Codigo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: asociacionInstance, field: 'codigo', 'errors')}">
                                    <g:textField name="codigo" maxlength="6" value="${asociacionInstance?.codigo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nombre"><g:message code="asociacion.nombre.label" default="Nombre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: asociacionInstance, field: 'nombre', 'errors')}">
                                    <g:textField name="nombre" maxlength="64" value="${asociacionInstance?.nombre}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nombreCompleto"><g:message code="asociacion.nombreCompleto.label" default="Nombre Completo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: asociacionInstance, field: 'nombreCompleto', 'errors')}">
                                    <g:textField name="nombreCompleto" maxlength="128" value="${asociacionInstance?.nombreCompleto}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="union"><g:message code="asociacion.union.label" default="Union" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: asociacionInstance, field: 'union', 'errors')}">
                                    <g:select name="union.id" from="${siscofe.Union.list()}" optionKey="id" value="${asociacionInstance?.union?.id}"  />
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
