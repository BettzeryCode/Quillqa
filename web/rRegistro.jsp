<%-- 
    Document   : ragregar
    Created on : 04/12/2017, 01:17:49 AM
    Author     : Sergio
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href ="style.css">
        
        <title>Agregar Cliente</title>
    </head>
    <body>
    <center>    
        <table border="1">
            <TR>
            <th></th>
            <th></th>
            
            </TR>
      <%@page import="java.sql.*" %>     
      <%

String dni =request.getParameter("dni");
String nombre =request.getParameter("nombre");
String apellidos =request.getParameter("apellidos");
String correo =request.getParameter("correo");
String contrasena =request.getParameter("contrasena");
String celular =request.getParameter("celular");
String direccion =request.getParameter("direccion");
String edad =request.getParameter("edad");
String fechanac =request.getParameter("fechanac");

 Connection cn;

  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");



      String sql ="INSERT INTO CLIENTE (DNI, NOMBRE, APELLIDOS, CORREO, CONTRASENA, DIRECCION, CELULAR, EDAD,FECHANAC) VALUES (?,?,?,?,?,?,?,?,?)";
                    PreparedStatement cmd= cn.prepareStatement(sql);
                    cmd.setString(1, dni);
                    cmd.setString(2, nombre);
                    cmd.setString(3, apellidos);
                    cmd.setString(4, correo);
                    cmd.setString(5, contrasena);
                    cmd.setString(6, direccion);
                    cmd.setString(7, celular);
                    cmd.setString(8, edad);
                    cmd.setString(9, fechanac);
                    cmd.executeUpdate();
                     response.sendRedirect("login.jsp");   
                    
                    
      


%>
          
        </table>

    </center>
      
    </body>
    
    
</html>