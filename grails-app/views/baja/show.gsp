
<%@ page import="siscofe.Baja" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'baja.label', default: 'Baja')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        </div>
        <div class="body">
            
            <g:if test="${flash.message}">
              <div class="message" style="text-align: center">${flash.message}</div>
            </g:if>
            
        </div>
    </body>
</html>
