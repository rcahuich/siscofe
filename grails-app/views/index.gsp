<html>
    <head>
        <title>Siscofe</title>
        <meta name="layout" content="main" />    
    </head>

    <body>

        <div id="menu">
		<ul class="menu">
			<li><a href="${resource(dir: '')}" class="parent"><span>Inicio</span></a>
			</li>
			<li><a href="#"><span>Lista de Iglesias</span></a>
				<div><ul>
					<li><a href="#"<span><g:link class="iglesia" controller="iglesia"><g:message code="Lista de Iglesias" /></g:link></span></a></li>
				</ul></div>
			</li>
                        <li><a href="#"><span>Comunidad</span></a>
				<div><ul>
					<li><a href="#"<span><g:link class="persona" controller="persona"><g:message code="Lista de Personas" /></g:link></span></a></li>
					<li><a href="#"><span>Lista de Miembros</span></a></li>
				</ul></div>
			</li>
                        <li><a href="#"><span>Administración</span></a>
				<div><ul>
					<li><a href=""<span><g:link class="usuario" controller="usuario"><g:message code="Usuarios" /></g:link></span></a></li>
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
