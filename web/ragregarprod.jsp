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
        
        <title>Agregar Producto</title>
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
String codigo= request.getParameter("acodigo");
String nombre =request.getParameter("anombre");
String descripcion =request.getParameter("adescripcion");
String tipo = request.getParameter ("atipo");
//String tipo ="1";
String precio =request.getParameter("aprecio");
String imagen =request.getParameter("imagen");
//String imagen ="aimagen2";
String estado_c = "on";
String tiempo =request.getParameter("atiempo");
String caloria =request.getParameter("acaloria");


 Connection cn;

  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");



      String sql ="INSERT INTO PRODUCTO (IDPRODUCTO, TIPO_PRODUCTO, NOM_PRODUCTO, DESCRIPCION, PRECIO, ESTADO_C, CALORIA ,TIEMPO) VALUES (?,?,?,?,?,?,?,?)";
                    PreparedStatement cmd= cn.prepareStatement(sql);
                    cmd.setString(1, codigo);
                    cmd.setString(2, tipo);
                    cmd.setString(3, nombre);
                    cmd.setString(4, descripcion);
                    //cmd.setString(5, imagen);
                    cmd.setString(5, precio);
                    cmd.setString(6, estado_c);
                    cmd.setString(7, caloria);
                    cmd.setString(8, tiempo);
                    cmd.executeUpdate();
                     response.sendRedirect("gestionProductos.jsp");   
                    
                    
      


%>
          
        </table>

    </center>
      
    </body>
    
    
</html>