
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
<div class="container">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a href="${createLinkTo(dir:'')}">
      <img src="${resource(dir:'images',file:'logoSiscofe-white1.png')}" alt="Siscofe" border="0"/>
    </a>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav">
      <li><a href="${createLinkTo(dir:'')}">Inicio</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Iglesia <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="${createLink(controller:'iglesia', action:'create')}">Nueva Iglesia</a></li>
          <li><a href="${createLink(controller:'iglesia', action:'list')}">Iglesias</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Comunidad <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="${createLink(controller:'persona', action:'create')}">Registrar Persona</a></li>
          <li><a href="${createLink(controller:'persona', action:'list')}">Lista de Personas</a></li>
          <li class="divider"></li>
          <li><a href="${createLink(controller:'persona', action:'searchPerson')}">Buscar Persona</a></li>
          <li><a href="${createLink(controller:'persona', action:'tipoSangre')}">Tipo de Sangre</a></li>
          <li><a href="${createLink(controller:'persona', action:'searchAge')}">Edades</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Miembros <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="${createLink(controller:'persona', action:'searchMember')}">Buscar Miembro</a></li>
          <li><a href="${createLink(controller:'persona', action:'buscarMiembrosActivos')}">Miembros Activos</a></li>
          <li><a href="${createLink(controller:'persona', action:'searchIncome')}">Buscar Ingresos</a></li>
        </ul>
      </li>
    </ul>

    <ul class="nav navbar-nav navbar-right">
      <li><a href="${createLink(controller:'inicio', action:'ayuda')}">Ayuda</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Administración <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="${createLink(controller:'usuario', action:'list')}">Usuarios</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> hola <sec:loggedInUserInfo field="username" /> <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li><a href="#">Separated link</a></li>
        </ul>
      </li>
      <li><a href="${createLink(controller:'logout', action:'index')}" data-toggle="tooltip" title="Salir"><span class="glyphicon glyphicon-log-out"></span></a></li>
    </ul>
  </div><!-- /.navbar-collapse -->
  </div>
</nav>