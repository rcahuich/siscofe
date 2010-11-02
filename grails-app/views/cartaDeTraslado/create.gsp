

<%@ page import="siscofe.CartaDeTraslado" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'cartaDeTraslado.label', default: 'CartaDeTraslado')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="Agregando Carta de Traslado para: "/> ${params.personaNombre}</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${cartaDeTrasladoInstance}">
            <div class="errors">
                <g:renderErrors bean="${cartaDeTrasladoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
            <g:hiddenField name="persona.nombre" value="${params.personaNombre}"/>
            <g:hiddenField name="persona.id" value="${params.personaId}"/>
                <div class="dialog">
                    <table>
                        <tbody>
                        
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
                                    <label for="iglesiaProcedencia"><g:message code="cartaDeTraslado.iglesiaProcedencia.label" default="Iglesia Procedencia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'iglesiaProcedencia', 'errors')}">
                                    <g:textField name="iglesiaProcedencia" maxlength="64" value="${cartaDeTrasladoInstance?.iglesiaProcedencia}" />
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
                                    <label for="iglesia"><g:message code="cartaDeTraslado.Iglesia"/></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: cartaDeTrasladoInstance, field: 'iglesia', 'errors')}">
                                    <g:select name="iglesia.id" from="${siscofe.Iglesia.list()}" optionKey="id" value="${cartaDeTrasladoInstance?.iglesia?.id}"  />
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
