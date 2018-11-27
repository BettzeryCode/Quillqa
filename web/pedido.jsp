<%-- 
    Document   : pedido
    Created on : 21-nov-2018, 5:14:54
    Author     : Sergio37
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Pedidos</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1, maxium-scale=1, minium-scale=1">
    <link rel="stylesheet" href="css/fontello.css">
    <link rel="stylesheet" href="css_menu/fontello.css">
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/estilos1.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/Pedidos.css">
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
        <form name="form1" method ="post" id="registrar-form" action="rpedido.jsp">
        
<div class="container">

        <header class="bg-primary p-4 text-white text-center">
            
            <h3>Lista de Pedidos</h3>      
        </header>
        <br/>   
    
            
                                
                <br>
                <br>
                
    <div class="table-responsive" >
        <table class="table table-striped table-bordered">
            <th><center>Detalle</center></th>
            <th><center>Código</center></th>
            <th><center>Cliente</center></th>
            <th><center>Tiempo</center></th>
            <th><center>Inicio de Pedido</center></th>
            <th><center>Estado</center></th>
            <%
       
        Connection cn2;
  Statement cmd2;
  ResultSet rs2;
  Class.forName("com.mysql.jdbc.Driver");
  cn2=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd2=cn2.createStatement();
  rs2=cmd2.executeQuery("select DISTINCT IDPEDIDO, CLIENTE, DURACION , INICIO_PEDIDO from PEDIDO WHERE ESTADO_P <> 'Atendido'");  
                                    while(rs2.next()){ %>
        
                                     <tr>
                <td> 
                    <form name="form12" method ="post" id="registrar-form" action="pedidod.jsp">
                    <button type="submit" class="btn btn-primary btn-xs glyphicon glyphicon-folder-open " ></button>
                    <input type="text" name="codigo" id="codigo" class="form-control" value = "<%= rs2.getInt(1) %>" style="display:none;"/>
                    </form>
                </td>
                <td> <%=rs2.getInt(1)%></td>
                <%;%>
                <td><%=rs2.getString(2)%></td>
                <%;%>
   
                <td><%=rs2.getString(3)%> min</td>
                <%;%>
                <td><%=rs2.getString(4)%></td>
                <%;%>
                <td> <select class="form" id="sel1" name = "<%=rs2.getInt(1)%>" >
                        <%;%>
                        <option>En progreso</option>
                        <option>Atendido</option>
                      </select></td>
            </tr> 
            <%}%>
            
            
            
        </table>

        </div>

<div class="modal fade" id ="detalle">
        <div class="modal-dialog">
                
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Pedido 001 - Juan Lopez </h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                        <div class="col-xs-7 col-sm-7 col-md-7">
                                            <label>* Jugo de Fresa</label><br>
                                            <label>con azucar</label><br>
                                            <label>con manzana</label><br><br>

                                            <label>* Sandwich de Pollo</label><br>
                                            </div>
                                            
                                            <div class="col-xs-5 col-sm-5 col-md-5">
                                                    <br>
                                                    <br>
                                                    <center>
                                                    <button class="btn btn-default btn-lg glyphicon glyphicon-time disabled"></button>
                                                    </center>
                                                    <label>10:00 min</label>

                                            </div>

                                </div>
                                    <br />
                                    <center>
                                    <input type="button" class="btn btn-primary" data-dismiss="modal" value="OK" />    
                                     </center>
                                </form>
                            </div>
                            
                        </div>
                    
        </div>

    </div>

</div>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<div id="footer">
<center><button type="submit" class="btn btn-success btn-lg">Guardar</button></center>

   </div>
        </form>
    </body>
</html>
