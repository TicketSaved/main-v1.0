<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<title>Agregar Conciertos | Admin</title>

<meta http-equiv=”Content-Type” content=”text/html; charset=UTF-8″ />
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
					<a class="navbar-brand" href="inicio.jsp"><span>Ticket</span>Saved</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="conciertosAdmin.jsp">Conciertos</a>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<div class="dropdown">
						<button class="btn dropdown-toggle" type="button"
							data-toggle="dropdown">
							Mi Cuenta <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="index.jsp">Cerrar sesión </a></li>
						</ul>
					</div>
				</ul>
			</div>
		</nav>
	</header>

	<div class="container">
		<h2>Hola Administrador, agrega un concierto:</h2>
		<br>
		<form action="ServletForm" method="POST">
			<div class="mb-3 mt-3">
				<label for="email" class="form-label">ID de Concierto:</label> <input
					type="text" class="form-control" name="Id_Ev"
					placeholder="Introduzca el ID del concierto" required>
			</div>
			<br>
			<div class="mb-3 mt-3">
				<label for="Nombre_ev" class="form-label">Nombre del
					concierto:</label> <input type="text" class="form-control" name="Nombre_Ev"
					placeholder="Introduzca el nombre del concierto" required>
			</div>
			<br>
			<div class="mb-3 mt-3">
				<label for="Fecha_Ev" class="form-label">Fecha (20XX/xx/xx):</label>
				<input type="text" class="form-control" name="Fecha_ev"
					placeholder="Introduzca la fecha del concierto" required>
			</div>
			<br>
			<div class="mb-3 mt-3">
				<label for="Aforo_Ev" class="form-label">Aforo:</label> <input
					type="text" class="form-control" name="Aforo"
					placeholder="Introduzca el aforo del concierto" required>
			</div>
			<br>
			<div class="mb-3 mt-3">
				<label for="Nombre_Ev" class="form-label">Lugar:</label> <input
					type="text" class="form-control" name="Lugar"
					placeholder="Introduzca el lugar del concierto" required>
			</div>
			<br>
			<div class="mb-3 mt-3">
				<label for="Tipo_Ev" class="form-label">Tipo de evento:</label> <input
					type="text" class="form-control" name="Tipo_Ev"
					placeholder="Introduzca el tipo del concierto" required>
			</div>
			<br> <input type="submit" class="btn btn-primary"
				value="Agregar">
	</div>
	</form>
</body>
</html>