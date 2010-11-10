

<%@ page import="siscofe.Persona" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
        <title><g:message code="persona.edita" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="persona.lista" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="persona.nuevo" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="persona.edita" />${personaInstance.nombre}</h1>
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
                <g:hiddenField name="direccion.id" value="${personaInstance?.direccion?.id}" />
                <g:hiddenField name="direccion.version" value="${personaInstance?.direccion?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>

                            <tr class="prop">
                                <td valign="top" class="name">
                                  <h3><g:message code="datosPersonales" default="Datos Personales" /></h3>
                                </td>
                                <td
                                </td>
                            </tr>
                        
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
                                  <label for="tipoDeSangre"><g:message code="persona.tipoDeSangre.label" default="Tipo De Sangre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'tipoDeSangre', 'errors')}">
                                    <g:select name="tipoDeSangre" from="${personaInstance.constraints.tipoDeSangre.inList}" value="${personaInstance?.tipoDeSangre}" valueMessagePrefix="persona.tipoDeSangre"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="sexo"><g:message code="persona.sexo.label" default="Sexo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'sexo', 'errors')}">
                                    <g:select name="sexo" from="${personaInstance.constraints.sexo.inList}" value="${personaInstance?.sexo}" valueMessagePrefix="persona.sexo"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="enfermedades"><g:message code="persona.enfermedades.label" default="Enfermedades" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'enfermedades', 'errors')}">
                                    <g:textField name="enfermedades" maxlength="128" value="${personaInstance?.enfermedades}" />
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
                                  <label for="correo"><g:message code="persona.correo.label" default="Correo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'correo', 'errors')}">
                                    <g:textField name="correo" value="${personaInstance?.correo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="phoneCasa"><g:message code="persona.phoneCasa.label" default="Phone Casa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'phoneCasa', 'errors')}">
                                    <g:textField name="phoneCasa" value="${fieldValue(bean: personaInstance, field: 'phoneCasa')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="phoneCelular"><g:message code="persona.phoneCelular.label" default="Phone Celular" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'phoneCelular', 'errors')}">
                                    <g:textField name="phoneCelular" value="${fieldValue(bean: personaInstance, field: 'phoneCelular')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="phoneTrabajo"><g:message code="persona.phoneTrabajo.label" default="Phone Trabajo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'phoneTrabajo', 'errors')}">
                                    <g:textField name="phoneTrabajo" value="${fieldValue(bean: personaInstance, field: 'phoneTrabajo')}" />
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

                            <tr class="prop">
                                <td valign="top" class="name">
                                  <h3><g:message code="persona.direccion" /></h3>
                                </td>
                                <td
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.pais"><g:message code="direccion.pais.label" default="Pais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'direccion.pais', 'errors')}">
                                    <g:textField name="direccion.pais" maxlength="16" value="${personaInstance?.direccion?.pais}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.estado"><g:message code="direccion.estado.label" default="Estado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'direccion.estado', 'errors')}">
                                    <g:textField name="direccion.estado" maxlength="16" value="${personaInstance?.direccion?.estado}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.municipio"><g:message code="direccion.municipio.label" default="Municipio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'direccion.municipio', 'errors')}">
                                    <g:textField name="direccion.municipio" maxlength="32" value="${personaInstance?.direccion?.municipio}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.ciudad"><g:message code="direccion.ciudad.label" default="Ciudad" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'direccion.ciudad', 'errors')}">
                                    <g:textField name="direccion.ciudad" maxlength="32" value="${personaInstance?.direccion?.ciudad}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.ejido"><g:message code="direccion.ejido.label" default="Ejido" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'direccion.ejido', 'errors')}">
                                    <g:textField name="direccion.ejido" maxlength="32" value="${personaInstance?.direccion?.ejido}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.colonia"><g:message code="direccion.colonia.label" default="Colonia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'direccion.colonia', 'errors')}">
                                    <g:textField name="direccion.colonia" maxlength="32" value="${personaInstance?.direccion?.colonia}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.calle"><g:message code="direccion.calle.label" default="Calle" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'direccion.calle', 'errors')}">
                                    <g:textField name="direccion.calle" maxlength="32" value="${personaInstance?.direccion?.calle}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.numero"><g:message code="direccion.numero.label" default="Numero" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'direccion.numero', 'errors')}">
                                    <g:textField name="direccion.numero" maxlength="8" value="${personaInstance?.direccion?.numero}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.codigoPostal"><g:message code="personaInstance.codigoPostal.label" default="Codigo Postal" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'direccion.codigoPostal', 'errors')}">
                                    <g:textField name="direccion.codigoPostal" maxlength="16" value="${personaInstance?.direccion?.codigoPostal}" />
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
