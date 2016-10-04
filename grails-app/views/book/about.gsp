<!DOCTYPE html>
<html>
<head>
    <title>Welcome to my Bookshop</title>
    <link href="${resource(dir: 'css', file: 'app.css')}" type="text/css" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'bootstrap-theme.css')}" type="text/css" rel="stylesheet">
    <g:javascript library="bootstrap" />
    <g:javascript library="jquery-3.1.0.min" />
</head>
<body>
	
    <nav class="navbar navbar-fixed-top navbar-dark bg-inverse">
      <g:link class="navbar-brand" resource="book" action="index">Bookshop</g:link>
      <ul class="nav navbar-nav">
        <li class="nav-item active">
       		<g:link class="nav-link" resource="book" action="index">Home <span class="sr-only">(current)</span></g:link>		
        </li>
        <li class="nav-item">
        	<g:link class="nav-link" resource="book" action="about">About</g:link>
        </li>
      </ul>
    </nav>

  <div class="container">
  	  <div class="starter-template">
        <h1>My bookshop</h1>
      </div>
      
      <div class="container">
		<div class="panel panel-primary">
		  <div class="panel-heading">
		    <h3 class="panel-title">About</h3>
		  </div>
		  <div class="panel-body">
		    <g:formatDate date="${new Date()}" type="datetime" style="LONG" timeStyle="SHORT"/>
		  </div>
		</div>
	  </div>
  </div><!-- /.container -->
</body>
</html>