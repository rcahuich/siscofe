
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
             <td><b><g:message code="hoja.persona.esMiembro"/> </b>${fieldValue(bean: hoja, field: 'persona.esMiembro')}</td>
             <td><b><g:message code="default.blank"/> </b></td>
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
            <td><b><g:message code="hoja.persona.sabeLeer"/> </b>${fieldValue(bean: hoja, field: 'persona.sabeLeer')}</td>
          </tr>
          <tr>
            <td><b><g:message code="hoja.persona.nivelMaximoEstudio"/> </b>${fieldValue(bean: hoja, field: 'persona.nivelEstudio')}</td>
            <td colspan="2"><b><g:message code="hoja.persona.enfermedades"/> </b>${fieldValue(bean: hoja, field: 'persona.enfermedades')}</td>
          </tr>
          <tr>
            <td colspan="3"><b><g:message code="hoja.persona.direccion"/> </b>${fieldValue(bean: hoja, field: 'persona.direccion')}</td>
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

            </tr>
          </g:if>

          <g:if test="${hoja.tipoIngreso.class.is (siscofe.CartaDeTraslado)}">
            <tr>
              <td><b><g:message code="hoja.ingreso.tipoIngreso"/></b> <g:message code="hoja.ingreso.cartaDeTraslado"/> </td>

            </tr>
          </g:if>

          <g:if test="${hoja.tipoIngreso.class.is (siscofe.ProfesionDeFe)}">
            <tr>
              <td><b><g:message code="hoja.ingreso.tipoIngreso"/></b> <g:message code="hoja.ingreso.profesionDeFe"/> </td>
              <td><h1><g:message code="default.blank"/></h1></td>
              <td><h1><g:message code="default.blank"/></h1></td>
            </tr>
            <tr>
              <td><b><g:message code="hoja.ingreso.fechaAlta"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.fechaAlta')}</td>
              <td><b><g:message code="hoja.persona.pastorEnFuncion"/> </b>${fieldValue(bean: hoja, field: 'tipoIngreso.pastorEnFuncion')}</td>
            </tr>
          </g:if>

        </table>
      </div>
    </div>
  </body>
</html>
