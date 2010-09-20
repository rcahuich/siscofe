

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create iglesia</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Iglesia List</g:link></span>
        </div>
        <div class="body">
            <h1>Create iglesia</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${iglesiaInstance}">
            <div class="errors">
                <g:renderErrors bean="${iglesiaInstance}" as="list" />
            </div>
            </g:hasErrors>

            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nombre"><g:message code="iglesia.nombre.label" default="Nombre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'nombre', 'errors')}">
                                    <g:textField name="nombre" maxlength="64" value="${iglesiaInstance?.nombre}" />
                                </td>
                            </tr>
                        

            <g:form action="save" method="post" >
                <g:render template="iglesia" model="['iglesiaInstance':iglesiaInstance]"/>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="create" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
