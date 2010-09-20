<div id="direccion${i}">
    <g:hiddenField name='expandableDireccionList[${i}].id' value='${direccion.id}'/>
    <g:textField name='expandableDireccionList[${i}].pais' value='${direccion.pais}'/>
    <g:textField name='expandableDireccionList[${i}].estado' value='${direccion.estado}'/>
    <g:textField name='expandableDireccionList[${i}].municipio' value='${direccion.municipio}'/>
    <g:textField name='expandableDireccionList[${i}].ciudad' value='${direccion.ciudad}'/>
    <g:textField name='expandableDireccionList[${i}].ejido' value='${direccion.ejido}'/>
    <g:textField name='expandableDireccionList[${i}].colonia' value='${direccion.colonia}'/>
    <g:textField name='expandableDireccionList[${i}].calle' value='${direccion.calle}'/>
    <g:textField name='expandableDireccionList[${i}].numero' value='${direccion.numero}'/>
    <g:textField name='expandableDireccionList[${i}].codigoPostal' value='${direccion.codigoPostal}'/>
    
    <input type="hidden" name='expandableDireccionList[${i}]._deleted' id='expandableDireccionList[${i}]._deleted' value='false'/>
    <span onClick="$('#expandableDireccionList\\[${i}\\]\\._deleted').val('true'); $('#direccion${i}').hide()"><img src="${resource(dir:'images/skin', file:'database_delete.png')}" /></span>
</div>