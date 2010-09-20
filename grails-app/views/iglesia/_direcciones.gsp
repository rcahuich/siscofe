<script type="text/javascript">
    var childCount = ${iglesiaInstance?.direcciones.size()} + 0;

    function addChild() {
        var htmlId = "direccion" + childCount;
        var deleteIcon = "${resource(dir:'images/skin', file:'database_delete.png')}";
        var templateHtml = "<div id='" + htmlId + "' nombre='" + htmlId + "'>\n";
        templateHtml += "Pais: <input type='text' id='expandableDireccionList[" + childCount + "].pais' nombre='expandableDireccionList[" + childCount + "].pais' />\n";
        templateHtml += "Estado: <input type='text' id='expandableDireccionList[" + childCount + "].estado' nombre='expandableDireccionList[" + childCount + "].estado' />\n";
        templateHtml += "Municipio: <input type='text' id='expandableDireccionList[" + childCount + "].municipio' nombre='expandableDireccionList[" + childCount + "].municipio' />\n";
        templateHtml += "Ciudad: <input type='text' id='expandableDireccionList[" + childCount + "].ciudad' nombre='expandableDireccionList[" + childCount + "].ciudad' />\n";
        templateHtml += "Ejido: <input type='text' id='expandableDireccionList[" + childCount + "].ejido' nombre='expandableDireccionList[" + childCount + "].ejido' />\n";
        templateHtml += "Colonia: <input type='text' id='expandableDireccionList[" + childCount + "].colonia' nombre='expandableDireccionList[" + childCount + "].colonia' />\n";
        templateHtml += "Calle: <input type='text' id='expandableDireccionList[" + childCount + "].calle' nombre='expandableDireccionList[" + childCount + "].calle' />\n";
        templateHtml += "Numero: <input type='text' id='expandableDireccionList[" + childCount + "].numero' nombre='expandableDireccionList[" + childCount + "].numero' />\n";
        templateHtml += "Codigo Postal: <input type='text' id='expandableDireccionList[" + childCount + "].codigoPostal' nombre='expandableDireccionList[" + childCount + "].codigoPostal' />\n";
        templateHtml += "<span onClick='$(\"#" + htmlId + "\").remove();'><img src='" + deleteIcon + "' /></span>\n";
        templateHtml += "</div>\n";
        
        $("#childList").append(templateHtml);
        childCount++;
        alert(tempalteHtml);
    }
</script>

<div id="childList">
    <g:each var="direccion" in="${iglesiaInstance.direcciones}" status="i">
        <g:render template='direccion' model="['direccion':direccion,'i':i]"/>
    </g:each>
</div>
<input type="button" value="Agregar Direccion" onclick="addChild();" />
