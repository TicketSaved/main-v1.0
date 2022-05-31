<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="com.model.Usuarios"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Métodos de pago | En Construcción</title>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!--Logo HEAD -->
<link rel="icon" type="image/x-icon" href="img/advertencia.png">
<!--FIN Logo HEAD -->

</head>

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

<body>

	<div class="container">
		<h2>Selecciona tu método de pago</h2>
		<p>Haga clic en el panel plegable para abrirlo y cerrarlo.</p>
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" href="#collapse1">Tarjeta de Crédito
							o Débito</a>
					</h4>
				</div>
				<div id="collapse1" class="panel-collapse collapse">
					<form class="was-validated" action="pagoexito.jsp">
						<div class="mb-3 mt-3 panel-footer">
							<label for="tarjetanum" class="form-label">Nº de tarjeta</label>
							<input type="text" class="form-control" id="tarjetanum"
								placeholder="Introduzca el número de la tarjeta" required
								pattern="[0-9]{16}" maxlength="16">
						</div>
						<div class="mb-3 mt-3 panel-footer">
							<label for="tarjetanom" class="form-label">Titular de la
								tarjeta</label> <input type="text" class="form-control" id="tarjetanom"
								placeholder="Nombre titular de la tarjeta" required
								pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]{1,20}" maxlength="20">
						</div>
						<div class="mb-3 mt-3 panel-footer">
							<label for="tarjeta1" class="form-label">Código de
								seguridad</label> <input type="text" class="form-control" id="tarjeta"
								required placeholder="Código de seguridad de la tarjeta"
								pattern="[0-9]{3}" maxlength="3">
						</div>
						<input type="submit" class="btn" value="Pagar Ahora">
					</form>
				</div>
			</div>
		</div>

		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" href="#collapse2">PayPal</a>
					</h4>
				</div>
				<div id="collapse2" class="panel-collapse collapse">
					<form class="was-validated" action="pagoexito.jsp">
						<div class="mb-3 mt-3 panel-footer">
							<label for="tarjetanum" class="form-label">Nº de tarjeta</label>
							<input type="text" class="form-control" id="tarjetanum"
								placeholder="Introduzca el número de la tarjeta" required
								pattern="[0-9]{16}" maxlength="16">
						</div>
						<div class="mb-3 mt-3 panel-footer">
							<label for="tarjetanom" class="form-label">Titular de la
								tarjeta</label> <input type="text" class="form-control" id="tarjetanom"
								placeholder="Nombre titular de la tarjeta" required
								pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]{1,20}" maxlength="20">
						</div>
						<div class="mb-3 mt-3 panel-footer">
							<label for="tarjeta1" class="form-label">Código de
								seguridad</label> <input type="text" class="form-control" id="tarjeta"
								required placeholder="Código de seguridad de la tarjeta"
								pattern="[0-9]{3}" maxlength="3">
						</div>
						<input type="submit" class="btn" value="Pagar Ahora">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

</html>