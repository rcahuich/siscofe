
<%@ page import="roles.Usuario" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="usuario.username" /></td>

                            <td valign="top" class="value">${fieldValue(bean: usuarioInstance, field: "username")}</td>

                        </tr>


                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="usuario.nombre.label" default="Nombre" /></td>

                            <td valign="top" class="value">${fieldValue(bean: usuarioInstance, field: "nombre")}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="usuario.apellido.label" default="Apellido" /></td>

                            <td valign="top" class="value">${fieldValue(bean: usuarioInstance, field: "apellido")}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="usuario.enabled.label" default="Enabled" /></td>

                            <td valign="top" class="value"><g:checkBox name="fraccion" value="${usuarioInstance.enabled}" disabled="true" /></td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="usuario.correo.label" default="Correo" /></td>

                            <td valign="top" class="value">${fieldValue(bean: usuarioInstance, field: "correo")}</td>

                        </tr>

                        <g:if test="${roles}">
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="roles"><g:message code="usuario.roles" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: usuario, field: 'roles', 'errors')}">
                                    <g:each var="entry" in="${roles}">
                                        <g:checkBox disabled="true" name="${entry.key.authority}" value="${entry.value}"/> ${entry.key.authority}<br/>
                                    </g:each>
                                </td>
                            </tr>
                        </g:if>
                    
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${usuarioInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
