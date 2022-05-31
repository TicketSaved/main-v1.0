<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.model.Usuarios"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Perfil</title>

<meta http-equiv="Content-Type" content="text/html" charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!--Logo HEAD -->
<link rel="apple-touch-icon" sizes="180x180"
	href="img/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="16x16" href="img/Logo.jpg">
<!--FIN Logo HEAD -->

</head>

<body>
	<header>
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="inicio.jsp">TicketSaved</a>
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

<!-- Cogemos los atributos de la sesioón iniciada -->
	<%
	HttpSession misesion = request.getSession();
	Usuarios miUsu = (Usuarios) misesion.getAttribute("objUsu");
	String sDni = miUsu.getDni();
	String sEmail = miUsu.getEmail();
	String sContra = miUsu.getContra();
	String sNombre = miUsu.getNombre();
	String sApellido1 = miUsu.getApellido1();
	%>

	<div class="align-items-center text-center">
		<h1>MI PERFIL</h1>
	</div>
	<hr>
	<form action="ServletForm" method="POST"
		class=" justify-content-center mb-3">
		<div class=" justify-content-center">
			<div class="form-group col-xs-2">
				<label for="usr">DNI:</label> <input type="text"
					class="form-control" name="DNIUpdate" value=<%=sDni%>>
			</div>

			<div class="form-group col-xs-2">
				<label for="usr">Correo Electrónico:</label> <input type="text"
					class="form-control" name="emailUpdate" value=<%=sEmail%>>
			</div>

			<div class="form-group col-xs-3 ">
				<label>Contraseña:</label> <input type="password"
					class="form-control" name="contraUpdate" value=<%=sContra%>>
			</div>

			<div class="form-group col-xs-3 ">
				<label>Nombre:</label> <input type="text" class="form-control"
					name="nombreUpdate" value=<%=sNombre%>>
			</div>


			<div class="form-group col-xs-2 ">
				<label for="usr">Apellido 1:</label> <input type="text"
					class="form-control" name="apellido1Update" value=<%=sApellido1%>>
			</div>

			<input type="submit" class="btn" value="Actualizar">
		</div>
	</form>


</body>

</html>