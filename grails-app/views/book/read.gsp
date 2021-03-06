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

      <div class="starter-template text-left">
        <h1>Read Book</h1>
      </div>
      
      <g:form controller="book" action="index">
	      <div class="container">
	       <div class="row">
	       	  <div class="col-md-6">
					<div class="panel panel-default">
					  	<div class="panel-heading">
					  		<h3 class="panel-title">Book information:</h3>
						</div>
						<div class="panel-body">
							<div class="container">
							  <div class="row">
							    <div class="col-md-2">
							    	<label>ISBN: </label><br/>
	            					<g:textField class="form-control" name="isbn" value="${book.isbn}" disabled="true"/><br/>
	            				</div>
							  </div>
							  <div class="row">
							    <div class="col-md-4">
							    	<label>Title: </label><br/>
	            					<g:textField class="form-control" name="title" value="${book.title}" disabled="true"/><br/>
	            				</div>
							  </div>
							  <div class="row">
							    <div class="col-md-4">
							    	<label>Author: </label><br/>
	            					<g:textField class="form-control" name="author" value="${book.author}" disabled="true"/><br/>
	            				</div>
							  </div>
							  <div class="row">
							    <div class="col-md-4">
							    	<label>Publisher: </label><br/>
	            					<g:textField class="form-control" name="publisher" value="${book.publisher}" disabled="true"/><br/>
	            				</div>
							  </div>
							  <div class="row">
							    <div class="col-md-2">
							    	<label>Language: </label><br/>
	            					<g:select class="form-control" name="language" from="${['Spanish', 'English', 'French']}" noSelection="['':'-Choose language-']" value="${book.language}"  disabled="true"/><br/>
	            				</div>
							  </div>
							  <div class="row">
							  	<div class="col-md-2">
							  		<g:actionSubmit class="btn btn-primary" value="Accept"/>
							  	</div>
							  </div>
							</div>
						</div>
					</div>
				</div>
		   </div>
    	  </div>
    	</g:form>
  </div><!-- /.container -->

</body>
</html>