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
String codigo= request.getParameter("ecodigo");
String cantidad =request.getParameter("enum");
String caloria="";
String precio="";
String tiempo ="";
String nombre = "";

Connection cn;
  Statement cmd;
  ResultSet rs;
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd=cn.createStatement();
  
  rs=cmd.executeQuery("select CALORIA, PRECIO, TIEMPO, NOM_PRODUCTO from PRODUCTO WHERE IDPRODUCTO = '"+codigo+"'");  
                                    while(rs.next()){ 
                                        caloria = rs.getString(1);
                                        precio = rs.getString(2);
                                        tiempo =rs.getString(3);
                                        nombre =rs.getString(4);
                                      } 
int subcal = Integer.parseInt(caloria) * Integer.parseInt(cantidad);
double subtotal = Double.parseDouble(precio) * Integer.parseInt(cantidad);
int itiempo = Integer.parseInt(tiempo) * (((Integer.parseInt(cantidad))/2)+((Integer.parseInt(cantidad))%2));
String ssubcal = Integer.toString(subcal);
String ssubtotal = Double.toString(subtotal);
Connection cn1;
  Statement cmd1;
  ResultSet rs1;
  Class.forName("com.mysql.jdbc.Driver");
  cn1=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd1=cn1.createStatement();
  int cod=0;
  rs1=cmd1.executeQuery("select MAX(IDPRODPER) from PRODUCTO_PERSONALIZADO");  
                                    while(rs1.next()){ 
                                        cod = rs1.getInt(1);
                                      } 
cod++;
int scantidad = Integer.parseInt(cantidad);


 Connection cn2;

  Class.forName("com.mysql.jdbc.Driver");
  cn2=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");



      String sql ="INSERT INTO PRODUCTO_PERSONALIZADO (IDPRODPER, PRODUCTO, CANTIDAD, SUBCAL, SUBTOTAL, TIEMPO) VALUES (?,?,?,?,?,?)";
                    PreparedStatement cmd2= cn2.prepareStatement(sql);
                    cmd2.setInt(1, cod);
                    cmd2.setString(2, nombre);
                    cmd2.setInt(3, scantidad);
                    cmd2.setString(4, ssubcal);
                    cmd2.setString(5, ssubtotal);
                    cmd2.setInt(6, itiempo);
                    cmd2.executeUpdate();
                     response.sendRedirect("cartae.jsp");   
                    
                    
      


%>
          
        </table>

    </center>
      
    </body>
    
    
</html>