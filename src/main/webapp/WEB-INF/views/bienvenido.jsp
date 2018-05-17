<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
	<head>
		<!-- configuración-->
		<title>Perfil</title>
		<meta charset="utf-8">
		<!-- Para que se vea en dispositivos moviles -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Estilos de Boostrap -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

		
		<!--  JQuery -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	
 		<style>
		    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
		    .navbar {
	      		margin-bottom: 0;
	      		border-radius: 0;
		    }
		    .row.content {height: 525px;}
		    
		    .sidenav {
	      		padding-top: 20px;
	      		background-color: #f1f1f1;
	      		height: 100%;
	    	}  
		    footer {
	      		background-color: #555;
	      		color: white;
	     		padding: 15px;
		    }
		</style>

	</head>
	
	<body onload="<c:if test="${err!=null}"> alert('${err}') </c:if>" >
		
		
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
		        <li class="active"><a href="productos">Productos</a></li>
		      </ul>
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="mostrarCarrito"><span class="glyphicon glyphicon-shopping-cart"></span> Carrito</a></li>
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
					<p>
						<h3>Te damos la bienvenida, <c:out value = "${usuario.nombre} ${usuario.apellidos}" />.
						<br/>
						<br/>
						Ahora podrás visitar nuestro catálogo de productos.</h3>
						<br/>
						Si deseas cambiar tus datos, rellena los siguientes campos:
					</p>
					
					<form class="form-horizontal" method="post" action="cambiar">			
						<!-- Nombre -->
						<div class="form-group">
							  	<label class="control-label col-xs-4">Nombre</label>
							  	<div class="col-xs-3">${usuario.nombre}</div>
							  	<div class="col-xs-3">
							  			<input type="text" class="form-control" placeholder="Nombre" name=name id="inputName">
							    </div>
							    <span id="msg1" name="msg1"> </span>
						</div>
						<!-- Apellidos -->
						<div class="form-group">
							<label class="control-label col-xs-4">Apellidos</label>
							<div class="col-xs-3">${usuario.apellidos}</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" id="apellidos" name="apellidos" placeholder="Apellidos" >				    
							</div>
						</div>
						<!-- Telefono -->
						<div class="form-group">
							<label class="control-label col-xs-4">Tel&eacute;fono</label>
							<div class="col-xs-3">${usuario.telf}</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" id="telf" name="telf" placeholder="Tel&eacute;fono">
							</div>
						</div>
						<!-- Contraseña -->
						<div class="form-group">
							<label class="control-label col-xs-4">Contrase&ntilde;a</label>
							<div class="col-xs-3">*****</div>
							<div class="col-xs-3">
								<input class="form-control" id="pass" name="pass" type="password"  placeholder="Contraseña">
							</div>
						</div>
						<!-- Email -->
						<div class="form-group">  
							<label class="control-label col-xs-4">Email</label>
							<div class="col-xs-3">${usuario.email}</div>
							<div class="col-xs-3">
						    	<input type="email" class="form-control" placeholder="Email" name=email id="inputEmail">
							</div>
							<span id="msg2" name="msg2"> </span>
						</div>
						<!-- Direccion -->
						<div class="form-group">  
							<label class="control-label col-xs-4">Direcci&oacute;n</label>
							<div class="col-xs-3">${usuario.direccion}</div>
							<div class="col-xs-4">
								<input type="text" class="form-control" id="dir" name="dir" placeholder="Direcci&oacute;n">
							</div>
						</div>
						
						<div class="form-group">
					        <div class="col-xs-offset-3 col-xs-6">
								<button type="submit" class="btn btn-primary">Cambiar</button>
							</div>
						</div>
				</form>
			</div>
			<div class="col-sm-1 sidenav">
			</div>
		</div>
	</div>

		
		<footer class="container-fluid text-center">
  			<p>Online Store Copyright &copy;</p>  
		</footer>
	    
	    <!-- Uso de AJAX para validar si existe ya un nombre de usuario mediante jQuery -->
		<script type="text/javascript">
			$('#inputName').blur(function(){
				$("#msg1").load('http://localhost:8080/practica1/nameDisponible',"name="+$('#inputName').val());
			})
			
			$('#inputEmail').blur(function(){
				$("#msg2").load('http://localhost:8080/practica1/emailDisponible',"email="+$('#inputEmail').val());
			})
		</script>
	</body>
</html>
