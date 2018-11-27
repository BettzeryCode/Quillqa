<%-- 
    Document   : rcrearpedido
    Created on : 21-nov-2018, 4:02:28
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
        String tiempot=request.getParameter("tiempot");
        String total =request.getParameter("total");
        
        Connection cn2;
  Statement cmd2;
  ResultSet rs2;
  Class.forName("com.mysql.jdbc.Driver");
  cn2=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd2=cn2.createStatement();
  int cod=0;
  rs2=cmd2.executeQuery("select MAX(IDPEDIDO) from PEDIDO");  
                                    while(rs2.next()){ 
                                        cod = rs2.getInt(1);
                                      } 
cod++;
        
      
   String nombre="";

        Connection cn11;
  Statement cmd11;
  ResultSet rs11;
  Class.forName("com.mysql.jdbc.Driver");
  cn11=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd11=cn11.createStatement();
  rs11=cmd11.executeQuery("select nombre from log");  
                                    while(rs11.next()){ 
                                        nombre = rs11.getString(1);
                                      } 

        
        


Connection cn;
  Statement cmd;
  ResultSet rs;
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd=cn.createStatement();
  String sql ="";

  PreparedStatement cmd1= null;
  
  rs=cmd.executeQuery("select producto, cantidad , INGRE1, INGRE2, INGRE3, INGRE4, INGRE5 from PRODUCTO_PERSONALIZADO");  
  
                                    while(rs.next()){ 
                                        sql ="INSERT INTO PEDIDO (IDPEDIDO, CLIENTE, PRODUCTO, DURACION, CANTIDAD, INGRE1, INGRE2, INGRE3, INGRE4, INGRE5) VALUES (?,?,?,?,?,?,?,?,?,?)";
                                        cmd1= cn.prepareStatement(sql);
                                        cmd1.setInt(1, cod);
                                        cmd1.setString(2, nombre);
                                        cmd1.setString(3, rs.getString(1));
                                        cmd1.setString(4, tiempot);
                                        cmd1.setInt(5, rs.getInt(2));
                                        cmd1.setString(6, rs.getString(3));
                                        cmd1.setString(7, rs.getString(4));
                                        cmd1.setString(8, rs.getString(5));
                                        cmd1.setString(9, rs.getString(6));
                                        cmd1.setString(10, rs.getString(7));
                                        
                                        cmd1.executeUpdate();
                                      } 
                                    
     Connection cn5;
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
                                    
                                    
                                    
                                    
                     response.sendRedirect("carta.jsp");   
                    
                    
      


%>
        
        
        
        
        
    </body>
</html>
