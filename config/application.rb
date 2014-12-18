<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%= "Socialbeam" %></title>
   <!-- Javascripts
    ================================================== -->
   <%= javascript_include_tag :all %>
   <!-- Stylesheets
    ================================================== -->
    <%= stylesheet_link_tag    "application" %>
    <%= csrf_meta_tags %>

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
    <![endif]-->
  </head>
  <body>

    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-target=".nav-collapse" data-toggle="collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">Socialbeam</a>
          <div class="container nav-collapse">
            <ul class="nav">
              <li><%= link_to "Home", ""  %></li>
              <li><%= link_to "My Account", ""  %></li>
              <li><%= link_to "Settings", ""  %></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container">
        <div class="row">
        <div class="span3">
            <div class="well sidebar-nav">
              <h3>Sidebar</h3>
              <ul class="nav nav-list">
                <li class="nav-header">Beamer</li>
                <li><%= link_to "Home", ""  %></li>
                <li><%= link_to "Profile", ""  %></li>
                <li><%= link_to "Messaging", ""  %></li>
              </ul>
            </div><!--/.well -->
          </div><!--/span-->
          <div class="span9">
             <%= yield %>
          </div>
        </div><!--/row-->

      <footer>
        <p>&copy; Socialbeam 2012</p>
      </footer>

    </div> <!-- /container -->


  </body>
</html>
