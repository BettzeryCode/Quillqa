<%-- 
    Document   : reliminarProducto
    Created on : 20-nov-2018, 23:49:00
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
              <%@page import="java.sql.*" %>     
      <%
          String ecodigo=request.getParameter("ecodigo");
          
 Connection cn;
  Statement cmd;
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd=cn.createStatement();
  int n= cmd.executeUpdate("delete from producto where IDPRODUCTO='"+ecodigo+"'");
  if(n>0){
        response.sendRedirect("gestionProductos.jsp");
  }
  else{
        response.sendRedirect("noencontrado.html");
  }%>

    </body>
</html>
