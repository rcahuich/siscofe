<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<div id="menu">
 
   <div id="status">
        <sec:ifLoggedIn>
            Bienvenido <sec:loggedInUserInfo field="username" /> |
            <g:link class="perfil" controller="logout" style="color:white;font-weight:normal;"><g:message code="Salir" /></g:link>
        </sec:ifLoggedIn>
   </div>

</div>
