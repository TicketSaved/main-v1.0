<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="com.model.Eventos"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Conciertos | Admin</title>

    <meta http-equiv=”Content-Type” content=”text/html; charset=UTF-8″ />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!--Logo HEAD -->
    <link rel="apple-touch-icon" sizes="180x180" href="img/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="16x16" href="img/Logo.jpg">
    <!--FIN Logo HEAD -->

</head>

<body>
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="inicio.html"><span>Ticket</span>Saved</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="dropdown"><a href="conciertos.html">Conciertos</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <div class="dropdown">
                        <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">Mi Cuenta
                            <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            <li><a href="index.jsp">Cerrar sesión</a></li>
                        </ul>
                    </div>
                </ul>
            </div>
        </nav>
    </header>


    <div class="container-fluid">
        <div id="my-pics" class="carousel slide w-100 col-md." data-ride="carousel">

            <ol class="carousel-indicators">
                <li data-target="#my-pics" data-slide-to="0" class="active"></li>
                <li data-target="#my-pics" data-slide-to="1"></li>
                <li data-target="#my-pics" data-slide-to="2"></li>
                <li data-target="#my-pics" data-slide-to="3"></li>
                <li data-target="#my-pics" data-slide-to="4"></li>
                <li data-target="#my-pics" data-slide-to="5"></li>
                <li data-target="#my-pics" data-slide-to="6"></li>
            </ol>

            <div class="carousel-inner" role="listbox">

                <div class="item active">
                    <img src="img/LEIVAofi.jpg" alt="Leiva" width=100%>
                </div>

                <div class="item">
                    <img src="img/motomami.jpg" alt="Rosalia" width=100%>
                </div>

                <div class="item">
                    <img src="img/Melendi.jpg" alt="Melendi" width=100%>
                </div>

                <div class="item">
                    <img src="img/aitana.jpg" alt="Aitana" width=100%>
                </div>

                <div class="item">
                    <img src="img/RHCP.jpg" alt="RHCP" width=100%>
                </div>

                <div class="item">
                    <img src="img/BB.jpg" alt="Bad Bunny" width=100%>
                </div>

                <div class="item">
                    <img src="img/Vm.jpg" alt="Vanesa Martín" width=100%>
                </div>

            </div>

            <a class="left carousel-control" href="#my-pics" role="button" data-slide="prev">
                <span class="icon-prev" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#my-pics" role="button" data-slide="next">
                <span class="icon-next" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

        </div>
    </div>

    <br>
    <div class="container mt-3 table-responsive">
        <form action="agregarConcierto.jsp">
            <input type="submit" class="btn btn-primary" value="Agregar Concierto">
        </form>
            <br><br>
<table class="table table-striped">
			<thead>
				<tr>

					<th>Artista</th>
					<th>Fecha</th>
					<th>Lugar</th>
					<th>Disponibilidad</th>


				</tr>
			</thead>
			<tbody>
				<%
					LinkedList<Eventos> lista = Controller.getEventos();
					for (int i = 0; i < lista.size(); i++) {
						if (i % 2 == 0) {
							out.println("<tr'>");
						} else {
							out.println("<tr>");
						}
						String sConc = lista.get(i).getNombre_ev();
						String sIdConc = lista.get(i).getId_ev();
						String sAforo = lista.get(i).getAforo();
						out.println("<td>" + sConc + "</td>");
						out.println("<td>" + lista.get(i).getFecha_ev() + "</td>");
						out.println("<td>" + lista.get(i).getLugar() + "</td>");
						out.println("<td>" + lista.get(i).getAforo() + "</td>");
						
						

						out.println("</tr>");
					}
					%>
			</tbody>
		</table>
    </div>
</body>

</html>