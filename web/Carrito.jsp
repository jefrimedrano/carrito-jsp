<%-- 
    Document   : Carrito
    Created on : 09/04/2018, 12:39:01 PM
    Author     : jefri
--%>

<%@page import="Modelo.UsuarioDB"%>
<%@page import="Modelo.Carrito"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.CarritoDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%  HttpSession sesion = request.getSession(); %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <title>Carrito</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand  nav-item active" href="admin.jsp">Medrano Sport</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">

                    <li class="nav-item">
                        <a class="nav-item nav-link" href="#">Perfil</a>
                    </li>
                    <%

                        if (sesion.getAttribute("tipo").equals("admin")) {

                            out.print("<a class=\"nav-item nav-link\" href=\"webs/login.jsp\">Agregar Producto</a>");
                            out.print("<a class=\"nav-item nav-link\" href=\"webs/login.jsp\">Ventas</a>");
                        }

                    %>
                </ul>

                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link disabled" href="Carrito.jsp"><img src="img/carrito1.png"></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="index.jsp">Cerrar Session</a>
                    </li>
                </ul>
            </div>
        </nav>
        <br>
        <div class="container">
            <div class="col-md-12">
                <div class="card h-100 ">
                	<div class="card-footer footer">
                		<a href="admin.jsp" class="btn btn-primary">seguir Compra</a>
                	</div>
                    <table>
                        <tr>
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th>Cantidad</th>
                            <th>Sub-Total</th>

                        </tr>
                        <tr>
                            <%                                int id = Integer.parseInt(sesion.getAttribute("idusuario").toString());

                                ArrayList<Carrito> Lista = CarritoDB.listaCarrito(id);
                                int salto = 0;
                                for (Carrito p : Lista) {
                            %>

                            <th><%=p.getNombre()%></th>
                            <th><%=p.getPrecio()%></th>
                            <th><%=p.getCantidad()%></th>
                                <% int cantidad = p.getCantidad();
                                    double precio = p.getPrecio();
                                    double sub = cantidad * precio;
                                %>
                            <th><%= sub%> </th>
                        </tr>
                        <% }%>   
                    </table>
                    <div class="card-footer footer">
                		<input type="submit" class="btn btn-success" name="" value="Comprar">
                		</div>  
                </div>
            </div>
        </div>
    </body>
</html>
