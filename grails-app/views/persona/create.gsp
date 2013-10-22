

<%@ page import="siscofe.Persona" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        
        <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
        <title><g:message code="persona.nuevo" args="[entityName]" /></title>
		<link href="${resource(dir: 'css-ace', file: 'select2.css')}" rel="stylesheet" />
		<g:javascript library="aceForm"/>
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
								<li>
									<a href="${createLink(controller:'persona', action:'list')}">
										<i class="icon-double-angle-right"></i>
										Asistentes
									</a>
								</li>
								<li class="active">
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
							<li class="active">Nuevo Asistente</li>
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
							Nuevo Asistente
							<small>
								<i class="icon-double-angle-right"></i>
								los campos marcados con * son obligatorios
							</small>
						</h1>
				</div><!--/.page-header-->
		
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${personaInstance}">
            <div class="errors">
                <g:renderErrors bean="${personaInstance}" as="list" />
            </div>
            </g:hasErrors>
            
            <div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->


								<div class="row-fluid">
									<div class="span12">
										<div class="widget-box">
											<div class="widget-header widget-header-blue widget-header-flat">
												<h4 class="lighter">Completa todos los pasos</h4>

																					
											</div>

											<div class="widget-body">
												<div class="widget-main">
													<div id="fuelux-wizard" class="row-fluid" data-target="#step-container">
														<ul class="wizard-steps">
															<li data-target="#step1" class="active">
																<span class="step">1</span>
																<span class="title">Datos de la Persona</span>
															</li>

															<li data-target="#step2">
																<span class="step">2</span>
																<span class="title">Agregar como Miembro</span>
															</li>

															<li data-target="#step3">
																<span class="step">3</span>
																<span class="title">¡Listo!</span>
															</li>

															<li data-target="#step4">
																<span class="step">4</span>
																<span class="title">Other Info</span>
															</li>
														</ul>
													</div>

													<hr>
													<div class="step-content row-fluid position-relative" id="step-container">
														<div class="step-pane active" id="step1">
															<h3 class="lighter block green">Datos de la Persona</h3>

															<form class="form-horizontal" id="sample-form" style="display: none;">
																<div class="form-group has-warning">
																	<label for="inputWarning" class="col-xs-12 col-sm-3 control-label no-padding-right">Input with warning</label>

																	<div class="col-xs-12 col-sm-5">
																		<span class="block input-icon input-icon-right">
																			<input type="text" id="inputWarning" class="width-100">
																			<i class="icon-leaf"></i>
																		</span>
																	</div>
																	<div class="help-block col-xs-12 col-sm-reset inline">
																		Warning tip help!
																	</div>
																</div>

																<div class="form-group has-error">
																	<label for="inputError" class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">Input with error</label>

																	<div class="col-xs-12 col-sm-5">
																		<span class="block input-icon input-icon-right">
																			<input type="text" id="inputError" class="width-100">
																			<i class="icon-remove-sign"></i>
																		</span>
																	</div>
																	<div class="help-block col-xs-12 col-sm-reset inline"> Error tip help! </div>
																</div>

																<div class="form-group has-success">
																	<label for="inputSuccess" class="col-xs-12 col-sm-3 control-label no-padding-right">Input with success</label>

																	<div class="col-xs-12 col-sm-5">
																		<span class="block input-icon input-icon-right">
																			<input type="text" id="inputSuccess" class="width-100">
																			<i class="icon-ok-sign"></i>
																		</span>
																	</div>
																	<div class="help-block col-xs-12 col-sm-reset inline">
																		Success tip help!
																	</div>
																</div>

																<div class="form-group has-info">
																	<label for="inputInfo" class="col-xs-12 col-sm-3 control-label no-padding-right">Input with info</label>

																	<div class="col-xs-12 col-sm-5">
																		<span class="block input-icon input-icon-right">
																			<input type="text" id="inputInfo" class="width-100">
																			<i class="icon-info-sign"></i>
																		</span>
																	</div>
																	<div class="help-block col-xs-12 col-sm-reset inline"> Info tip help! </div>
																</div>

																<div class="form-group">
																	<label for="inputError2" class="col-xs-12 col-sm-3 control-label no-padding-right">Input with error</label>

																	<div class="col-xs-12 col-sm-5">
																		<span class="input-icon block">
																			<input type="text" id="inputError2" class="width-100">
																			<i class="icon-remove-sign red"></i>
																		</span>
																	</div>
																	<div class="help-block col-xs-12 col-sm-reset inline"> Error tip help! </div>
																</div>
															</form>

															<form class="form-horizontal" id="validation-form" method="get" novalidate="novalidate">
																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Email Address:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<input type="email" name="email" id="email" class="col-xs-12 col-sm-6">
																		</div>
																	</div>
																</div>

																<div class="space-2"></div>

																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="password">Password:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<input type="password" name="password" id="password" class="col-xs-12 col-sm-4">
																		</div>
																	</div>
																</div>

																<div class="space-2"></div>

																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="password2">Confirm Password:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<input type="password" name="password2" id="password2" class="col-xs-12 col-sm-4">
																		</div>
																	</div>
																</div>

																<div class="hr hr-dotted"></div>

																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="name">Company Name:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<input type="text" id="name" name="name" class="col-xs-12 col-sm-5">
																		</div>
																	</div>
																</div>

																<div class="space-2"></div>

																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="phone">Phone Number:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="input-group">
																			<span class="input-group-addon">
																				<i class="icon-phone"></i>
																			</span>

																			<input type="tel" id="phone" name="phone">
																		</div>
																	</div>
																</div>

																<div class="space-2"></div>

																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="url">Company URL:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<input type="url" id="url" name="url" class="col-xs-12 col-sm-8">
																		</div>
																	</div>
																</div>

																<div class="hr hr-dotted"></div>

																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right">Subscribe to</label>

																	<div class="col-xs-12 col-sm-9">
																		<div>
																			<label>
																				<input name="subscription" value="1" type="checkbox" class="ace">
																				<span class="lbl"> Latest news and announcements</span>
																			</label>
																		</div>

																		<div>
																			<label>
																				<input name="subscription" value="2" type="checkbox" class="ace">
																				<span class="lbl"> Product offers and discounts</span>
																			</label>
																		</div>
																	</div>
																</div>

																<div class="space-2"></div>

																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right">Gender</label>

																	<div class="col-xs-12 col-sm-9">
																		<div>
																			<label class="blue">
																				<input name="gender" value="1" type="radio" class="ace">
																				<span class="lbl"> Male</span>
																			</label>
																		</div>

																		<div>
																			<label class="blue">
																				<input name="gender" value="2" type="radio" class="ace">
																				<span class="lbl"> Female</span>
																			</label>
																		</div>
																	</div>
																</div>

																<div class="hr hr-dotted"></div>

																<div class="space-2"></div>

																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="platform">Platform</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<select class="input-medium" id="platform" name="platform">
																				<option value="">------------------</option>
																				<option value="linux">Linux</option>
																				<option value="windows">Windows</option>
																				<option value="mac">Mac OS</option>
																				<option value="ios">iOS</option>
																				<option value="android">Android</option>
																			</select>
																		</div>
																	</div>
																</div>

																<div class="space-2"></div>

																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="comment">Comment</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<textarea class="input-xlarge" name="comment" id="comment"></textarea>
																		</div>
																	</div>
																</div>

																<div class="space-8"></div>

																<div class="form-group">
																	<div class="col-xs-12 col-sm-4 col-sm-offset-3">
																		<label>
																			<input name="agree" id="agree" type="checkbox" class="ace">
																			<span class="lbl"> I accept the policy</span>
																		</label>
																	</div>
																</div>
															</form>
														</div>

														<div class="step-pane" id="step2">
															<div class="row-fluid">
																<div class="alert alert-success">
																	<button type="button" class="close" data-dismiss="alert">
																		<i class="icon-remove"></i>
																	</button>

																	<strong>
																		<i class="icon-ok"></i>
																		Well done!
																	</strong>

																	You successfully read this important alert message.
																	<br>
																</div>

																<div class="alert alert-danger">
																	<button type="button" class="close" data-dismiss="alert">
																		<i class="icon-remove"></i>
																	</button>

																	<strong>
																		<i class="icon-remove"></i>
																		Oh snap!
																	</strong>

																	Change a few things up and try submitting again.
																	<br>
																</div>

																<div class="alert alert-warning">
																	<button type="button" class="close" data-dismiss="alert">
																		<i class="icon-remove"></i>
																	</button>
																	<strong>Warning!</strong>

																	Best check yo self, you're not looking too good.
																	<br>
																</div>

																<div class="alert alert-info">
																	<button type="button" class="close" data-dismiss="alert">
																		<i class="icon-remove"></i>
																	</button>
																	<strong>Heads up!</strong>

																	This alert needs your attention, but it's not super important.
																	<br>
																</div>
															</div>
														</div>

														<div class="step-pane" id="step3">
															<div class="center">
																<h3 class="blue lighter">This is step 3</h3>
															</div>
														</div>

														<div class="step-pane" id="step4">
															<div class="center">
																<h3 class="green">Congrats!</h3>
																Your product is ready to ship! Click finish to continue!
															</div>
														</div>
													</div>

													<hr>
													<div class="row-fluid wizard-actions">
														<button class="btn btn-prev" disabled="disabled">
															<i class="icon-arrow-left"></i>
															Prev
														</button>

														<button class="btn btn-success btn-next" data-last="Finish ">
															Next
															<i class="icon-arrow-right icon-on-right"></i>
														</button>
													</div>
												</div><!-- /widget-main -->
											</div><!-- /widget-body -->
										</div>
									</div>
								</div>

						
				<div id="modal-wizard" class="modal">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header" data-target="#modal-step-contents">
												<ul class="wizard-steps">
													<li data-target="#modal-step1" class="active">
														<span class="step">1</span>
														<span class="title">Validation states</span>
													</li>

													<li data-target="#modal-step2">
														<span class="step">2</span>
														<span class="title">Alerts</span>
													</li>

													<li data-target="#modal-step3">
														<span class="step">3</span>
														<span class="title">Payment Info</span>
													</li>

													<li data-target="#modal-step4">
														<span class="step">4</span>
														<span class="title">Other Info</span>
													</li>
												</ul>
											</div>

											<div class="modal-body step-content" id="modal-step-contents">
												<div class="step-pane active" id="modal-step1">
													<div class="center">
														<h4 class="blue">Step 1</h4>
													</div>
												</div>

												<div class="step-pane" id="modal-step2">
													<div class="center">
														<h4 class="blue">Step 2</h4>
													</div>
												</div>

												<div class="step-pane" id="modal-step3">
													<div class="center">
														<h4 class="blue">Step 3</h4>
													</div>
												</div>

												<div class="step-pane" id="modal-step4">
													<div class="center">
														<h4 class="blue">Step 4</h4>
													</div>
												</div>
											</div>

											<div class="modal-footer wizard-actions">
												<button class="btn btn-sm btn-prev" disabled="disabled">
													<i class="icon-arrow-left"></i>
													Prev
												</button>

												<button class="btn btn-success btn-sm btn-next" data-last="Finish ">
													Next
													<i class="icon-arrow-right icon-on-right"></i>
												</button>

												<button class="btn btn-danger btn-sm pull-left" data-dismiss="modal">
													<i class="icon-remove"></i>
													Cancel
												</button>
											</div>
										</div>
									</div>
								</div><!-- PAGE CONTENT ENDS -->					</div><!-- /.col -->
						</div>
            
            
            
            
            
            <g:form action="save" >
                <div class="dialog">
                  <table>
                        <tbody>

                            <tr class="prop">
                                <td valign="top" class="name">
                                  <h3><g:message code="datosPersonales" default="Datos Personales" /></h3>
                                </td>
                                <td
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nombre"><g:message code="persona.nombre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'nombre', 'errors')}">
                                <g:textField name="nombre" maxlength="64" value="${personaInstance?.nombre}" style="" onChange="conMayusculas(this)"/>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="apellidoPaterno"><g:message code="persona.apellidoPaterno" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'apellidoPaterno', 'errors')}">
                                    <g:textField name="apellidoPaterno" maxlength="64" value="${personaInstance?.apellidoPaterno}" onChange="conMayusculas(this)"/>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="apellidoMaterno"><g:message code="persona.apellidoMaterno" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'apellidoMaterno', 'errors')}">
                                    <g:textField name="apellidoMaterno" maxlength="64" value="${personaInstance?.apellidoMaterno}" onChange="conMayusculas(this)"/>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="estadoCivil"><g:message code="persona.estadoCivil" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'estadoCivil', 'errors')}">
                                    <g:select name="estadoCivil" from="${personaInstance.constraints.estadoCivil.inList}" value="${personaInstance?.estadoCivil}" valueMessagePrefix="persona.estadoCivil"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nivelEstudio"><g:message code="persona.nivelEstudio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'nivelEstudio', 'errors')}">
                                    <g:select name="nivelEstudio" from="${personaInstance.constraints.nivelEstudio.inList}" value="${personaInstance?.nivelEstudio}" valueMessagePrefix="persona.nivelEstudio"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="religionAnterior"><g:message code="persona.religionAnterior" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'religionAnterior', 'errors')}">
                                    <g:select name="religionAnterior" from="${personaInstance.constraints.religionAnterior.inList}" value="${personaInstance?.religionAnterior}" valueMessagePrefix="persona.religionAnterior"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tipoDeSangre"><g:message code="persona.tipoDeSangre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'tipoDeSangre', 'errors')}">
                                    <g:select name="tipoDeSangre" from="${personaInstance.constraints.tipoDeSangre.inList}" value="${personaInstance?.tipoDeSangre}" valueMessagePrefix="persona.tipoDeSangre"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sexo"><g:message code="persona.sexo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'sexo', 'errors')}">
                                    <g:select name="sexo" from="${personaInstance.constraints.sexo.inList}" value="${personaInstance?.sexo}" valueMessagePrefix="persona.sexo"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="enfermedades"><g:message code="persona.emfermedades" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'enfermedades', 'errors')}">
                            <g:textField name="enfermedades" maxlength="128" value="${personaInstance?.enfermedades}" style="width:300px;" onChange="conMayusculas(this)"/>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fechaNacimiento"><g:message code="persona.fechaNacimiento" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'fechaNacimiento', 'errors')}">
                                    <g:datePicker name="fechaNacimiento" precision="day" value="${personaInstance?.fechaNacimiento}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="correo"><g:message code="persona.correo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'correo', 'errors')}">
                                    <g:textField name="correo" value="${personaInstance?.correo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="phoneCasa"><g:message code="persona.phoneCasa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'phoneCasa', 'errors')}">
                                    <g:textField name="phoneCasa" value="${fieldValue(bean: personaInstance, field: 'phoneCasa')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="phoneCelular"><g:message code="persona.phoneCelular" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'phoneCelular', 'errors')}">
                                    <g:textField name="phoneCelular" value="${fieldValue(bean: personaInstance, field: 'phoneCelular')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="phoneTrabajo"><g:message code="persona.phoneTrabajo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'phoneTrabajo', 'errors')}">
                                    <g:textField name="phoneTrabajo" value="${fieldValue(bean: personaInstance, field: 'phoneTrabajo')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sabeLeer"><g:message code="persona.sabeLeer" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'sabeLeer', 'errors')}">
                                    <g:checkBox name="sabeLeer" value="${personaInstance?.sabeLeer}" />
                                </td>
                            </tr>

                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <h3><g:message code="persona.direccion" /></h3>
                                </td>
                                <td
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.pais"><g:message code="persona.direccion.pais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'direccion.pais', 'errors')}">
                                    <g:textField name="direccion.pais" maxlength="16" value="${personaInstance?.direccion?.pais}" onChange="conMayusculas(this)" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.estado"><g:message code="persona.direccion.estado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'direccion.estado', 'errors')}">
                                    <g:textField name="direccion.estado" maxlength="16" value="${personaInstance?.direccion?.estado}" onChange="conMayusculas(this)" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.municipio"><g:message code="persona.direccion.municipio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'direccion.municipio', 'errors')}">
                                    <g:textField name="direccion.municipio" maxlength="32" value="${personaInstance?.direccion?.municipio}" onChange="conMayusculas(this)" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.ciudad"><g:message code="persona.direccion.ciudad" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'direccion.ciudad', 'errors')}">
                                    <g:textField name="direccion.ciudad" maxlength="32" value="${personaInstance?.direccion?.ciudad}" onChange="conMayusculas(this)" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.ejido"><g:message code="persona.direccion.ejido" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'direccion.ejido', 'errors')}">
                                    <g:textField name="direccion.ejido" maxlength="32" value="${personaInstance?.direccion?.ejido}" onChange="conMayusculas(this)" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.colonia"><g:message code="persona.direccion.colonia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'direccion.colonia', 'errors')}">
                                    <g:textField name="direccion.colonia" maxlength="32" value="${personaInstance?.direccion?.colonia}" onChange="conMayusculas(this)" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.calle"><g:message code="persona.direccion.calle" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'direccion.calle', 'errors')}">
                                    <g:textField name="direccion.calle" maxlength="32" value="${personaInstance?.direccion?.calle}" onChange="conMayusculas(this)" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.numero"><g:message code="persona.direccion.numero" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personaInstance, field: 'direccion.numero', 'errors')}">
                                    <g:textField name="direccion.numero" maxlength="8" value="${personaInstance?.direccion?.numero}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="direccion.codigoPostal"><g:message code="persona.direccion.codigoPostal" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iglesiaInstance, field: 'direccion.codigoPostal', 'errors')}">
                                    <g:textField name="direccion.codigoPostal" maxlength="16" value="${personaInstance?.direccion?.codigoPostal}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        	</div>
        </div>

	<g:javascript>
		function conMayusculas(field) {
	            field.value = field.value.toUpperCase()
	          }
        jQuery(function($) {
				$('[data-rel=tooltip]').tooltip();
								$(".select2").css('width','200px');
				var $validation = true;
				$('#fuelux-wizard').ace_wizard().on('change' , function(e, info){
					if(info.step == 1 && $validation) {
						if(!$('#validation-form').valid()) return false;
					}
				}).on('finished', function(e) {
					bootbox.dialog({
						message: "Thank you! Your information was successfully saved!", 
						buttons: {
							"success" : {
								"label" : "OK",
								"className" : "btn-sm btn-primary"
							}
						}
					});
				}).on('stepclick', function(e){
					//return false;//prevent clicking on steps
				});
			
			
				$('#skip-validation').removeAttr('checked').on('click', function(){
					$validation = this.checked;
					if(this.checked) {
						$('#sample-form').hide();
						$('#validation-form').removeClass('hide');
					}
					else {
						$('#validation-form').addClass('hide');
						$('#sample-form').show();
					}
				});
			
			
			
				//documentation : http://docs.jquery.com/Plugins/Validation/validate
			
			
				$.mask.definitions['~']='[+-]';
				$('#phone').mask('(999) 999-9999');
			
				jQuery.validator.addMethod("phone", function (value, element) {
					return this.optional(element) || /^\(\d{3}\) \d{3}\-\d{4}( x\d{1,6})?$/.test(value);
				}, "Enter a valid phone number.");
			
				$('#validation-form').validate({
					errorElement: 'div',
					errorClass: 'help-block',
					focusInvalid: false,
					rules: {
						email: {
							required: true,
							email:true
						},
						password: {
							required: true,
							minlength: 5
						},
						password2: {
							required: true,
							minlength: 5,
							equalTo: "#password"
						},
						name: {
							required: true
						},
						phone: {
							required: true,
							phone: 'required'
						},
						url: {
							required: true,
							url: true
						},
						comment: {
							required: true
						},
						platform: {
							required: true
						},
						subscription: {
							required: true
						},
						gender: 'required',
						agree: 'required'
					},
			
					messages: {
						email: {
							required: "Please provide a valid email.",
							email: "Please provide a valid email."
						},
						password: {
							required: "Please specify a password.",
							minlength: "Please specify a secure password."
						},
						subscription: "Please choose at least one option",
						gender: "Please choose gender",
						agree: "Please accept our policy"
					},
			
					invalidHandler: function (event, validator) { //display error alert on form submit   
						$('.alert-danger', $('.login-form')).show();
					},
			
					highlight: function (e) {
						$(e).closest('.form-group').removeClass('has-info').addClass('has-error');
					},
			
					success: function (e) {
						$(e).closest('.form-group').removeClass('has-error').addClass('has-info');
						$(e).remove();
					},
			
					submitHandler: function (form) {
					},
					invalidHandler: function (form) {
					}
				});
				})
	</g:javascript>
       
        
        
    </body>
</html>
