<%-- 
    Document   : admin
    Created on : 08/04/2018, 10:15:37 AM
    Author     : jefri
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.ProductosDB"%>
<%@page import="Modelo.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="../css/index.css">
        <title>Medrano Sport | Inicio</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand  nav-item active" href="#">Medrano Sport</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Ventas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Perfil</a>
                    </li>
                </ul>
            </div>
        </nav>
        <br>
        <div class="contenedor">
            <div class="row">
                <div class="col-md-12">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="../img/jefri.jpg" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="../img/carusel1.png" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="../img/carusel4.jpg" alt="Third slide">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
            <br>
            <h1>Catalogo de nuestros productos</h1>
            <br>
            <div class="row">
                <% ArrayList<Productos> Lista = ProductosDB.obtenerProductos();

                    int salto = 0;
                    for (Productos p : Lista) {
                %>

                <div class="col-lg-4 col-md-4 mb-4 con">
                    <div class="card h-100 con">
                        <div class="productos">
                            <a href="AgregarProducto.jsp?id=<%=p.getId_producto()%>"><img class="card-img-top" src="../img/<%=p.getImagen()%>" alt="" ></a>
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#">Modelo: <%= p.getNombre()%> </a>
                            </h4>
                            <h5>Precio: <%=p.getPrecio()%></h5>
                            <h3> Marca: <%=p.getMarca()%></h3>
                        </div>
                        <div class="card-footer footer">
                            <li class="col-md-3 btn btn-primary"><a href="AgregarProducto.jsp?id="<%=p.getId_producto()%>>Agregar</a></li>
                            <li class="col-md-3 btn btn-success"><a href="#">Modificar</a></li>
                        </div>
                    </div>
                </div>
                <%
                    salto++;
                    if (salto == 3) {
                %>
                <br>
                <%
                            salto = 0;
                        }
                    }

                %> 
            </div>
        </div>
    </body>
</html>
