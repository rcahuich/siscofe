
<%@ page import="siscofe.Persona" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
        <title><g:message code="persona.ver" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="persona.lista" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="persona.nuevo" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="persona.ver" />${personaInstance.nombre}</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.nombre" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "nombre")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.apellidoPaterno" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "apellidoPaterno")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.apellidoMaterno" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "apellidoMaterno")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.estadoCivil" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "estadoCivil")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.nivelEstudio" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "nivelEstudio")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.religionAnterior" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "religionAnterior")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.tipoDeSangre" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "tipoDeSangre")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.sexo" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "sexo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.emfermedades" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "enfermedades")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.fechaNacimiento" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personaInstance?.fechaNacimiento}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.correo" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "correo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.phoneCasa" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "phoneCasa")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.phoneCelular" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "phoneCelular")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.phoneTrabajo" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "phoneTrabajo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.sabeLeer" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${personaInstance?.sabeLeer}" /></td>
                            
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.direccion" /></td>
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "direccion")}</td>
                        </tr>
                    
                    </tbody>
                </table>
            </div>

            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${personaInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span> |
<!--                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'persona.confirma.baja', args:[personaInstance.nombre])}');" /></span> |-->
                    <span class="menuButton"><g:link controller="bautismo" params="[personaId:personaInstance.id, personaNombre:personaInstance.nombre]" class="create" action="create" > <g:message code="Agregar Bautismo" /></g:link></span> |
                    <span class="menuButton"><g:link controller="cartaDeTraslado" params="[personaId:personaInstance.id, personaNombre:personaInstance.nombre]" class="create" action="create" > <g:message code="Agregar Carta de Traslado" /></g:link></span> |
                    <span class="menuButton"><g:link controller="profesionDeFe" params="[personaId:personaInstance.id, personaNombre:personaInstance.nombre]" class="create" action="create" > <g:message code="Agregar Profesión de Fe" /></g:link></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
