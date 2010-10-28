

<%@ page import="siscofe.CartaDeTraslado" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'cartaDeTraslado.label', default: 'CartaDeTraslado')}" />
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
            <g:hasErrors bean="${cartaDeTrasladoInstance}">
            <div class="errors">
                <g:renderErrors bean="${cartaDeTrasladoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${cartaDeTrasladoInstance?.id}" />
                <g:hiddenField name="version" value="${cartaDeTrasladoInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="lugarBautismo"><g:message code="cartaDeTraslado.lugarBautismo.label" default="Lugar Bautismo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'lugarBautismo', 'errors')}">
                                    <g:textField name="lugarBautismo" maxlength="64" value="${cartaDeTrasladoInstance?.lugarBautismo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ministroOficiante"><g:message code="cartaDeTraslado.ministroOficiante.label" default="Ministro Oficiante" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'ministroOficiante', 'errors')}">
                                    <g:textField name="ministroOficiante" maxlength="64" value="${cartaDeTrasladoInstance?.ministroOficiante}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="codigo"><g:message code="cartaDeTraslado.codigo.label" default="Codigo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'codigo', 'errors')}">
                                    <g:textField name="codigo" maxlength="6" value="${cartaDeTrasladoInstance?.codigo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="cursoBiblico"><g:message code="cartaDeTraslado.cursoBiblico.label" default="Curso Biblico" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'cursoBiblico', 'errors')}">
                                    <g:textField name="cursoBiblico" maxlength="64" value="${cartaDeTrasladoInstance?.cursoBiblico}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="numeroVotoJuntaAdministrativa"><g:message code="cartaDeTraslado.numeroVotoJuntaAdministrativa.label" default="Numero Voto Junta Administrativa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'numeroVotoJuntaAdministrativa', 'errors')}">
                                    <g:textField name="numeroVotoJuntaAdministrativa" maxlength="10" value="${cartaDeTrasladoInstance?.numeroVotoJuntaAdministrativa}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="numeroVotoJuntaDirectiva"><g:message code="cartaDeTraslado.numeroVotoJuntaDirectiva.label" default="Numero Voto Junta Directiva" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'numeroVotoJuntaDirectiva', 'errors')}">
                                    <g:textField name="numeroVotoJuntaDirectiva" maxlength="10" value="${cartaDeTrasladoInstance?.numeroVotoJuntaDirectiva}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="numeroBautismo"><g:message code="cartaDeTraslado.numeroBautismo.label" default="Numero Bautismo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'numeroBautismo', 'errors')}">
                                    <g:select name="numeroBautismo" from="${cartaDeTrasladoInstance.constraints.numeroBautismo.inList}" value="${cartaDeTrasladoInstance?.numeroBautismo}" valueMessagePrefix="cartaDeTraslado.numeroBautismo"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="comentarios"><g:message code="cartaDeTraslado.comentarios.label" default="Comentarios" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'comentarios', 'errors')}">
                                    <g:textArea name="comentarios" cols="40" rows="5" value="${cartaDeTrasladoInstance?.comentarios}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="pastorEnFuncion"><g:message code="cartaDeTraslado.pastorEnFuncion.label" default="Pastor En Funcion" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'pastorEnFuncion', 'errors')}">
                                    <g:textField name="pastorEnFuncion" maxlength="64" value="${cartaDeTrasladoInstance?.pastorEnFuncion}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="estudioVeintiochoCreencias"><g:message code="cartaDeTraslado.estudioVeintiochoCreencias.label" default="Estudio Veintiocho Creencias" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'estudioVeintiochoCreencias', 'errors')}">
                                    <g:checkBox name="estudioVeintiochoCreencias" value="${cartaDeTrasladoInstance?.estudioVeintiochoCreencias}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fechaAlta"><g:message code="cartaDeTraslado.fechaAlta.label" default="Fecha Alta" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'fechaAlta', 'errors')}">
                                    <g:datePicker name="fechaAlta" precision="day" value="${cartaDeTrasladoInstance?.fechaAlta}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fechaBautismo"><g:message code="cartaDeTraslado.fechaBautismo.label" default="Fecha Bautismo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'fechaBautismo', 'errors')}">
                                    <g:datePicker name="fechaBautismo" precision="day" value="${cartaDeTrasladoInstance?.fechaBautismo}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fechaVotoJuntaAdministrativa"><g:message code="cartaDeTraslado.fechaVotoJuntaAdministrativa.label" default="Fecha Voto Junta Administrativa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'fechaVotoJuntaAdministrativa', 'errors')}">
                                    <g:datePicker name="fechaVotoJuntaAdministrativa" precision="day" value="${cartaDeTrasladoInstance?.fechaVotoJuntaAdministrativa}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fechaVotoJuntaDirectiva"><g:message code="cartaDeTraslado.fechaVotoJuntaDirectiva.label" default="Fecha Voto Junta Directiva" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'fechaVotoJuntaDirectiva', 'errors')}">
                                    <g:datePicker name="fechaVotoJuntaDirectiva" precision="day" value="${cartaDeTrasladoInstance?.fechaVotoJuntaDirectiva}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="iglesia"><g:message code="cartaDeTraslado.iglesia.label" default="Iglesia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'iglesia', 'errors')}">
                                    <g:select name="iglesia.id" from="${siscofe.Iglesia.list()}" optionKey="id" value="${cartaDeTrasladoInstance?.iglesia?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="persona"><g:message code="cartaDeTraslado.persona.label" default="Persona" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'persona', 'errors')}">
                                    <g:select name="persona.id" from="${siscofe.Persona.list()}" optionKey="id" value="${cartaDeTrasladoInstance?.persona?.id}"  />
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
