<%-- 
    Document   : dir_academicos
    Created on : 29-11-2017, 11:58:03
    Author     : JuanPablo
--%>

<%@page import="controladores.Controlador_usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelos.Academico"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!Doctype html>
<html lang = "en">
<head>
    <title> Director </title>
    <meta charset="utf-8">
    <meta charset=utf-8>
    <meta name=viewport content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel = "stylesheet" href = "css/academics.css">
    <link rel = "stylesheet" href = "css/styles.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
      		<a class="navbar-brand" href="#">USACH</a>
            </div>
            <ul class="nav navbar-nav">
      		<li><a href="director.jsp">Home</a></li>
      		<li class="active"><a href="#">Académicos</a></li>
      		<li><a href="#">Evaluaciones</a></li>
      		<li ><a href="#">Registrar Académico</a></li>
            </ul>

            <ul class = "nav navnar-nav navbar-right">
                <li><a href = "#">Cerrar Sesión</a></li>
            </ul>
  	</div>
    </nav>
	
    <div class = "row">
        <div class = "col-md-8 col-md-offset-1">
            <div class = "container">
		<div class = "panel panel-default" style = "margin-top: 10px";>
                    <div class = "panel-heading">Académicos</div>
			<div class = "panel-body">
                            <table class = "table table-hover">
				<thead>
                                    <tr>
					<th>Nombres</th>
					<th>Apellidos</th>
					<th>Email</th>
                                        <th>Cargo</th>
					<th>Calificación</th>
                                    </tr>
				</thead>
				<tbody>
                                    <% ArrayList<Academico> academicos = new ArrayList();
                                       Controlador_usuario userController = new Controlador_usuario();
                                       academicos = userController.read_file();
                                       for(Academico a : academicos){
                                           if(!a.get_cargo().equals("Director")){
                                    %>
                                                <tr> 
                                                    <td><%=a.get_first_name()%></td>
                                                    <td><%=a.get_last_name()%></td>
                                                    <td><%=a.get_email()%></td>
                                                    <td><%=a.get_cargo()%></td>
                                                    <td><%=a.get_grade()%></td>
                                                </tr>
                                        <%
                                            }
                                        }
                                        %>
                                </tbody>
                            </table>
                        </div>
		</div>
            </div>
        </div>
    </div>

	<footer class = "container-fluid">
		<p>Desarrollado por JHS, 2017.</p>
	</footer>

</body>
</html>