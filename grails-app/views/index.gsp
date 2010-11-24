<html>
    <head>
        <title>Siscofe</title>
        <meta name="layout" content="main" />    
    </head>

    <body>

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
                                        <li><a href="persona/buscarPersona.gsp"<span>Buscar Persona</span></a></li>
                                        <li><a href="persona/list"><span>Lista de Personas</span></a></li>
					<li><a href="#"><span>Reportes</span></a>
                                        <div>
                                          <ul>
                                            <li><a href="persona/tipoSangre.gsp"><span>Tipo de Sangre</span></a>
<!--                                            <li><a href="persona/direMiembros.gsp"><span>Dirección de Miembros</span></a>-->
                                            <li><a href="persona/buscarEdad.gsp"><span>Edades</span></a>
                                          </ul>
                                        </div>
                                        </li>
				</ul></div>
			</li>
                        <li><a href="#"><span>Miembros</span></a>
                            <div><ul>
                                <li><a href="persona/buscarMiembro.gsp"<span>Buscar Miembro</span></a></li>
                                <li><a href="#"><span>Reportes</span></a>
                                <div>
                                    <ul>
                                        <li><a href="#"<span><g:link class="persona" controller="persona" action="buscarMiembrosActivos"><g:message code="Miembros Activos" /></g:link></span></a></li>
                                        <li><a href="persona/reportes/buscarIngresos.gsp"<span>Buscar Ingresos</span></a></li>
                                        <li><a href="#"><span>Libro de Iglesia</span></a>
                                    </ul>
                                </div>
                                </li>
                            </ul></div>
                        </li>
                        <li><a href="#"><span>Administración</span></a>
				<div><ul>
					<li><a href=""<span><g:link class="usuario" controller="usuario"><g:message code="Usuarios" /></g:link></span></a></li>
					<li><a href=""<span><g:link class="distrito" controller="distrito"><g:message code="Distritos" /></g:link></span></a></li>
					<li><a href=""<span><g:link class="asociacion" controller="asociacion"><g:message code="Asociaciones" /></g:link></span></a></li>
					<li><a href=""<span><g:link class="union" controller="union"><g:message code="Uniones" /></g:link></span></a></li>
				</ul></div>
			</li>
			<li><a href="ayuda.gsp"><span>Ayuda</span></a></li>
		</ul>
	</div>
        <div id="body">
<!--          <div class="nav">

                    <span class="menuButton"><a class="home" href="${resource(dir: '')}"><g:message code="Inicio" /></a></span> |
                    <span class="menuButton"><g:link class="iglesia" controller="iglesia"><g:message code="Iglesias" /></g:link></span> |
                    <span class="menuButton"><g:link class="persona" controller="persona"><g:message code="Comunidad" /></g:link></span> |
                    <span class="menuButton"><g:link class="usuario" controller="usuario"><g:message code="Usuarios" /></g:link></span> |
          </div>-->


          <h1>Sistema de Control de Feligresia de la IASD</h1>

          <h3>Bienvenido</h3>
            <p>Aqui usted podra administrar los datos de los miembros de su Distrito, con las siguientes opciones:</p>

            <br/>
            <div class="dialog">
                <ul >



                </ul>
            </div>
        </div>
    </body>
</html>
