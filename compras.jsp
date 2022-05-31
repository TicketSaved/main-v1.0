<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Proceso de compra | En Construcción</title>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

   <!--Logo HEAD -->
<link rel="icon" type="image/x-icon" href="img/advertencia.png">
<!--FIN Logo HEAD -->
</head>

<body class="justify-content-center  align-items-center">
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
    <form action="metodopago.jsp">
        <div class=" mb-3 mt-3 form-group">
            <label for="sel1">Entradas no numeradas (40€):</label>
            <select class="form-control" id="sel1">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
            </select>
        </div>
        <input type="submit" class="btn btn-warning" value="Comprar">
    </form>

    </body>
</html>