<html>
    <head>
        <title>Siscofe - <g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
        <g:javascript src="jquery-1.3.2.min.js" />
    </head>



    <body>
      <div id="page">
        <div id="spinner" class="spinner" style="display:none;">
          <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>

        <div id="topbar">
          <g:render template="/common/topbar" />
        </div>

        <div id="header">
          <g:render template="/common/header" />
        </div>
        
        <g:layoutBody />

<!--        <div id="grailsLogo"><a href="http://grails.org"><img src="${resource(dir:'images',file:'grails_logo.png')}" alt="Grails" border="0" /></a></div>-->

        
        <div id="footer">
          <g:render template="/common/footer" />
        </div>

      </div>
    </body>
</html>