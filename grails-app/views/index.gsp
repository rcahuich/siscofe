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
					<li><a href="#"<span><g:link class="iglesia" controller="iglesia"><g:message code="Lista de Iglesias" /></g:link></span></a></li>
				</ul></div>
			</li>
                        <li><a href="#"><span>Comunidad</span></a>
				<div><ul>
					<li><a href="persona/create"<span>Nueva Persona</span></a></li>
					<li><a href="#"><span>Reportes</span></a>
                                        <div><ul>
                                            <li><a href="persona/tipoSangre.gsp"><span>Tipo de Sangre</span></a>
                                            <li><a href="persona/direMiembros.gsp"><span>Dirección de Miembros</span></a>
                                            <li><a href="#"><span>Edades</span></a>
                                        </ul></div>
                                        </li>
					<li><a href="baja/create"<span>Bajas</span></a></li>
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


          <h1>Bienvenido</h1>
            
            <p>Aqui usted podra administrar los datos de los miembros de su Distrito, con las siguientes opciones:</p>

            <br/>
            <div class="dialog">
                <ul >



                </ul>
            </div>
        </div>
    </body>
</html>
