

<%@ page import="siscofe.Membresia" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'membresia.label', default: 'Membresia')}" />
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
            <g:hasErrors bean="${membresiaInstance}">
            <div class="errors">
                <g:renderErrors bean="${membresiaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="persona"><g:message code="membresia.persona.label" default="Persona" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: membresiaInstance, field: 'persona', 'errors')}">
                                    <g:select name="persona.id" from="${siscofe.Persona.list()}" optionKey="id" value="${membresiaInstance?.persona?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="iglesia"><g:message code="membresia.iglesia.label" default="Iglesia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: membresiaInstance, field: 'iglesia', 'errors')}">
                                    <g:select name="iglesia.id" from="${siscofe.Iglesia.list()}" optionKey="id" value="${membresiaInstance?.iglesia?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tipoIngreso"><g:message code="membresia.tipoIngreso.label" default="Tipo Ingreso" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: membresiaInstance, field: 'tipoIngreso', 'errors')}">
                                    <g:select name="tipoIngreso" from="${membresiaInstance.constraints.tipoIngreso.inList}" value="${membresiaInstance?.tipoIngreso}" valueMessagePrefix="membresia.tipoIngreso"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="bautismo"><g:message code="membresia.bautismo.label" default="Bautismo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: membresiaInstance, field: 'bautismo', 'errors')}">
                                    <g:select name="bautismo.id" from="${siscofe.Bautismo.list()}" optionKey="id" value="${membresiaInstance?.bautismo?.id}"  />
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
