

<%@ page import="siscofe.Bautismo" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'bautismo.label', default: 'Bautismo')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="Agregando Bautismo para: "/> ${params.personaNombre}</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${bautismoInstance}">
            <div class="errors">
                <g:renderErrors bean="${bautismoInstance}" as="list" />
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
                                    <label for="iglesia"><g:message code="bautismo.iglesia.label" default="Iglesia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bautismoInstance, field: 'iglesia', 'errors')}">
                                    <g:select name="iglesia.id" from="${siscofe.Iglesia.list()}" optionKey="id" value="${bautismoInstance?.iglesia?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="lugarBautismo"><g:message code="bautismo.lugarBautismo.label" default="Lugar Bautismo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bautismoInstance, field: 'lugarBautismo', 'errors')}">
                                    <g:textField name="lugarBautismo" maxlength="64" value="${bautismoInstance?.lugarBautismo}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fechaBautismo"><g:message code="bautismo.fechaBautismo.label" default="Fecha Bautismo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bautismoInstance, field: 'fechaBautismo', 'errors')}">
                                    <g:datePicker name="fechaBautismo" precision="day" value="${bautismoInstance?.fechaBautismo}"  />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ministroOficiante"><g:message code="bautismo.ministroOficiante.label" default="Ministro Oficiante" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bautismoInstance, field: 'ministroOficiante', 'errors')}">
                                    <g:textField name="ministroOficiante" maxlength="64" value="${bautismoInstance?.ministroOficiante}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="codigo"><g:message code="bautismo.codigo.label" default="Codigo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bautismoInstance, field: 'codigo', 'errors')}">
                                    <g:textField name="codigo" maxlength="6" value="${bautismoInstance?.codigo}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cursoBiblico"><g:message code="bautismo.cursoBiblico.label" default="Curso Biblico" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bautismoInstance, field: 'cursoBiblico', 'errors')}">
                                    <g:textField name="cursoBiblico" maxlength="64" value="${bautismoInstance?.cursoBiblico}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="estudioVeintiochoCreencias"><g:message code="bautismo.estudioVeintiochoCreencias.label" default="Estudio Veintiocho Creencias" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bautismoInstance, field: 'estudioVeintiochoCreencias', 'errors')}">
                                    <g:checkBox name="estudioVeintiochoCreencias" value="${bautismoInstance?.estudioVeintiochoCreencias}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="numeroBautismo"><g:message code="bautismo.numeroBautismo.label" default="Numero Bautismo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bautismoInstance, field: 'numeroBautismo', 'errors')}">
                                    <g:select name="numeroBautismo" from="${bautismoInstance.constraints.numeroBautismo.inList}" value="${bautismoInstance?.numeroBautismo}" valueMessagePrefix="bautismo.numeroBautismo"  />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="numeroVotoJuntaAdministrativa"><g:message code="bautismo.numeroVotoJuntaAdministrativa.label" default="Numero Voto Junta Administrativa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bautismoInstance, field: 'numeroVotoJuntaAdministrativa', 'errors')}">
                                    <g:textField name="numeroVotoJuntaAdministrativa" maxlength="10" value="${bautismoInstance?.numeroVotoJuntaAdministrativa}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fechaVotoJuntaAdministrativa"><g:message code="bautismo.fechaVotoJuntaAdministrativa.label" default="Fecha Voto Junta Administrativa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bautismoInstance, field: 'fechaVotoJuntaAdministrativa', 'errors')}">
                                    <g:datePicker name="fechaVotoJuntaAdministrativa" precision="day" value="${bautismoInstance?.fechaVotoJuntaAdministrativa}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="numeroVotoJuntaDirectiva"><g:message code="bautismo.numeroVotoJuntaDirectiva.label" default="Numero Voto Junta Directiva" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bautismoInstance, field: 'numeroVotoJuntaDirectiva', 'errors')}">
                                    <g:textField name="numeroVotoJuntaDirectiva" maxlength="10" value="${bautismoInstance?.numeroVotoJuntaDirectiva}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fechaVotoJuntaDirectiva"><g:message code="bautismo.fechaVotoJuntaDirectiva.label" default="Fecha Voto Junta Directiva" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bautismoInstance, field: 'fechaVotoJuntaDirectiva', 'errors')}">
                                    <g:datePicker name="fechaVotoJuntaDirectiva" precision="day" value="${bautismoInstance?.fechaVotoJuntaDirectiva}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="comentarios"><g:message code="bautismo.comentarios.label" default="Comentarios" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bautismoInstance, field: 'comentarios', 'errors')}">
                                    <g:textArea name="comentarios" cols="40" rows="5" value="${bautismoInstance?.comentarios}" />
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
