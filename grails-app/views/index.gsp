<html>
    <head>
        <title>Siscofe</title>
        <meta name="layout" content="main" />    
    </head>

    <body>
<!--MENU START-->
        <div id="menu">
		<ul class="menu">
			<li>
                          <a href="${resource(dir: '')}" class="parent"><span>Inicio</span></a>
			</li>
			<li>
                          <a href="#"><span>Iglesias</span></a>
				<div><ul>
                                      <li><a href="iglesia/create"<span>Registrar Iglesia</span></a></li>
                                      <li><a href="#"<span><g:link class="iglesia" controller="iglesia"><g:message code="Lista de Iglesias" /></g:link></span></a></li>
                                  </ul></div>
			</li>
                        <li><a href="#"><span>Comunidad</span></a>
				<div><ul>
					<li><a href="persona/create"<span>Registrar Persona</span></a></li>
                                        <li><a href="persona/buscar-persona"<span>Buscar Persona</span></a></li>
                                        <li><a href="persona/list"><span>Lista de Personas</span></a></li>
					<li><a href="#"><span>Reportes</span></a>
                                        <div>
                                          <ul>
                                            <li><a href="persona/buscar-sangre"><span>Tipo de Sangre</span></a>
                                            <li><a href="persona/buscar-edad"><span>Edades</span></a>
                                          </ul>
                                        </div>
                                        </li>
				</ul></div>
			</li>
                        <li><a href="#"><span>Miembros</span></a>
                            <div><ul>
                                <li><a href="persona/buscar-miembro"<span>Buscar Miembro</span></a></li>
                                <li><a href="#"><span>Reportes</span></a>
                                <div>
                                    <ul>
                                        <li><a href="#"<span><g:link class="persona" controller="persona" action="buscarMiembrosActivos"><g:message code="Miembros Activos" /></g:link></span></a></li>
                                        <li><a href="persona/reportes/buscarIngresos.gsp"<span>Buscar Ingresos</span></a></li>
<!--                                        <li><a href="#"><span>Libro de Iglesia</span></a>-->
                                    </ul>
                                </div>
                                </li>
                            </ul></div>
                        </li>
                        <li><a href="#"><span>Administración</span></a>
				<div><ul>
					<li><a href=""<span><g:link class="usuario" controller="usuario"><g:message code="Usuarios" /></g:link></span></a></li>
					
				</ul></div>
			</li>
			<li><a href="ayuda"><span>Ayuda</span></a></li>
		</ul>
        </div>
<!--MENU END-->
<div style="float: left">
          <h1>Sistema de Control de Feligresia de la IASD</h1>
          <h3>¡Bienvenido!</h3>
          <p><strong>
            Jes&uacute;s nos conoce individualmente, <br>y se conmueve por el sentimiento <br>de nuestras flaquezas.<br>
            Nos conoce a todos por nombre.<br>
          </strong>
            <i>White, DTG 445</i>
          </p>
            
</div>
<div id="inicio">


        </div>
    </body>
</html>
