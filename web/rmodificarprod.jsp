<%-- 
    Document   : rarmarcatalogo
    Created on : 18-nov-2018, 20:30:40
    Author     : Sergio37
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
 <%
     String codigo = request.getParameter("mmcodigo");
     String nombre = request.getParameter("mmnombre");
     String descripcion = request.getParameter("mmdescripcion");
     String precio = request.getParameter("mmprecio");
     String tiempo = request.getParameter("mmtiempo");
     String caloria = request.getParameter("mmcaloria");
        Connection cn1;
  Class.forName("com.mysql.jdbc.Driver");
  cn1=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  PreparedStatement ps;
    String query ;
      query = "update producto set NOM_PRODUCTO = ?, DESCRIPCION = ?, PRECIO = ?, TIEMPO=?, CALORIA = ? where IDPRODUCTO = '"+codigo+"'";
      ps = cn1.prepareStatement(query);
      ps.setString(1, nombre );
      ps.setString(2, descripcion );
      ps.setString(3, precio );
      ps.setString(4, tiempo );
      ps.setString(5, caloria );

      
      ps.executeUpdate();
      response.sendRedirect("gestionProductos.jsp");
 %>   



<h1> MODIFICA </h1>
    </body>
</html>
