
<div id="iasdLogo" style="margin-right: 150px;">
  <a href="http://www.adventist.org/">
    <img src="${resource(dir:'images',file:'iasd2.png')}" alt="Grails" border="0" align="rigth" style=""/>
  </a>
</div>

<div id="header" style="margin-left: 140px;margin-right: 160px;">

  <div id="grailsLogo">
    <a href="${createLinkTo(dir:'')}">
      <img src="${resource(dir:'images',file:'logoSiscofe-white1.png')}" alt="Grails" border="0" align="left"/>
    </a>
  </div>

  <div id="status">
    <sec:ifLoggedIn>
      Hola <sec:loggedInUserInfo field="username" />! | <g:link class="perfil" controller="logout" style="color:white;font-weight:normal;"><g:message code="Salir" /></g:link><br/>
      <g:message code="default.union" /> | <g:message code="default.asociacion" /> | <g:message code="default.distrito" />
    </sec:ifLoggedIn>
  </div>

</div>


<nav class="navbar navbar-default" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#">Brand</a>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Link</a></li>
      <li><a href="#">Link</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li><a href="#">Separated link</a></li>
          <li><a href="#">One more separated link</a></li>
        </ul>
      </li>
    </ul>
    <form class="navbar-form navbar-left" role="search">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#">Link</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li><a href="#">Separated link</a></li>
        </ul>
      </li>
    </ul>
  </div><!-- /.navbar-collapse -->
</nav>