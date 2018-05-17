<!-- Configuracion jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="es">
	<head>
		<!-- Configuracion pagina -->
		<title>Administraci&oacute;n</title>
  		<meta charset="utf-8">
  		<!-- Configuracion para moviles -->
  		<meta name="viewport" content="width=device-width, initial-scale=1">
  		<!-- Librerias de estilos Bootstrap -->
  		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  		<!-- Estilos -->
  		<style>
    		/* Remove the navbar's default margin-bottom and rounded borders */ 
    		.navbar {
      			margin-bottom: 0;
      			border-radius: 0;
    		}
    		
    		/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    		.row.content {height: 525px;}
    
    		/* Set gray background color and 100% height */
    		.sidenav {
      			padding-top: 20px;
      			background-color: #f1f1f1;
      			height: 100%;
    		}
    
    		/* Set black background color, white text and some padding */
    		footer {
      			background-color: #555;
      			color: white;
     			padding: 15px;
    		}
    		th {
    			text-align: center;
    		}
    		
    		/* On small screens, set height to 'auto' for sidenav and grid */
   			@media screen and (max-width: 767px) {
      			.sidenav {
        			height: auto;
        			padding: 15px;
      			}
      			.row.content {height:auto;} 
    		}
		</style>
		<link rel="stylesheet" type="text/css" href="resources/estilos.css">
	</head>
	
	<body>

		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
		    	<div class="navbar-header">
		      		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
		        	<span class="icon-bar"></span>
		        	<span class="icon-bar"></span>
		        	<span class="icon-bar"></span>                        
		      		</button>
		      		<a class="navbar-brand" href="index"><img src="resources/img/logo.png" width="25" height="25" ></a>
		    	</div>
		    	<div class="collapse navbar-collapse" id="myNavbar">
		      		<ul class="nav navbar-nav">
		        		<li class="active"><a href="index">Inicio</a></li>
		      		</ul>
		      		<ul class="nav navbar-nav navbar-right">
		        		<li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Salir</a></li>
		      		</ul>
		    	</div>
			</div>
		</nav>
		
		<div class="container-fluid text-center">
			<div class="row content">
				<div class="col-sm-1 sidenav">
				</div>
				<div class="col-sm-10 text-center">
					<h2> Administración </h2>
					<p> Datos de usuarios registrados en el sistema. </p>
			    	
			    	<table class="table table-striped">
			    		<h3>Datos de Usuarios</h3>
    					<thead>
      						<tr>
        						<th>Nombre</th>
				            	<th>E-mail</th>
				            	<th>Apellidos</th>
				            	<th>Tel&eacute;fono</th>
				            	<th>Direcci&oacute;n</th>
				            	<th>Administrador</th>
      						</tr>
      					</thead>
      					<tbody>
      						<c:forEach items="${listaUsuario}" var="n">
      						<tr>
       							<td>${n.getNombre()}</td>
       							<td>${n.getApellidos()}</td>
							 	<td>${n.getEmail()}</td>
							 	<td>${n.telf}</td>
							 	<td>${n.direccion}</td>
							 	<td>${n.admin}</td>
       						</tr>
							</c:forEach>
			    		</tbody>
			    	</table>
				</div>
				<div class="col-sm-1 sidenav">
				</div>
			</div>
		</div>
		
		<footer class="container-fluid text-center">
  			<p>Online Store Copyright &copy;</p>  
		</footer>
		
	</body>
</html>