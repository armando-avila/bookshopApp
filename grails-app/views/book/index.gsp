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
        <h1>Welcome to my bookshop</h1>
      </div>
      
      <div class="container">
      	<div class="row">
		  <div class="col-md-12"><h4><g:link resource="book" action="create">New Book</g:link></h4></div>
		</div>
		<br/> 
		<div class="panel panel-default">
		  	<div class="panel-heading">
		  		<h3 class="panel-title">Book List</h3>
			</div>
		  
			<div class="panel-body">
	    		 
				    <g:if test="${numBooks > 0}">
					     <table class="table table-hover">
						    <thead>
						      <tr>
						        <th>Id</th>
						        <th>ISBN</th>
						        <th>Title</th>
						        <th>Author</th>
						        <th>Publisher</th>
						        <th>Language</th>
						      </tr>
						    </thead>
						    <tbody>
							    <g:each in="${books}" var="book">
								  <tr>
							      	<g:form controller="book" id="${book.id}">
							      	<td>${book.id}</td>
							      	<td>${book.isbn}</td>
							      	<td>${book.title}</td>
							      	<td>${book.author}</td>
							      	<td>${book.publisher}</td>
							      	<td>${book.language}</td>
							      	<td><g:actionSubmit action="read" value="Read" class="btn btn-primary"/></td>
							        <td><g:actionSubmit action="edit" value="Update" class="btn btn-warning"/></td>
							        <td><g:actionSubmit action="delete" value="Delete" onclick="return confirm('Are you sure?');" class="btn btn-danger"/></td>
							        </g:form>
							      </tr>
		                      	</g:each>
						    </tbody>
						  </table>
					</g:if>
					<g:else>
					     <div class="container">
							  <div class="row">
							    <div class="col-md-12 text-center">
							    	<span class="label label-default">No Books</span>
	            				</div>
							  </div>
						 </div>
					</g:else>
		  	</div>
		</div>
      </div>
      
    </div><!-- /.container -->

</body>
</html>