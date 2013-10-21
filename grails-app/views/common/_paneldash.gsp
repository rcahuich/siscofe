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
						<li <%= request.forwardURI == "${createLink(uri: '/')}" ? ' class="active"' : '' %>>
							<a href="${createLinkTo(dir:'/')}">
								<i class="icon-dashboard"></i>
								<span class="menu-text"> Dashboard </span>
							</a>
						</li>

						<li <%= request.forwardURI == "${createLink(uri: '/persona/list')}" ? ' class="active"' : '' %>>
							<a href="${createLink(controller:'persona', action:'list')}">
								<i class="icon-group"></i>
								<span class="menu-text"> Comunidad </span>
							</a>
						</li>

						<li <%= request.forwardURI == "${createLink(uri: '/persona/buscar-miembro')}" ? ' class="active"' : '' %>>
							<a href="${createLink(controller:'persona', action:'searchMember')}">
								<i class="icon-book"></i>
								<span class="menu-text"> Miembros </span>
							</a>
						</li>
						
						<li <%= request.forwardURI == "${createLink(uri: '/ayuda')}" ? ' class="active"' : '' %>>
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