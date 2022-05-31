<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Usuarios"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html>
<head>
<title>TicketSaved</title>
<!--Logo HEAD -->
<link rel="apple-touch-icon" sizes="180x180"
	href="img/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="16x16" href="img/Logo.jpg">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>



	<header>
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="inicio.jsp"><span>Ticket</span>Saved</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="conciertos.jsp">Conciertos</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<div class="dropdown">
						<button class="btn dropdown-toggle" type="button"
							data-toggle="dropdown">
							Mi Cuenta <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="perfil.jsp">Perfil</a></li>
							<li><a href="index.jsp">Cerrar sesión </a></li>
						</ul>
					</div>
				</ul>
			</div>
		</nav>
	</header>
	<div class="embed-responsive embed-responsive-16by9">
		<video loop class="embed-responsive-item" src="img/Inicio.mp4"
			autoplay="true"></video>
	</div>
</body>
</html>