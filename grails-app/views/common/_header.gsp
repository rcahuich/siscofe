
<!--<h1><a class="home" href="${createLinkTo(dir:'')}" style="color:white;font-weight:normal; text-align:left">Siscofe</a></h1>-->
<!--<div id="iasdLogo"><a href="${createLinkTo(dir:'')}"><img src="${resource(dir:'images',file:'iasd1.png')}" alt="Grails" border="0" align="right"/></a></div>-->

<head>

  <script language="javascript" type="text/javascript">
//RELOJ 24 HORAS
//
//Autor: Iván Nieto Pérez
//Este script y otros muchos pueden
//descarse on-line de forma gratuita
//en El Código: www.elcodigo.com

var RelojID24 = null
var RelojEjecutandose24 = false

function DetenerReloj24 (){
	if(RelojEjecutandose24)
		clearTimeout(RelojID24)
	RelojEjecutandose24 = false
}

function MostrarHora24 () {
	var ahora = new Date()
	var horas = ahora.getHours()
	var minutos = ahora.getMinutes()
	var segundos = ahora.getSeconds()
	var ValorHora

	//establece las horas
	if (horas < 10)
	     	ValorHora = "0" + horas
	else
		ValorHora = "" + horas

	//establece los minutos
	if (minutos < 10)
		ValorHora += ":0" + minutos
	else
		ValorHora += ":" + minutos

	//establece los segundos
	if (segundos < 10)
		ValorHora += ":0" + segundos
	else
		ValorHora += ":" + segundos

	document.reloj24.digitos.value = ValorHora
	//si se desea tener el reloj en la barra de estado, reemplazar la anterior por esta
	//window.status = ValorHora

	RelojID24 = setTimeout("MostrarHora24()",1000)
	RelojEjecutandose24 = true
}

function IniciarReloj24 () {
	DetenerReloj24()
	MostrarHora24()
}

window.onload = IniciarReloj24;
if (document.captureEvents) {			//N4 requiere invocar la funcion captureEvents
	document.captureEvents(Event.LOAD)
}




</script>


</head>



<div style="margin-left: 180px;margin-right: 190px">
              <div id="grailsLogo">
                <a href="${createLinkTo(dir:'')}">
                  <img src="${resource(dir:'images',file:'logoSiscofe-white1.png')}" alt="Grails" border="0" align="left"/>
                </a>
              </div>
<div id="status">
  <div>
        <sec:ifLoggedIn>
           <p>
            Bienvenido <sec:loggedInUserInfo field="username" /> | 
            <g:link class="perfil" controller="logout" style="color:white;font-weight:normal;"><g:message code="Salir" /></g:link>
           </p>
           <form name="reloj24">
             <input type="text" size="8" name="digitos" style="background: darkgreen;color: white"/>
           </form>
        </sec:ifLoggedIn>

</div>
</div>
</div>
