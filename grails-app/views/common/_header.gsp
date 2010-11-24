
<%@page import="general.*"%>
<head>
</head>

<div id="iasdLogo" style="margin-right: 150px;">
  <a href="${createLinkTo(dir:'')}">
    <img src="${resource(dir:'images',file:'iasd2.png')}" alt="Grails" border="0" align="rigth" style=""/>
  </a>
</div>

<div id="header" style="margin-left: 180px;margin-right: 160px;">

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
