<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bienvenido a TicketSaved</title>

<!--Logo HEAD -->
<link rel="apple-touch-icon" sizes="180x180"
	href="img/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="16x16" href="img/Logo.jpg">

<meta http-equiv=”Content-Type” content=”text/html; charset=UTF-8″ />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>

<!--Logo HEAD -->
<link rel="apple-touch-icon" sizes="180x180"
	href="assets/img/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="assets/img/Logo.jpg">
<!--FUN Logo HEAD -->

<style type="text/css">
a:link, a:visited, a:active {
	text-decoration: none;
}
</style>
</head>

<body>
	<!-- Menú de navegación -->
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
						aria-current="page" href="conciertos.jsp">Conciertos</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<br>
	<br>

	<div class="container">
		<h2>
			Bienvenido a TicketSaved. Inicia sesión o <a href="altausuario.jsp">Registrate
				Aquí</a>.
		</h2>
		<br>
		<form action="ServletForm" method="POST">
			<div class="mb-3 mt-3">
				<label for="email" class="form-label">Correo Electrónico:</label> <input
					type="text" class="form-control" name="email"
					placeholder="Introduzca tu correo electrónico" required>
			</div>

			<div class="mb-3 mt-3">
				<label for="Contra" class="form-label">Contraseña:</label> <input
					type="password" class="form-control" name="Contra"
					placeholder="Introduzca su contraseña" required>
			</div>
			<br> <input type="submit" class="btn btn-primary"
				value="Acceder">
	</div>

	</form>

	<%
	HttpSession sesion = request.getSession();
	if (sesion.getAttribute("miUsu") != null) {
		sesion.removeAttribute("miUsu");
	}
	%>
</body>
</html>