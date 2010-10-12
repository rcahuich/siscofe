

<%@ page import="siscofe.Persona" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:javascript library="jquery" />
        <link rel="stylesheet" href="${resource(contextPath:"",dir:'css',file:'jquery.ui.all.css')}" />
        <script type="text/javascript" src="${resource(contextPath:"",dir:'js/jquery',file:'jquery.ui.core.min.js')}"></script>
        <script type="text/javascript" src="${resource(contextPath:"",dir:'js/jquery',file:'jquery.ui.widget.min.js')}"></script>
        <script type="text/javascript" src="${resource(contextPath:"",dir:'js/jquery',file:'jquery.ui.position.min.js')}"></script>
        <script type="text/javascript" src="${resource(contextPath:"",dir:'js/jquery',file:'jquery.ui.autocomplete.min.js')}"></script>
        <script type="text/javascript" src="${resource(contextPath:"",dir:'js/jquery',file:'jquery.ui.datepicker.min.js')}"></script>
        <script type="text/javascript" src="${resource(contextPath:"",dir:'js/jquery/i18n',file:'jquery.ui.datepicker-es.js')}"></script>

        <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
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
            <g:hasErrors bean="${personaInstance}">
            <div class="errors">
                <g:renderErrors bean="${personaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
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


                            <tr class="prop">
                                <td valign="top" class="name">
                                  <h4><g:message code="direccion" default="Dirección" /></h4>
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
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
      <g:javascript>
            jQuery(document).ready(function() {
            jQuery("input#fechaNacimiento").datepicker(jQuery.datepicker.regional['es']);
            jQuery("input#fechaNacimiento").datepicker("option","firstDay",0);
          });
        </g:javascript>
    </body>
</html>
