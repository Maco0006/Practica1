<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

	<head>
		<!-- configuración-->
		<title>Registro</title>
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
			 /* Remove the navbar's default margin-bottom and rounded borders */ 
    		.navbar {
      			margin-bottom: 0;
      			border-radius: 0;
    		}
    		
    		.row.content {height: 525px;}
    		
    		 /* Set gray background color and 100% height */
    		.sidenav {
      			padding-top: 20px;
      			background-color: #f1f1f1;
      			height: 100%;
    		}
    		
		    /* Add a gray background color and some padding to the footer */
		    footer {
      			background-color: #555;
      			color: white;
     			padding: 15px;
		    }
		    th, td{
		    	padding: 10px;
		    }
	 	</style>
	  
	  
	</head>

	
	<body onload="<c:if test="${err!=null}"> alert('${err}') </c:if>">
		
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
		    </div>
		  </div>
		</nav>

		<div class="container-fluid text-center">
			<div class="row content">
				<div class="col-sm-2 sidenav">
		    	</div>
		    	<div class="col-sm-8 text-center">
					<form class="form-horizontal" action="registro" method=post>
					<h2>Formulario de registro:</h2><br/>
						<!-- Email -->
					    <div class="form-group">
	
					        <label class="control-label col-xs-3">Email:</label>				
					        <div class="col-xs-6">
		            			<input type="email" class="form-control" placeholder="Email" name=email id="inputEmail" required>  
					        </div>
					        <span id="msg2"> </span>
					    </div>
	
					    <!-- Contraseña -->
					    <div class="form-group">
					        <label class="control-label col-xs-3">Contraseña:</label>
					        <div class="col-xs-6">
					            <input type="password" class="form-control" placeholder="Password" name=pass id="inputPassword" required>
					        </div>
					    </div>
					    <!-- Nombre -->
					    <div class="form-group">
					        <label class="control-label col-xs-3">Nombre:</label>        
					        <div class="col-xs-6">
					            <input type="text" class="form-control" placeholder="Nombre" name=name id="inputName" required>
					        </div>
					       <span id="msg1"> </span>
					    </div>
					    <!-- Apellidos -->
					    <div class="form-group">
					        <label class="control-label col-xs-3">Apellidos:</label>
					        <div class="col-xs-6">
					            <input type="text" class="form-control" placeholder="Apellidos" name=apellidos id="inputApellidos" required>
					        </div>
					    </div>
					    <!-- Telefono -->
					    <div class="form-group">
					        <label class="control-label col-xs-3" >Telefono:</label>
					        <div class="col-xs-6">
					        	<input type="tel" class="form-control" placeholder="Telefono" name=telf id="inputTelefono" required >
					        </div>
					    </div>
					    <!-- Direccion -->
					    <div class="form-group">
					        <label class="control-label col-xs-3">Dirección:</label>
					        <div class="col-xs-7">
					            <textarea rows="1" class="form-control"  placeholder="C/ o Avd." name=dir id="inputDireccion" required></textarea>
					        </div>
					    </div>
					    <br>
					    <div class="form-group">
					        <div class="col-xs-offset-3 col-xs-6">
					        	<!-- Boton para efecutar el formulario -->
					            <input type="submit" class="btn btn-primary" value="Enviar">
					            <!-- Boton para limpiar el formulario -->
					            <input type="reset" class="btn btn-default" value="Limpiar">
					        </div>
					    </div>
					</form>
				</div>
				<div class="col-sm-2 sidenav">
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