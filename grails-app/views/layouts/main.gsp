<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<html>
    <head>
        <title><g:layoutTitle default="..." /> - Siscofe</title>
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon-Siscofe.ico')}" type="image/x-icon" />
        
        <!-- Styles -->
        <link rel="stylesheet" href="${resource(dir: 'css/bootstrap3', file: 'bootstrap.css')}" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Asap' rel='stylesheet' type='text/css'>
        
        <g:javascript src="bootstrap3/jquery.js" />
        <r:layoutResources /> 
		<g:layoutHead/>
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <g:javascript src="bootstrap3/html5shiv.js" />
          <g:javascript src="bootstrap3/respond.min.js" />
        <![endif]-->

		<style>
			html,
	        body {
	          height: 100%;
	          padding-top: 35px;
	        }
			#wrap {
			  min-height: 100%;
			  height: auto !important;
			  height: 100%;
			  /* Negative indent footer by its height */
			  margin: 0 auto -60px;
			  /* Pad bottom by footer height */
			  padding: 0 0 60px;
			}
			.container {
			  width: auto;
			  max-width: 1040px;
			  padding: 0 15px;
			}
			#footer {
			  height: 60px;
			  background-color: #f5f5f5;
			  margin-top: 20px;
			  padding: 15px;
			}
			#footer .container {
			  padding-left: 15px;
			  padding-right: 15px;
			}
        </style>
    </head>
    <body>
	    <div id="wrap">
	        <div class="container">
	          <g:render template="/common/header" />
	        
	          <g:layoutBody />
	        
	          
	        </div>
		</div>
		
		<g:render template="/common/footer" />
		
      	<g:javascript library="application"/>
        <g:javascript library="bootstrap3"/>
        <r:layoutResources />
    </body>
</html>