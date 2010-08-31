<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>

    <body>
      <div id="page">
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>

      <!--        Llamando al Topbar-->
        <div id="header">
          <h1>Sistema de Control de Feligresia de la IASD</h1>
        </div>

        <div id="content">
          <g:layoutBody />
        </div>

        <div id="sidebar">
          <g:render template="/common/buddies" />
        </div>

        

<!--        <div id="grailsLogo"><a href="http://grails.org"><img src="${resource(dir:'images',file:'grails_logo.png')}" alt="Grails" border="0" /></a></div>-->
        <g:layoutBody />

        <div id="footer">
          <g:render template="/common/footer" />
        </div>
      </div>
    </body>
</html>