<!DOCTYPE html>
<html lang="es">
    <head>
    	<meta charset="utf-8" />
		<title><g:layoutTitle default="..." /> - Siscofe</title>
		<link rel="shortcut icon" href="${resource(dir:'images',file:'favicon-Siscofe.ico')}" type="image/x-icon" />
		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!--basic styles-->

		<link href="${resource(dir: 'css-ace', file: 'bootstrap.min.css')}" rel="stylesheet" />
		<link rel="stylesheet" href="${resource(dir: 'css-ace', file: 'font-awesome.min.css')}" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="${resource(dir: 'css-ace', file: 'font-awesome-ie7.min.css')}" />
		<![endif]-->

		<!--page specific plugin styles-->

		<!--fonts-->

		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

		<!--ace styles-->

		<link rel="stylesheet" href="${resource(dir: 'css-ace', file: 'ace.min.css')}" />
		<link rel="stylesheet" href="${resource(dir: 'css-ace', file: 'ace-rtl.min.css')}" />
		<link rel="stylesheet" href="${resource(dir: 'css-ace', file: 'ace-skins.min.css')}" />
		
		<script src="${resource(dir: 'js', file: 'ace-extra.min.js')}"></script>
		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="${resource(dir: 'css-ace', file: 'ace-ie.min.css')}" />
		<![endif]-->

		<!--[if lt IE 9]>
		<script src="${resource(dir: 'js', file: 'html5shiv.js')}"></script>
		<script src="${resource(dir: 'js', file: 'respond.min.js')}"></script>
		<![endif]-->

		<!--inline styles related to this page-->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<style type="text/css">
        	.navbar-text {
				margin-bottom: 0px;
			}
        </style>
    
    </head>
    <body>

	    <g:render template="/common/header" />
	    
	    <div class="main-container-inner">
	    	<g:render template="/common/paneldash" />
	    	<div class="main-content">
	    		<g:render template="/common/breadcrumbs" />
	    		
	    		<div class="page-content">
	    			<g:layoutBody />		
	    		</div>
	    	</div>
	    </div>
		
		<!--[if !IE]>-->
			<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
		<!--<![endif]-->
		<!--[if IE]>
        	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <![endif]-->
		<!--[if !IE]>-->
			<script type="text/javascript">
				window.jQuery || document.write("<script src='${resource(dir: 'js', file: 'jquery-2.0.3.min.js')}'>"+"<"+"/script>");
			</script>
		<!--<![endif]-->
		<!--[if IE]>
	        <script type="text/javascript">
	            window.jQuery || document.write("<script src='${resource(dir: 'js', file: 'jquery-1.10.2.min.js')}'>"+"<"+"/script>");
	        </script>
        <![endif]-->
		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='${resource(dir: 'js', file: 'jquery.mobile.custom.min.js')}'>"+"<"+"/script>");
		</script>
		<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
		<script src="${resource(dir: 'js', file: 'typeahead-bs2.min.js')}"></script>


		<!--page specific plugin scripts-->

		<!--[if lte IE 8]>
		  <script src="${resource(dir: 'js', file: 'excanvas.min.js')}"></script>
		<![endif]-->
	
        <g:javascript library="ace"/>
        <r:layoutResources />
    </body>
</html>