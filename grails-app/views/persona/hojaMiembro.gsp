
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="main" />
    <title><g:message code="persona.miembro.label" /></title>
  </head>
  <body>
    
    <div class="nav">
      <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
    </div>

    <div class="body">

      <div class="dialog">
        <table>
          <tr>
            <td style="font-size: 20px; color: #48802c;"><g:message code="hoja.title"/></td>
          </tr>
          <tr>
            <td><h1><g:message code="default.blank"/></h1></td>
          </tr>
          <tr>
            <td style="font-size: 12px;"><u><b><g:message code="hoja.datosPersonales"/></b></u></td>
          </tr>
          <tr>
             <td><b><g:message code="hoja.persona.nombre"/></b>${fieldValue(bean: hoja, field: 'persona.nombreCompleto')}</td>
             <td><b><g:message code="hoja.persona.esMiembro"/> </b><g:checkBox name="esMiembro" value="${fieldValue(bean: hoja, field: 'persona.esMiembro')}" disabled="true" /></td>
             <td><b><g:message code="hoja.persona.id"/> </b>${fieldValue(bean: hoja, field: 'persona.id')}</td>
          </tr>
          <tr>
            <td><b><g:message code="hoja.persona.fechaNacimiento"/> </b>${fieldValue(bean: hoja, field: 'persona.fechaNacimiento')}</td>
            <td><b><g:message code="hoja.persona.sexo"/> </b>${fieldValue(bean: hoja, field: 'persona.sexo')}</td>
            <td><b><g:message code="hoja.persona.estadoCivil"/> </b>${fieldValue(bean: hoja, field: 'persona.estadoCivil')}</td>
          </tr>
          <tr>
            <td><b><g:message code="hoja.persona.telefonoCasa"/> </b>${fieldValue(bean: hoja, field: 'persona.phoneCasa')}</td>
            <td><b><g:message code="hoja.persona.telefonoCelular"/> </b>${fieldValue(bean: hoja, field: 'persona.phoneCelular')}</td>
            <td><b><g:message code="hoja.persona.telefonoTrabajo"/> </b>${fieldValue(bean: hoja, field: 'persona.phoneTrabajo')}</td>
          </tr>
          <tr>
            <td><b><g:message code="hoja.persona.correo"/> </b>${fieldValue(bean: hoja, field: 'persona.correo')}</td>
            <td><b><g:message code="hoja.persona.tipoDeSangre"/> </b>${fieldValue(bean: hoja, field: 'persona.tipoDeSangre')}</td>
            <td><b><g:message code="hoja.persona.sabeLeer"/> </b><g:checkBox name="sabeLeer" value="${fieldValue(bean: hoja, field: 'persona.sabeLeer')}" disabled="true" /></td>
          </tr>
          <tr>
            <td><b><g:message code="hoja.persona.nivelMaximoEstudio"/> </b>${fieldValue(bean: hoja, field: 'persona.nivelEstudio')}</td>
            <td colspan="2"><b><g:message code="hoja.persona.enfermedades"/> </b>${fieldValue(bean: hoja, field: 'persona.enfermedades')}</td>
          </tr>
          <tr>
            <td colspan="3"><b><g:message code="hoja.persona.direccion"/> </b>${fieldValue(bean: hoja, field: 'persona.direccion')}</td>
          </tr>
          <tr>
            <td colspan="3">
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${fieldValue(bean: hoja, field: 'persona.id')}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'hoja.persona.botonEdita')}" /></span>
                </g:form>
            </div>
            </td>
          </tr>
        
          <tr>
            <td><h1><g:message code="default.blank"/></h1></td>
          </tr>
          <tr>
            <td style="font-size: 12px;"><u><b><g:message code="hoja.datosEclesiasticos"/></b></u></td>
          </tr>

          <g:if test="${hoja.tipoIngreso.class.is (siscofe.Bautismo)}">
            <tr>
              <td><b><g:message code="hoja.ingreso.tipoIngreso"/></b> <g:message code="hoja.ingreso.bautismo"/> </td>
              <td><h1><g:message code="default.blank"/></h1></td>
              <td><h1><g:message code="default.blank"/></h1></td>
            </tr>
            <tr>
              <td><b><g:message code="hoja.ingreso.iglesia"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.iglesia')}</td>
              <td><b><g:message code="hoja.ingreso.bautismo.lugarBautismo"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.lugarBautismo')}</td>
              <td><b><g:message code="hoja.ingreso.bautismo.ministroOficiante"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.ministroOficiante')}</td>
            </tr>
            <tr>
              <td><b><g:message code="hoja.ingreso.bautismo.numeroBautismo"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.numeroBautismo')}</td>
              <td><b><g:message code="hoja.ingreso.bautismo.codigo"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.codigo')}</td>
              <td><b><g:message code="hoja.ingreso.bautismo.fechaBautismo"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.fechaBautismo')}</td>
            </tr>
            <tr>
              <td><b><g:message code="hoja.ingreso.bautismo.estudioVeintiochoCreencias"/> </b><g:checkBox name="estudioVeintiochoCreencias" value="${fieldValue(bean: hoja, field: 'tipoIngreso.estudioVeintiochoCreencias')}" disabled="true" /></td>
              <td><b><g:message code="hoja.ingreso.fechaAlta"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.fechaAlta')}</td>
              <td><h1><g:message code="default.blank"/></h1></td>
            </tr>
            <tr>
              <td><b><g:message code="hoja.ingreso.numeroVotosJuntaAdministrativa"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.numeroVotoJuntaAdministrativa')}</td>
              <td colspan="2"><b><g:message code="hoja.ingreso.fechaVotosJuntaAdministrativa"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.fechaVotoJuntaAdministrativa')}</td>
            </tr>
            <tr>
              <td><b><g:message code="hoja.ingreso.numeroVotosJuntaDirectiva"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.numeroVotoJuntaDirectiva')}</td>
              <td colspan="2"><b><g:message code="hoja.ingreso.fechaVotosJuntaDirectiva"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.fechaVotoJuntaDirectiva')}</td>
            </tr>
            <tr>
              <td colspan="3"><b><g:message code="hoja.ingreso.comentarios"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.comentarios')}</td>
            </tr>
            <tr>
              <td colspan="3">
              <div class="buttons">
                  <g:form>
                    <span style="font-size: 10px;" class="menuButton"><g:link controller="bautismo" id="${fieldValue(bean: hoja, field: 'persona.id')}" params="personaId:${fieldValue(bean: hoja, field: 'persona.id')}" class="edit" action="edit" > <g:message code="Editar Informacion de Bautismo" /></g:link></span>
                  </g:form>
              </div>
              </td>
            </tr>
          </g:if>

          <g:if test="${hoja.tipoIngreso.class.is (siscofe.CartaDeTraslado)}">
            <tr>
              <td><b><g:message code="hoja.ingreso.tipoIngreso"/></b> <g:message code="hoja.ingreso.cartaDeTraslado"/> </td>
              <td><h1><g:message code="default.blank"/></h1></td>
              <td><h1><g:message code="default.blank"/></h1></td>
            </tr>
            <tr>
              <td><b><g:message code="hoja.ingreso.iglesia"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.iglesia')}</td>
              <td><b><g:message code="hoja.ingreso.cartaDeTraslado.iglesia"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.iglesiaProcedencia')}</td>
              <td><b><g:message code="hoja.ingreso.cartaDeTraslado.pastorEnFuncion"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.pastorEnFuncion')}</td>
            </tr>
            <tr>
              <td><b><g:message code="hoja.ingreso.fechaAlta"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.fechaAlta')}</td>
              <td><b><g:message code="hoja.ingreso.numeroVotosJuntaAdministrativa"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.numeroVotoJuntaAdministrativa')}</td>
              <td><b><g:message code="hoja.ingreso.fechaVotosJuntaAdministrativa"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.fechaVotoJuntaAdministrativa')}</td>
            </tr>
            <tr>
              <td><b><g:message code="hoja.ingreso.numeroVotosJuntaDirectiva"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.numeroVotoJuntaDirectiva')}</td>
              <td colspan="2"><b><g:message code="hoja.ingreso.fechaVotosJuntaDirectiva"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.fechaVotoJuntaDirectiva')}</td>
            </tr>
            <tr>
              <td colspan="3"><b><g:message code="hoja.ingreso.comentarios"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.comentarios')}</td>
            </tr>
            <tr>
              <td colspan="3">
              <div class="buttons">
                  <g:form>
                      <span class="menuButton"><g:link controller="cartaDeTraslado" id="${fieldValue(bean: hoja, field: 'tipoIngreso.id')}" class="edit" action="edit" > <g:message code="Editar Informacion de Carta de Traslado" /></g:link></span>
                  </g:form>
              </div>
              </td>
            </tr>
          </g:if>

          <g:if test="${hoja.tipoIngreso.class.is (siscofe.ProfesionDeFe)}">
            <tr>
              <td><b><g:message code="hoja.ingreso.tipoIngreso"/></b> <g:message code="hoja.ingreso.profesionDeFe"/> </td>
              <td><h1><g:message code="default.blank"/></h1></td>
              <td><h1><g:message code="default.blank"/></h1></td>
            </tr>
            <tr>
              <td><b><g:message code="hoja.ingreso.iglesia"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.iglesia')}</td>
              <td><b><g:message code="hoja.ingreso.profesionDeFe.iglesia"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.iglesiaProcedencia')}</td>
              <td><b><g:message code="hoja.ingreso.profesionDeFe.pastorEnFuncion"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.pastorEnFuncion')}</td>
            </tr>
            <tr>
              <td><b><g:message code="hoja.ingreso.fechaAlta"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.fechaAlta')}</td>
              <td><b><g:message code="hoja.ingreso.numeroVotosJuntaAdministrativa"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.numeroVotoJuntaAdministrativa')}</td>
              <td><b><g:message code="hoja.ingreso.fechaVotosJuntaAdministrativa"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.fechaVotoJuntaAdministrativa')}</td>
            </tr>
            <tr>
              <td><b><g:message code="hoja.ingreso.numeroVotosJuntaDirectiva"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.numeroVotoJuntaDirectiva')}</td>
              <td colspan="2"><b><g:message code="hoja.ingreso.fechaVotosJuntaDirectiva"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.fechaVotoJuntaDirectiva')}</td>
            </tr>
            <tr>
              <td colspan="3"><b><g:message code="hoja.ingreso.comentarios"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.comentarios')}</td>
            </tr>
            <tr>
              <td colspan="3">
              <div class="buttons">
                  <g:form>
                      <span class="menuButton"><g:link controller="profesionDeFe" id="${fieldValue(bean: hoja, field: 'tipoIngreso.id')}" class="edit" action="edit" > <g:message code="Editar Informacion de Profesion de Fe" /></g:link></span>
                  </g:form>
              </div>
              </td>
            </tr>
          </g:if>
        </table>
        <div class="buttons">
                <g:form>
                  <span style="font-size: 12px;" class="menuButton"><g:link controller="baja" class="delete" name="persona.id" id="${fieldValue(bean: hoja, field: 'persona.id')}" params="personaId:${fieldValue(bean: hoja, field: 'persona.id')}, personaNombre:${fieldValue(bean: hoja, field: 'persona.nombre')}" action="create" > <g:message code="Dar de Baja" /></g:link></span>
                </g:form>
            </div>
      </div>
    </div>
  </body>
</html>
