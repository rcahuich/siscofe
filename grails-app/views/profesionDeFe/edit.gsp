

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
        </div>
        <div class="body">
            <h1><g:message code="bautismo.actualiza" /> ${profesionDeFeInstance?.persona}</h1>
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
                <g:hiddenField name="persona.nombre" value="${profesionDeFeInstance.persona.nombre}"/>
                <g:hiddenField name="persona.id" value="${profesionDeFeInstance.persona.id}"/>
                <div class="dialog">
                    <table>
                        <tbody>
                        
                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="iglesiaProcedencia"><g:message code="profesionDeFe.iglesiaProcedencia.label" default="Iglesia de Procedencia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'iglesiaProcedencia', 'errors')}">
                                    <g:textField name="iglesiaProcedencia" maxlength="64" value="${profesionDeFeInstance?.iglesiaProcedencia}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="iglesia"><g:message code="profesionDeFe.Iglesia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'iglesia', 'errors')}">
                                    <g:select name="iglesia.id" from="${siscofe.Iglesia.list()}" optionKey="id" value="${profesionDeFeInstance?.iglesia?.id}"  />
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
                                    <label for="numeroVotoJuntaAdministrativa"><g:message code="profesionDeFe.numeroVotoJuntaAdministrativa.label" default="Numero de Voto Junta Administrativa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'numeroVotoJuntaAdministrativa', 'errors')}">
                                    <g:textField name="numeroVotoJuntaAdministrativa" maxlength="10" value="${profesionDeFeInstance?.numeroVotoJuntaAdministrativa}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fechaVotoJuntaDirectiva"><g:message code="profesionDeFe.fechaVotoJuntaDirectiva.label" default="Fecha de Voto Junta Directiva" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'fechaVotoJuntaDirectiva', 'errors')}">
                                    <g:datePicker name="fechaVotoJuntaDirectiva" precision="day" value="${profesionDeFeInstance?.fechaVotoJuntaDirectiva}"  />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="numeroVotoJuntaDirectiva"><g:message code="profesionDeFe.numeroVotoJuntaDirectiva.label" default="Numero de Voto Junta Directiva" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'numeroVotoJuntaDirectiva', 'errors')}">
                                    <g:textField name="numeroVotoJuntaDirectiva" maxlength="10" value="${profesionDeFeInstance?.numeroVotoJuntaDirectiva}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fechaVotoJuntaAdministrativa"><g:message code="profesionDeFe.fechaVotoJuntaAdministrativa.label" default="Fecha de Voto Junta Administrativa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: profesionDeFeInstance, field: 'fechaVotoJuntaAdministrativa', 'errors')}">
                                    <g:datePicker name="fechaVotoJuntaAdministrativa" precision="day" value="${profesionDeFeInstance?.fechaVotoJuntaAdministrativa}"  />
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
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
