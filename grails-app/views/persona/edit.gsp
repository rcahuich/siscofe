

<%@ page import="siscofe.Persona" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
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
            <g:hasErrors bean="${personaInstance}">
            <div class="errors">
                <g:renderErrors bean="${personaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${personaInstance?.id}" />
                <g:hiddenField name="version" value="${personaInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nombre"><g:message code="persona.nombre.label" default="Nombre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'nombre', 'errors')}">
                                    <g:textField name="nombre" maxlength="64" value="${personaInstance?.nombre}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="apellidoPaterno"><g:message code="persona.apellidoPaterno.label" default="Apellido Paterno" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'apellidoPaterno', 'errors')}">
                                    <g:textField name="apellidoPaterno" maxlength="64" value="${personaInstance?.apellidoPaterno}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="apellidoMaterno"><g:message code="persona.apellidoMaterno.label" default="Apellido Materno" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'apellidoMaterno', 'errors')}">
                                    <g:textField name="apellidoMaterno" maxlength="64" value="${personaInstance?.apellidoMaterno}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="estadoCivil"><g:message code="persona.estadoCivil.label" default="Estado Civil" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'estadoCivil', 'errors')}">
                                    <g:select name="estadoCivil" from="${personaInstance.constraints.estadoCivil.inList}" value="${personaInstance?.estadoCivil}" valueMessagePrefix="persona.estadoCivil"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nivelEstudio"><g:message code="persona.nivelEstudio.label" default="Nivel Estudio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'nivelEstudio', 'errors')}">
                                    <g:select name="nivelEstudio" from="${personaInstance.constraints.nivelEstudio.inList}" value="${personaInstance?.nivelEstudio}" valueMessagePrefix="persona.nivelEstudio"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="religionAnterior"><g:message code="persona.religionAnterior.label" default="Religion Anterior" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'religionAnterior', 'errors')}">
                                    <g:select name="religionAnterior" from="${personaInstance.constraints.religionAnterior.inList}" value="${personaInstance?.religionAnterior}" valueMessagePrefix="persona.religionAnterior"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="codigo"><g:message code="persona.codigo.label" default="Codigo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'codigo', 'errors')}">
                                    <g:textField name="codigo" maxlength="32" value="${personaInstance?.codigo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="esHombre"><g:message code="persona.esHombre.label" default="Es Hombre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'esHombre', 'errors')}">
                                    <g:checkBox name="esHombre" value="${personaInstance?.esHombre}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fechaNacimiento"><g:message code="persona.fechaNacimiento.label" default="Fecha Nacimiento" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'fechaNacimiento', 'errors')}">
                                    <g:datePicker name="fechaNacimiento" precision="day" value="${personaInstance?.fechaNacimiento}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="miembro"><g:message code="persona.miembro.label" default="Miembro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'miembro', 'errors')}">
                                    <g:checkBox name="miembro" value="${personaInstance?.miembro}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="sabeLeer"><g:message code="persona.sabeLeer.label" default="Sabe Leer" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'sabeLeer', 'errors')}">
                                    <g:checkBox name="sabeLeer" value="${personaInstance?.sabeLeer}" />
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
