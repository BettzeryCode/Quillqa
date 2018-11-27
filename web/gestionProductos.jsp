<%-- 
    Document   : gestionProductos
    Created on : 14-nov-2018, 19:03:27
    Author     : Sergio37
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <title>Gestion de productos</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <link rel="stylesheet" href="css/fontello.css">
    <link rel="stylesheet" href="css_menu/menu.css">
    <link rel="stylesheet" href="css_menu/fontello.css">
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="css/estilos1.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/superslides.css">
    <link rel="stylesheet" href="css/fondoCarta.css">
    <link rel="stylesheet" href="css/estilos_ultimate.css"> -->
    <link rel="stylesheet" href="fonts/font-awesome/css/font-awesome.min.css">


    <script src="js/stepper.widget.js"></script>
    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="js/alertify.min.js"></script>
    <script type="text/javascript" src="js/register.js"></script>
    <link rel="stylesheet" href="css/alertify.core.css">
    <link rel="stylesheet" href="css/alertify.default.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        
        
    </head>
    <body>
        
                        <%

        
        Connection cn22;
  Statement cmd22;
  ResultSet rs22;
  Class.forName("com.mysql.jdbc.Driver");
  cn22=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd22=cn22.createStatement();
  int cod=0;
  String dni="";
  String nombre= "";
  rs22=cmd22.executeQuery("select dni, nombre from log ");  
                                    while(rs22.next()){ 
                                        cod++;
                                        dni = rs22.getString(1);
                                        nombre = rs22.getString(2);
                                      } 
    

%>
        
        
    <header>
      <div class="contenedor">
            <!-- <h1>Quilca</h1> -->
            <img class="logo" src="imagenes/logo4.png" width="194px" height="70px">
            <input type="checkbox" id="menu-bar">
            <label class="icon-menu" for="menu-bar"></label>
            <nav class="menu">
                <a href="index2.jsp">Inicio</a>
                <a href="armarcarta.jsp">Armar Carta</a>
                <a href="gestionProductos.jsp">Productos</a>
                <a href="pedido.jsp">Pedidos</a>
                
                
            </nav>
        </div>
    </header>
     <div class="usuario-wiksa">
            <a><%=nombre%></a>
            <%;%>
            <a href="index.jsp" >Cerrar sesion</a>
    </div>

    <div class="container">
        <div class=" text-center">
            <h3 class="titulo">Gestión de Productos</h3>
        </div>
        <br />

        <a href="#ventana" class="btn btn-primary btn-lg " data-toggle="modal">Agregar</a>
        
    <form name="form1" method ="post" id="registrar-form" action="ragregarprod.jsp">
        <div class="modal fade" id="ventana">
            <div class="modal-dialog">

                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Registro de producto </h4>
                    </div>
                    <div class="modal-body">
                        <form method="post">
                            <label>Codigo:  </label>
                            <input type="text" name="acodigo" id="codigo" class="form-control" />
                            <br />
                            <label>Nombre:  </label>
                            <input type="text" name="anombre" id="name" class="form-control"/>
                            <br />
                            <label>Descripción:  </label>
                            <input type="text" name="adescripcion" id="descripcion" class="form-control"/>
                            <br/>
                            <label>Tipo de Producto:  </label>
                            <select class="col form-control" name="atipo" id="sel1">
                                    <option>Jugo</option>
                                    <option>Sandwich</option>
                                    <option>Otro</option>
                            </select>
                            <br />
                            <label>Precio:  S/. </label>
                            <input type="text" name="aprecio" id="precio" class="form-control"/>
                            <br />
                            <label>Imagen Referencial:  </label>
                            <input type="file" name="aimagen" id="imagen" class="form-control"/>
                            <br />
                            <label>Tiempo de realizacion (min):  </label>
                            <input type="text" name="atiempo" id="tiempo" class="form-control"/>
                            <br />
                            <label>Calorias:  </label>
                            <input type="text" name="acaloria" id="tiempo" class="form-control"/>
                            <br />
                            <center>
                            <input type="submit" name="insert" id="insert" value="Guardar" class="btn btn-success"/>&nbsp;
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cerrar" />    
                             </center>
                        </form>
                    </div>
                    
                </div>

            </div>

        </div>
    </form>
        <h3> </h3>   

                <br>
                <div class="table-responsive">
                        <table class="table table-bordered table-hover" id="platostabla" >
                                <thead>
                                    <tr>
                                        <th><center>Tipo</center></th>
                                        <th><center>Nombre</center></th>
                                        <th><center>Descripcion</center></th>
                                        <th><center>Precio</center></th>
                                        <th><center>Opciones</center></th>
                                    </tr>
                                </thead>
                                
                                                                <%
                                    Connection cn;
  Statement cmd;
  ResultSet rs;
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd=cn.createStatement();
  
  rs=cmd.executeQuery("select IDPRODUCTO, TIPO_PRODUCTO, NOM_PRODUCTO, DESCRIPCION, PRECIO from PRODUCTO order by TIPO_PRODUCTO");  
                                    while(rs.next()){ %>
                                    <tr >
                                        
                                    <input type="text" name="rcodigo" id="rcodigo" value = "<%= rs.getString(1) %>" style="display:none;" size="0"/> 
                                    <% ; %>
                                    <td> <%= rs.getString(2) %> </td> 
                                    <% ; %>
                                    <td> <%= rs.getString(3) %> </td> 
                                    <% ; %>
                                    <td> <%= rs.getString(4) %> </td> 
                                    <% ; %>
                                    <td>S/. <%= rs.getString(5) %> </td> 
                                    <% ; %>
                                    <td>
                                        <form name="form2" method ="post" id="registrar-form" action="gestionProductosM.jsp">
                                            <input type="text" name="mcodigo" id="mcodigo" value = "<%= rs.getString(1) %>" style="display:none;" size="0"/> 
                                            <button    id = "bntn" class="btn btn-primary" data-toggle="modal" type="submit">Modificar</button>&nbsp;
                                         
                                        </form>
                                        <form name="form3" method ="post" id="registrar-form" action="reliminarProducto.jsp">    
                                            <button class="btn btn-danger"  type="submit">Eliminar</button>
                                            <input type="text" name="ecodigo" id="ecodigo"value = "<%= rs.getString(1) %>" style="display:none;" size="0"/> 
                                        </form>
                                    </td>
                                    </tr>
                                    <% } %>

                        </table>
        
                </div>


                <div class="modal fade" id ="ventanaModificar">
                    
                    <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Modificar producto </h4>
                                        </div>
                                        <div class="modal-body">
                                            <form method="post">
                                                <h1><%=request.getParameter("rrrcodigo")%></h1>
                                                <label>Nombre:  </label>
                                                <input type="text" name="name" id="name" class="form-control"/>
                                                <br />
                                                <label>Descripción:  </label>
                                                <input type="text" name="descripcion" id="descripcion" class="form-control"/>
                                                <br/>
                                                <label>Tipo de Producto:  </label>
                                                <select class="col form-control" id="sel1">
                                                        <option>Jugo</option>
                                                        <option>Sandwich</option>
                                                        <option>Complementario</option>
                                                </select>
                                                <br />
                                                <label>Precio:  </label>
                                                <input type="text" name="precio" id="precio" class="form-control"/>
                                                <br />
                                                <label>Imagen Referencial:  </label>
                                                <input type="file" name="imagen" id="imagen" class="form-control"/>
                                                <br />
                                                <label>Tiempo de realizacion (min):  </label>
                                                <input type="text" name="Tiempo" id="Tiempo" class="form-control"/>
                                                <br />
                                                <center>
                                                <input type="submit" name="insert" id="insert" value="Guardar" class="btn btn-success"/>&nbsp;
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cerrar" />    
                                                 </center>
                                            </form>
                                        </div>
                                        
                                    </div>
                                
                    </div>
        
                </div>



    </div>

    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script src="js/jquery.superslides.js"></script>
    <script src="js/register.js"></script>

        
    </body>
</html>
