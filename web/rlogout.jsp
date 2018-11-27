<%-- 
    Document   : rlogin
    Created on : 25-nov-2018, 14:35:47
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
        <%

 Connection cn;
  Statement cmd;
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd=cn.createStatement();
  int n= cmd.executeUpdate("delete from log");
  if(n>0){
        response.sendRedirect("index.jsp");
  }
  else{
        response.sendRedirect("index.html");
  }%>
        
    </body>
</html>
