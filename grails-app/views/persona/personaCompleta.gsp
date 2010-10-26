
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
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
                            <td valign="top" class="name"><g:message code="persona.id.label" default="Id" /></td>
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "id")}</td>
                        </tr>

                       <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.esHombre.label" default="Es Hombre" /></td>
                            <td valign="top" class="value"><g:checkBox name="esHombre" value="${personaInstance?.esHombre}" disabled="true"/></td>
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.nombre.label" default="Nombre" /></td>
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "nombre")}</td>
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.apellidoPaterno.label" default="Apellido Paterno" /></td>
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "apellidoPaterno")}</td>
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.apellidoMaterno.label" default="Apellido Materno" /></td>
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "apellidoMaterno")}</td>
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.fechaNacimiento.label" default="Fecha Nacimiento" /></td>
                            <td valign="top" class="value"><g:formatDate format="dd-MM-yyyy" date="${personaInstance?.fechaNacimiento}"/></td>
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.estadoCivil.label" default="Estado Civil" /></td>
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "estadoCivil")}</td>
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.nivelEstudio.label" default="Nivel Estudio" /></td>
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "nivelEstudio")}</td>
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.religionAnterior.label" default="Religion Anterior" /></td>
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "religionAnterior")}</td>
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.sabeLeer.label" default="Sabe Leer" /></td>
                            <td valign="top" class="value"><g:checkBox name="sabeLeer" value="${personaInstance?.sabeLeer}" disabled="true"/></td>
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.tipoDeSangre.label" default="Tipo de Sangre" /></td>
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "tipoDeSangre")}</td>
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.enfermedades.label" default="Enfermedades o Padecimientos" /></td>
                            <td valign="top" class="value">${fieldValue(bean: personaInstance, field: "enfermedades")}</td>
                        </tr>

			<tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.direccion.label" default="Direccion" /></td>
                            <td valign="top" class="value"><g:link controller="direccion" action="show" id="${personaInstance?.direccion?.id}">${personaInstance?.direccion?.encodeAsHTML()}</g:link></td>
                        </tr>

                    </tbody>
                </table>
              <table>
                
                <h4>Informacion de Bautismo</h4>
                <tbody>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="persona.bautismo.label" default="Iglesia" /></td>

                            <td valign="top" class="value"><g:link controller="bautismo" action="show" id="${personaInstance?.bautismos?.id}">${personaInstance?.bautismos?.iglesia?.encodeAsHTML()}</g:link></td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.lugarBautismo.label" default="Lugar Bautismo" /></td>

                            <td valign="top" class="value">${fieldValue(bean: personaInstance?.bautismos, field: "lugarBautismo")}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.ministroOficiante.label" default="Ministro Oficiante" /></td>

                            <td valign="top" class="value">${fieldValue(bean: personaInstance?.bautismos, field: "ministroOficiante")}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.fechaBautismo.label" default="Fecha Bautismo" /></td>

                            <td valign="top" class="value"><g:formatDate format="dd-MM-yyyy" date="${bautismoInstance?.fechaBautismo}" /></td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.cursoBiblico.label" default="Curso Biblico" /></td>

                            <td valign="top" class="value">${fieldValue(bean: personaInstance?.bautismos, field: "cursoBiblico")}</td>

                        </tr>

			<tr class="prop">
	                    <td valign="top" class="name"><g:message code="bautismo.estudioVeintiochoCreencias.label" default="Estudio Veintiocho Creencias" /></td>
                            <td valign="top" class="value"><g:checkBox name="estudioVeintiochoCreencias" value="${bautismoInstance?.estudioVeintiochoCreencias}" disabled="true"/></td>

	                </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.numeroVotoJuntaAdministrativa.label" default="Numero Voto Junta Administrativa" /></td>

                            <td valign="top" class="value">${fieldValue(bean: personaInstance?.bautismos, field: "numeroVotoJuntaAdministrativa")}</td>

                        </tr>

						<tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.fechaVotoJuntaAdministrativa.label" default="Fecha Voto Junta Administrativa" /></td>

                            <td valign="top" class="value"><g:formatDate format="dd-MM-yyyy" date="${bautismoInstance?.fechaVotoJuntaAdministrativa}" /></td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.numeroVotoJuntaDirectiva.label" default="Numero Voto Junta Directiva" /></td>

                            <td valign="top" class="value">${fieldValue(bean: personaInstance?.bautismos, field: "numeroVotoJuntaDirectiva")}</td>

                        </tr>

             			<tr class="prop">
                 			<td valign="top" class="name"><g:message code="bautismo.fechaVotoJuntaDirectiva.label" default="Fecha Voto Junta Directiva" /></td>

                 			<td valign="top" class="value"><g:formatDate format="dd-MM-yyyy" date="${bautismoInstance?.fechaVotoJuntaDirectiva}" /></td>

             			</tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bautismo.numeroBautismo.label" default="Numero Bautismo" /></td>

                            <td valign="top" class="value">${fieldValue(bean: personaInstance?.bautismos, field: "numeroBautismo")}</td>

                        </tr>


                </tbody>

              </table>


            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${personaInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>

                </g:form>
            </div>
        </div>
    </body>
</html>