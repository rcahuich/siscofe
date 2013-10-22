<html>
	<head>
		<title>Error 500</title>
		<meta name="layout" content="main" />
	</head>
	<body>
		<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<div class="error-container">
									<div class="well">
										<h1 class="grey lighter smaller">
											<span class="blue bigger-125">
												<i class="icon-random"></i>
												500
											</span>
											Algo salio mal
										</h1>

										<hr />
										<h3 class="lighter smaller">
											Pero estamos trabajando
											<i class="icon-wrench icon-animated-wrench bigger-125"></i>
											para solucionarlo
										</h3>

										<div class="space"></div>

										<div>
											<h4 class="lighter smaller">Mientras tanto, intenta con lo siguiente</h4>

											<ul class="list-unstyled spaced inline bigger-110 margin-15">
												<li>
													<i class="icon-hand-right blue"></i>
													Lea las preguntas frecuetes (FAQ)
												</li>

												<li>
													<i class="icon-hand-right blue"></i>
													Danos más información de como se produjo este error
												</li>
											</ul>
										</div>

										<hr />
										<div class="space"></div>

										<div class="center">

											<a href="${createLinkTo(dir:'/')}" class="btn btn-primary">
												<i class="icon-dashboard"></i>
												Dashboard
											</a>
										</div>
									</div>
								</div>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
						
						
						
						<h2>Error Details</h2>

  	<div class="message">
		<strong>Error ${request.'javax.servlet.error.status_code'}:</strong> ${request.'javax.servlet.error.message'.encodeAsHTML()}<br/>
		<strong>Servlet:</strong> ${request.'javax.servlet.error.servlet_name'}<br/>
		<strong>URI:</strong> ${request.'javax.servlet.error.request_uri'}<br/>
		<g:if test="${exception}">
	  		<strong>Exception Message:</strong> ${exception.message?.encodeAsHTML()} <br />
	  		<strong>Caused by:</strong> ${exception.cause?.message?.encodeAsHTML()} <br />
	  		<strong>Class:</strong> ${exception.className} <br />
	  		<strong>At Line:</strong> [${exception.lineNumber}] <br />
	  		<strong>Code Snippet:</strong><br />
	  		<div class="snippet">
	  			<g:each var="cs" in="${exception.codeSnippet}">
	  				${cs?.encodeAsHTML()}<br />
	  			</g:each>
	  		</div>
		</g:if>
  	</div>
	<g:if test="${exception}">
	    <h2>Stack Trace</h2>
	    <div class="stack">
	      <pre><g:each in="${exception.stackTraceLines}">${it.encodeAsHTML()}<br/></g:each></pre>
	    </div>
	</g:if>
		
	</body>
</html>