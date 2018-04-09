<%-- 
    Document   : index
    Created on : 07/04/2018, 10:50:28 AM
    Author     : jefri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="css/inicio.css">
        <title>Medrano Sport | Inicio</title>
    </head>
    <body>
        
        <%
            HttpSession sesion = request.getSession();
            sesion.invalidate();
        %>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#">Medrano Sport</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <div class=" ml-auto ">
                        <form action="Login" method="post">

                            <input type="text" name="user" id="user" placeholder="Usuario">
                            <input type="password" name="pass" id="pass" placeholder="Contraseña">
                            <input type="submit" name="enviar" id="enviar" value="Entrar">

                        </form>
                    </div>
                </div>
            </div>
        </nav>
        <br>
        <br>
        <div class="container">

            <div class="row este">

                <div class="col-lg-4 login">

                    <h1 class="my-4">Registrate Ya!</h1>
                    <div class="list-group">
                        <form class="for" action="Registro" method="post">

                            <input type="text" name="nombre" id="nombre"  placeholder="Nombre">
                            <input type="text" name="correo" id="correo" placeholder="Correo">
                            <input type="password" name="clave" id="clave" placeholder="clave">
                            
                            <input class="btn btn-success" type="submit" value="Registar">

                        </form>
                    </div>

                </div>
                <!-- /.col-lg-3 -->

                <div class="col-lg-8">

                    <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <img class="d-block img-fluid" src="img/4.jpg" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="img/5.png" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="img/6.jpg" alt="Third slide">
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
                    
                </div >
                <% ArrayList<Productos> Lista = ProductosDB.obtenerProductos();

                    int salto = 0;
                    for (Productos p : Lista) {
                %>

                <div class="col-lg-4 col-md-4 mb-4 ">
                    <div class="card h-100 ">
                        <div class="productos">
                            <a href="AgregarProducto.jsp?id=<%=p.getId_producto()%>"><img class="card-img-top " src="img/<%=p.getImagen()%>" alt="" ></a>
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#">Modelo: <%= p.getNombre()%> </a>
                            </h4>
                            <h5>Precio: <%=p.getPrecio()%></h5>
                            <h3> Marca: <%=p.getMarca()%></h3>
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
                </body>
                </html>
