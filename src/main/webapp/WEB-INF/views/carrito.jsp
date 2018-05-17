<!-- Configuracion jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="es">
	<head>
		<!-- Configuracion pagina -->
		<title>Carrito</title>
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
    		.row.content {height: 525px; padding: 10px;}
    
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
    
    		/* On small screens, set height to 'auto' for sidenav and grid */
   			@media screen and (max-width: 767px) {
      			.sidenav {
        			height: auto;
        			padding: 15px;
      			}
      			.row.content {height:auto;} 
    		}
		</style>
		  
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
		        <li class="active"><a href="productos">Productos</a></li>
		      </ul>
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="productos"><span class="glyphicon glyphicon-shopping-cart"></span> Seguir Comprando</a></li>
		        <li><a href="perfil"><span class="glyphicon glyphicon-user"></span> Perfil</a></li>
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
					<h2>Resumen de compra</h2>
					
					<p>Contenido del carrito:</p>
					
					<table class="table table-bordered table-hover">
		    		    <thead>
					        <tr>
					            <th>Nombre</th>
					            <th>Descripcion</th>
					            <th>Precio (Euros)</th>
					            <th>Cantidad</th>
					            <th>Opciones</th>
					        </tr>
					    </thead>
					    <tbody>
						    <c:forEach items="${lista}" var="n">
							 <tr>
							 	<td>${n.nombre}</td>
							 	<td>${n.concepto}</td>
							 	<td>${n.importe}</td>
							 	<td>${n.unidades}</td>
							 	<td>
							 		<a href="eliminar?name=${n.id}" 
									   class="btn btn-danger" role="button">
									   Eliminar
									</a>
							 	</td>
							 </tr>
							</c:forEach>
							<tr>
								<td colspan="2" >Total</td>
								<td> <c:out value =  "${total}" />	</td>
								<td  colspan="2">
									
									<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_top">
									<input type="hidden" name="cmd" value="_s-xclick">
									<input type="hidden" name="hosted_button_id" value="5SGZMTDDRWRNQ">
									<input type="hidden" name="lc" value="ES">
									<input type="hidden" name="item_name" value="buttonPaypal">
									<input type="hidden" name="item_number" value="buttonPaypal">
									<input type="hidden" name="amount" value="${total}">
									<input type="hidden" name="currency_code" value="EUR">
									<input type="hidden" name="button_subtype" value="services">
									<input type="hidden" name="no_note" value="0">
									<input type="hidden" name="cn" value="Añadir instrucciones especiales para el vendedor:">
									<input type="hidden" name="no_shipping" value="2">
									<input type="hidden" name="rm" value="1">
									<input type="hidden" name="return" value="http://localhost:8080/practica1/fin">
									<input type="hidden" name="cancel_return" value="http://localhost:8080/practica1/perfil">
									<input type="image" src="https://www.sandbox.paypal.com/es_ES/ES/i/btn/btn_buynow_LG.gif" border="0" name="submit" alt="PayPal, la forma rápida y segura de pagar en Internet.">
									<img alt="" border="0" src="https://www.sandbox.paypal.com/es_ES/i/scr/pixel.gif" width="1" height="1">
									</form>
								</td>
							</tr>
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