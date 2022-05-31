<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>TicketSaved</title>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>


<link rel="apple-touch-icon" sizes="180x180"
	href="img/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="16x16" href="img/Logo.jpg">

<style type="text/css">
a:link, a:visited, a:active {
	text-decoration: none;
}
</style>

</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand">TicketSaved</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link disabled"
						aria-current="page" href="conciertos.html">Conciertos</a></li>
					<li class="nav-item"></li>
				</ul>
			</div>
		</div>
	</nav>

	<br>
	<br>
	<div class="container mt-3">
		<h2>
			Registrate en TicketSaved o <a href="index.jsp">Inicia sesión</a>.
		</h2>
		<br>
		<form action="ServletForm" method="POST" class="was-validated">
			<!-- Multiple addons / help text -->
			<div class="input-group mb-3">
				<span class="input-group-text">DNI</span> <input type="text"
					class="form-control  w-25" name="DNI" required
					pattern="[0-9]{8}[A-Z]{1}"  maxlength="9">
				<div class="invalid-feedback">Rellena el DNI correctamente.</div>
				<div class="valid-feedback">DNI válido.</div>
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text">Nombre</span> <input type="text"
					class="form-control" name="Nombre" required
					pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]{1,20}" minlenght="1" maxlength="20">
				<div class="invalid-feedback">Rellena el usuario
					correctamente.</div>
				<div class="valid-feedback">Usuario válido.</div>
			</div>

			<div class="input-group mb-3">
				<span class="input-group-text">Telefono</span> <input type="number"
					class="form-control" name="Telefono" required pattern="[0-9]{9}" maxlength="9">
				<div class="invalid-feedback">Rellena el Telefono
					correctamente.</div>
				<div class="valid-feedback">Telefono válido.</div>
			</div>

			<div class="input-group mb-3">
				<span class="input-group-text">Apellido 1</span> <input type="text"
					class="form-control" name="Apellido1"
					placeholder="Introduzca su apellido 1" required
					pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]{1,20}" minlenght="1" maxlength="20">
				<div class="invalid-feedback">Rellena el apellido 1
					correctamente.</div>
				<div class="valid-feedback">Apellido 1 válido.</div>
			</div>


			<div class="input-group mb-3">
				<span class="input-group-text">Apellido 2</span> <input type="text"
					class="form-control" name="Apellido2"
					placeholder="Introduzca su apellido 2" required
					pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]{2,20}" minlenght="1" maxlength="20">
				<div class="invalid-feedback">Rellena el apellido 2
					correctamente.</div>
				<div class="valid-feedback">Apellido 2 válido.</div>
			</div>

			<div class="input-group mb-3">
				<span class="input-group-text">Correo Electronico</span> <input
					type="text" class="form-control" name="emailAlta"
					placeholder="Introduzca un correo electrónico" required
					pattern="^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$">
				<div class="invalid-feedback">Rellena el email correctamente.</div>
				<div class="valid-feedback">Correo electrónico válido.</div>
			</div>

			<div class="input-group mb-3">
				<span class="input-group-text">Contraseña (5-20
					letras y números)</span> <input type="password" class="form-control"
					name="Contra" placeholder="Introduzca Contraseña" required
					pattern="[a-zA-Z0-9]{5,20}" minlength="5" maxlength="20">
				<div class="invalid-feedback">Rellena la contraseña
					correctamente.</div>
				<div class="valid-feedback">Contraseña valida.</div>
			</div>

			<div class="input-group mb-3">
				<span class="input-group-text">Ciudad</span> <input type="text"
					class="form-control" name="Ciudad" required>
			</div>
			
			<input type="submit" class="btn btn-primary" value="Registrarse">
	</div>
	</form>
	</div>
	</div>
</body>
</html>