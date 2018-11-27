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
        String email =request.getParameter("email");
        String contra =request.getParameter("password");
        
        
        
        
        
        Connection cn2;
  Statement cmd2;
  ResultSet rs2;
  Class.forName("com.mysql.jdbc.Driver");
  cn2=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd2=cn2.createStatement();
  int cod=0;
  String dni="";
  String nombre= "";
  rs2=cmd2.executeQuery("select dni, nombre from cliente where correo = '"+email+"' and contrasena='"+contra+"'");  
                                    while(rs2.next()){ 
                                        cod++;
                                        dni = rs2.getString(1);
                                        nombre = rs2.getString(2);
                                      } 
                                    
         if(cod>0){
                Connection cn;
                Statement cmd;
                
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
                cmd=cn.createStatement();
                String sql ="";
                PreparedStatement cmd1= null;
                                        sql ="INSERT INTO log (dni, nombre) VALUES (?,?)";
                                        cmd1= cn.prepareStatement(sql);
                                        cmd1.setString(1, dni);
                                        cmd1.setString(2, nombre);
                                        cmd1.executeUpdate();
             
             
             
           if(nombre.equals(contra)){
               response.sendRedirect("index2.jsp");
           }else{
           response.sendRedirect("index1.jsp");
            }}
        else{
           response.sendRedirect("index.jsp");
       }
      

%>
        
        
        
        
    </body>
</html>
