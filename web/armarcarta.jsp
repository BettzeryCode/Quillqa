<%-- 
    Document   : armarcatalogo
    Created on : 18-nov-2018, 19:05:26
    Author     : Sergio37
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <title>Quilca</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maxium-scale=1, minium-scale=1">
    <link rel="stylesheet" href="css/fontello.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/estilos1.css">
    <link rel="stylesheet" href="css/fonts.css">
   <!-- <link rel="stylesheet" href="css/estilos_ultimate.css">-->
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
<form name="form1" method ="post" id="registrar-form" action="rarmarcarta.jsp">
    <div class="container">

        <header class="bg-primary p-4 text-white text-center">
            <h3>Armar Carta</h3>
        </header>
        <main> 

            <section id="Seccion">
                <h2>Jugos</h2>
                <div class="contenedor">
                                                                                    
                                    <%Connection cn;
  Statement cmd;
  ResultSet rs;
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd=cn.createStatement();
  
  rs=cmd.executeQuery("select IMAGEN, NOM_PRODUCTO, IDPRODUCTO from PRODUCTO WHERE TIPO_PRODUCTO = 'Jugo'");  
                                    while(rs.next()){ %>
                                    <article>
                        <img src="<%= rs.getString(1) %>" >
                            <% ; %>
                        <div class="cuadro">

                            <div class="divNombre">
                                <h4><%= rs.getString(2) %></h4>
                                <% ; %>
                            </div>
                            <div class="divSwitch">
                                <label class="switch">
                                    <input type="checkbox" name = "<%= rs.getString(3) %>" id="check" />
                                    <% ; %>
                                    <div class="switch-btn"></div>
                                </label>
                            </div>
 
                        </div>
                            
                    </article>
                            <% }; %>      
                </div>
            </section>
                

            <section id="Seccion">
                <h2>Sandwich</h2>
                <div class="contenedor">
                                                                                                        
                                    <%Connection cn1;
  Statement cmd1;
  ResultSet rs1;
  Class.forName("com.mysql.jdbc.Driver");
  cn1=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd1=cn1.createStatement();
   
  rs1=cmd1.executeQuery("select IMAGEN, NOM_PRODUCTO, IDPRODUCTO from PRODUCTO WHERE TIPO_PRODUCTO = 'Sandwich'");  
                                    while(rs1.next()){ %>
                                    <article>
                        <img src="<%= rs1.getString(1) %>" >
                            <% ; %>
                        <div class="cuadro">

                            <div class="divNombre">
                                <h4><%= rs1.getString(2) %></h4>
                                <% ; %>
                            </div>
                            <div class="divSwitch">
                                <label class="switch">
                                    <input type="checkbox" name = "<%= rs1.getString(3) %>" id="check" />
                                    <div class="switch-btn"></div>
                                </label>
                            </div>
 
                        </div>
                            
                    </article>
                            <% }; %> 
                    

                </div>
            </section>


            <section id="Seccion">
                    <h2>Otros</h2>
                    <div class="contenedor">
<%Connection cn2;
  Statement cmd2;
  ResultSet rs2;
  Class.forName("com.mysql.jdbc.Driver");
  cn2=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd2=cn2.createStatement();
   
  rs2=cmd2.executeQuery("select IMAGEN, NOM_PRODUCTO, IDPRODUCTO from PRODUCTO WHERE TIPO_PRODUCTO = 'Otro'");  
                                    while(rs2.next()){ %>
                                    <article>
                        <img src="<%= rs2.getString(1) %>" >
                            <% ; %>
                        <div class="cuadro">

                            <div class="divNombre">
                                <h4><%= rs2.getString(2) %></h4>
                                <% ; %>
                            </div>
                            <div class="divSwitch">
                                <label class="switch">
                                    <input type="checkbox" name = "<%= rs2.getString(3) %>" id="check" />
                                    <div class="switch-btn"></div>
                                </label>
                            </div>
 
                        </div>
                            
                    </article>
                            <% }; %> 
                    </div>
                </section>


        </main>

    </div>


    <div id="footer">
<center><button type="submit" class="btn btn-success btn-lg">Guardar</button></center>

   </div>
                    </form>
    </body>
</html>
