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
        
        <link type="text/css" href="menu.css" rel="stylesheet" />
		<script type="text/javascript" src="jquery.js"></script>
		<script type="text/javascript" src="menu.js"></script>
		<style>
          body {
            padding-top: 30px;
            padding-bottom: 20px;
          }

          @media (min-width: 1200px) {
            .container {
              max-width: 1040px;
            }
          }
        </style>
    </head>
    <body>
        <div id="header">
          <g:render template="/common/header" />
        </div>
      
      <div id="page">
        
        <div id="spinner" class="spinner" style="display:none;">
          <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        
        <g:layoutBody />
<!--        <div id="grailsLogo"><a href="http://grails.org"><img src="${resource(dir:'images',file:'grails_logo.png')}" alt="Grails" border="0" /></a></div>-->

        <div id="footer">
          <g:render template="/common/footer" />
        </div>

      </div>
      	<g:javascript library="application"/>
        <g:javascript library="bootstrap3"/>
        <r:layoutResources />
    </body>
</html>