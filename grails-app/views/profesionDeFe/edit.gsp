

<%@ page import="siscofe.ProfesionDeFe" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'profesionDeFe.label', default: 'ProfesionDeFe')}" />
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
            <g:hasErrors bean="${profesionDeFeInstance}">
            <div class="errors">
                <g:renderErrors bean="${profesionDeFeInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${profesionDeFeInstance?.id}" />
                <g:hiddenField name="version" value="${profesionDeFeInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="lugarBautismo"><g:message code="profesionDeFe.lugarBautismo.label" default="Lugar Bautismo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'lugarBautismo', 'errors')}">
                                    <g:textField name="lugarBautismo" maxlength="64" value="${profesionDeFeInstance?.lugarBautismo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ministroOficiante"><g:message code="profesionDeFe.ministroOficiante.label" default="Ministro Oficiante" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'ministroOficiante', 'errors')}">
                                    <g:textField name="ministroOficiante" maxlength="64" value="${profesionDeFeInstance?.ministroOficiante}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="codigo"><g:message code="profesionDeFe.codigo.label" default="Codigo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'codigo', 'errors')}">
                                    <g:textField name="codigo" maxlength="6" value="${profesionDeFeInstance?.codigo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="cursoBiblico"><g:message code="profesionDeFe.cursoBiblico.label" default="Curso Biblico" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'cursoBiblico', 'errors')}">
                                    <g:textField name="cursoBiblico" maxlength="64" value="${profesionDeFeInstance?.cursoBiblico}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="numeroVotoJuntaAdministrativa"><g:message code="profesionDeFe.numeroVotoJuntaAdministrativa.label" default="Numero Voto Junta Administrativa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'numeroVotoJuntaAdministrativa', 'errors')}">
                                    <g:textField name="numeroVotoJuntaAdministrativa" maxlength="10" value="${profesionDeFeInstance?.numeroVotoJuntaAdministrativa}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="numeroVotoJuntaDirectiva"><g:message code="profesionDeFe.numeroVotoJuntaDirectiva.label" default="Numero Voto Junta Directiva" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'numeroVotoJuntaDirectiva', 'errors')}">
                                    <g:textField name="numeroVotoJuntaDirectiva" maxlength="10" value="${profesionDeFeInstance?.numeroVotoJuntaDirectiva}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="numeroBautismo"><g:message code="profesionDeFe.numeroBautismo.label" default="Numero Bautismo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'numeroBautismo', 'errors')}">
                                    <g:select name="numeroBautismo" from="${profesionDeFeInstance.constraints.numeroBautismo.inList}" value="${profesionDeFeInstance?.numeroBautismo}" valueMessagePrefix="profesionDeFe.numeroBautismo"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="comentarios"><g:message code="profesionDeFe.comentarios.label" default="Comentarios" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'comentarios', 'errors')}">
                                    <g:textArea name="comentarios" cols="40" rows="5" value="${profesionDeFeInstance?.comentarios}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="pastorEnFuncion"><g:message code="profesionDeFe.pastorEnFuncion.label" default="Pastor En Funcion" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'pastorEnFuncion', 'errors')}">
                                    <g:textField name="pastorEnFuncion" maxlength="64" value="${profesionDeFeInstance?.pastorEnFuncion}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="estudioVeintiochoCreencias"><g:message code="profesionDeFe.estudioVeintiochoCreencias.label" default="Estudio Veintiocho Creencias" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'estudioVeintiochoCreencias', 'errors')}">
                                    <g:checkBox name="estudioVeintiochoCreencias" value="${profesionDeFeInstance?.estudioVeintiochoCreencias}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fechaAlta"><g:message code="profesionDeFe.fechaAlta.label" default="Fecha Alta" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'fechaAlta', 'errors')}">
                                    <g:datePicker name="fechaAlta" precision="day" value="${profesionDeFeInstance?.fechaAlta}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fechaBautismo"><g:message code="profesionDeFe.fechaBautismo.label" default="Fecha Bautismo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'fechaBautismo', 'errors')}">
                                    <g:datePicker name="fechaBautismo" precision="day" value="${profesionDeFeInstance?.fechaBautismo}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fechaVotoJuntaAdministrativa"><g:message code="profesionDeFe.fechaVotoJuntaAdministrativa.label" default="Fecha Voto Junta Administrativa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'fechaVotoJuntaAdministrativa', 'errors')}">
                                    <g:datePicker name="fechaVotoJuntaAdministrativa" precision="day" value="${profesionDeFeInstance?.fechaVotoJuntaAdministrativa}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fechaVotoJuntaDirectiva"><g:message code="profesionDeFe.fechaVotoJuntaDirectiva.label" default="Fecha Voto Junta Directiva" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'fechaVotoJuntaDirectiva', 'errors')}">
                                    <g:datePicker name="fechaVotoJuntaDirectiva" precision="day" value="${profesionDeFeInstance?.fechaVotoJuntaDirectiva}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="iglesia"><g:message code="profesionDeFe.iglesia.label" default="Iglesia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'iglesia', 'errors')}">
                                    <g:select name="iglesia.id" from="${siscofe.Iglesia.list()}" optionKey="id" value="${profesionDeFeInstance?.iglesia?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="persona"><g:message code="profesionDeFe.persona.label" default="Persona" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'persona', 'errors')}">
                                    <g:select name="persona.id" from="${siscofe.Persona.list()}" optionKey="id" value="${profesionDeFeInstance?.persona?.id}"  />
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
