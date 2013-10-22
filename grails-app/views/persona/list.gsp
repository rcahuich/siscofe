
<%@ page import="siscofe.Persona" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
        <title><g:message code="persona.lista" args="[entityName]" /></title>
    </head>
    <body>
    
    <a class="menu-toggler" id="menu-toggler" href="#">
		<span class="menu-text"></span>
	</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="icon-signal"></i>
							</button>

							<button class="btn btn-info">
								<i class="icon-pencil"></i>
							</button>

							<button class="btn btn-warning">
								<i class="icon-group"></i>
							</button>

							<button class="btn btn-danger">
								<i class="icon-cogs"></i>
							</button>
						</div>

						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
					</div><!-- #sidebar-shortcuts -->

					<ul class="nav nav-list">
						<li>
							<a href="${createLinkTo(dir:'/')}">
								<i class="icon-dashboard"></i>
								<span class="menu-text"> Dashboard </span>
							</a>
						</li>
						
						<li class="active open">
							<a href="#" class="dropdown-toggle">
								<i class="icon-group"></i>
								<span class="menu-text"> Comunidad </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li class="active">
									<a href="${createLink(controller:'persona', action:'list')}">
										<i class="icon-double-angle-right"></i>
										Asistentes
									</a>
								</li>
								<li >
									<a href="${createLink(controller:'persona', action:'create')}">
										<i class="icon-double-angle-right"></i>
										Nuevo Asistente
									</a>
								</li>
							</ul>
						</li>
						
						<li>
							<a href="${createLink(controller:'persona', action:'searchMember')}">
								<i class="icon-book"></i>
								<span class="menu-text"> Miembros </span>
							</a>
						</li>
						
						<li>
							<a href="${createLink(controller:'inicio', action:'ayuda')}">
								<i class="icon-lightbulb"></i>
								<span class="menu-text"> Ayuda </span>
							</a>
						</li>
						
					</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>
    
    
    <div class="main-content">
    
    <div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-group"></i>
								<a href="${createLinkTo(dir:'/')}">Comunidad</a>
							</li>
							<li class="active">Asistentes</li>
						</ul><!-- .breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="icon-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- #nav-search -->
					</div>
					<div class="page-content">
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
          </div>
         </div>
    </body>
</html>
