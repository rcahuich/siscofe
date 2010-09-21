

<%@ page import="siscofe.Bitacora" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'bitacora.label', default: 'Bitacora')}" />
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
            <g:hasErrors bean="${bitacoraInstance}">
            <div class="errors">
                <g:renderErrors bean="${bitacoraInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="usuario"><g:message code="bitacora.usuario.label" default="Usuario" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bitacoraInstance, field: 'usuario', 'errors')}">
                                    <g:textField name="usuario" value="${bitacoraInstance?.usuario}" />
                                </td>
                            </tr>

                        
<!--                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fecha"><g:message code="bitacora.fecha.label" default="Fecha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bitacoraInstance, field: 'fecha', 'errors')}">
                                    <g:datePicker name="fecha" precision="day" value="${bitacoraInstance?.fecha}"  />
                                </td>
                            </tr>-->

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="comentario"><g:message code="bitacora.comentario.label" default="Comentario" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bitacoraInstance, field: 'comentario', 'errors')}">
                                    <g:textArea name="comentario" value="${bitacoraInstance?.comentario}" />
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
