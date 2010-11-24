

<%@ page import="siscofe.Baja" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'baja.label', default: 'Baja')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="Baja de Miembro: "/> ${params.personaNombre}</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${bajaInstance}">
            <div class="errors">
                <g:renderErrors bean="${bajaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
              <g:hiddenField name="persona.nombre" value="${params.personaNombre}"/>
              <g:hiddenField name="personaId" value="${persona.id}"/>
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="pastorEnFuncion"><g:message code="baja.pastorEnFuncion.label" default="Pastor En Funcion" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bajaInstance, field: 'pastorEnFuncion', 'errors')}">
                                    <g:textField name="pastorEnFuncion" maxlength="64" value="${bajaInstance?.pastorEnFuncion}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fecha"><g:message code="baja.fecha.label" default="Fecha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bajaInstance, field: 'fecha', 'errors')}">
                                    <g:datePicker name="fecha" precision="day" value="${bajaInstance?.fecha}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tipoDeBaja"><g:message code="baja.tipoDeBaja.label" default="Tipo De Baja" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bajaInstance, field: 'tipoDeBaja', 'errors')}">
                                    <g:select name="tipoDeBaja" from="${bajaInstance.constraints.tipoDeBaja.inList}" value="${bajaInstance?.tipoDeBaja}" valueMessagePrefix="baja.tipoDeBaja"  />
                                </td>
                            </tr>
                        

                            <tr class="prop">
                                <td valign="top" class="name">
                                  <h5><g:message code="datosPersonales" default="En caso de ser Traslado, indique Iglesia" /></h5>
                                </td>
                                <td
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="iglesia"><g:message code="baja.iglesia.label" default="Iglesia a ser Trasladado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bajaInstance, field: 'iglesia', 'errors')}">
                                    <g:textField name="iglesia" value="${bajaInstance?.iglesia}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="comentarios"><g:message code="baja.comentarios.label" default="Comentarios" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bajaInstance, field: 'comentarios', 'errors')}">
                                    <g:textArea name="comentarios" cols="40" rows="5" value="${bajaInstance?.comentarios}" />
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
