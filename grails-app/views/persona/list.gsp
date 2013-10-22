
<%@ page import="siscofe.Persona" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
        <title><g:message code="persona.lista" args="[entityName]" /></title>
    </head>
    <body>
    
    	<div class="page-header position-relative">
						<h1>
							Lista de Asistentes
							<small>
								<i class="icon-double-angle-right"></i>
								todas las personas que llegan a la iglesia
							</small>
						</h1>
		</div><!--/.page-header-->
	
            <span class="menuButton"><g:link class="create" action="create"><g:message code="persona.nuevo" /></g:link></span>
        
        
        
            <g:if test="${flash.message}">
            	<div class="message">${flash.message}</div>
            </g:if>
            
                <table class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'persona.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nombre" title="${message(code: 'persona.nombreCompleto')}" />

                            <g:sortableColumn property="direccion" title="${message(code: 'persona.direccion')}" />
                        
<!--                            <g:sortableColumn property="apellidoPaterno" title="${message(code: 'persona.apellidoPaterno')}" />
                        
                            <g:sortableColumn property="apellidoMaterno" title="${message(code: 'persona.apellidoMaterno')}" />-->
                        
                            <g:sortableColumn property="estadoCivil" title="${message(code: 'persona.estadoCivil')}" />
                        
                            <g:sortableColumn property="nivelEstudio" title="${message(code: 'persona.nivelEstudio')}" />

                            <g:sortableColumn property="esMiembro" title="${message(code: 'persona.esMiembro')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${personaInstanceList}" status="i" var="personaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${personaInstance.id}">${fieldValue(bean: personaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: personaInstance, field: "nombreCompleto")}</td>

                            <td>${fieldValue(bean: personaInstance, field: "direccion")}</td>
                        
<!--                            <td>${fieldValue(bean: personaInstance, field: "apellidoPaterno")}</td>
                        
                            <td>${fieldValue(bean: personaInstance, field: "apellidoMaterno")}</td>-->
                        
                            <td>${fieldValue(bean: personaInstance, field: "estadoCivil")}</td>
                        
                            <td>${fieldValue(bean: personaInstance, field: "nivelEstudio")}</td>

                            <td><g:formatBoolean boolean="${personaInstance?.esMiembro}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
                ${personaInstanceTotal}
                <g:paginate total="${personaInstanceTotal}" />
          
    </body>
</html>
