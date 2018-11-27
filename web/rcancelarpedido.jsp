<%-- 
    Document   : rcancelarpedido
    Created on : 21-nov-2018, 4:53:28
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
        
        
        <%    Connection cn5;
  Statement cmd5;
  Class.forName("com.mysql.jdbc.Driver");
  cn5=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd5=cn5.createStatement();
  int n= cmd5.executeUpdate("delete from producto_personalizado");
  if(n>0){
        response.sendRedirect("carta.jsp");
  }
  else{
        response.sendRedirect("noencontrado.html");
  }%>          
    </body>
</html>
