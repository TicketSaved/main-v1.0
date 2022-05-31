<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Gracias por la compra</title>
    <!--Logo HEAD -->
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="16x16" href="img/Logo.jpg">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>

<body>
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="inicio.jsp"><span>Ticket</span>Saved</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="dropdown"><a href="conciertos.jsp">Conciertos</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <div class="dropdown">
                        <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">Mi Cuenta
                            <span class="caret"></span></button>
                        <ul class="dropdown-menu">
							<li><a href="perfil.jsp">Perfil</a></li>
							<li><a href="index.jsp">Cerrar sesión </a></li>
						</ul>
                    </div>
                </ul>
            </div>
        </nav>
    </header>

    <div class="align-items-center text-center">
        <img id="tickverde" src="img/tVerde.png" width="150px" height="150px">
        <p class="text-success">Pago realizado con éxito.</p>
    </div>
    <hr>
    <h3 class="text-center">Gracias por confiar en TicketSaved. Esperemos que disfrute del concierto.</h3>
</body>

</html>