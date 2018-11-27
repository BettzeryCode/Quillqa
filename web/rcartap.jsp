<%-- 
    Document   : rcartap
    Created on : 21-nov-2018, 17:27:35
    Author     : Sergio37
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>  
        <%
String codigo= request.getParameter("ccodigo");
String leche =request.getParameter("leche");
String miel =request.getParameter("miel");
String stevia =request.getParameter("stevia");
String huevo =request.getParameter("huevo");        
String malta =request.getParameter("malta");        
        
 

String cantidad ="1";
int caloria=0;
double precio=0.0;

String tiempo ="";
String nombre = "";

Connection cn0;
  Statement cmd0;
  ResultSet rs0;
  Class.forName("com.mysql.jdbc.Driver");
  cn0=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd0=cn0.createStatement();
  
  rs0=cmd0.executeQuery("select CALORIA, PRECIO from INGREDIENTE where INGREDIENTE = 'leche'");  
                                    while(rs0.next()){ 
                                        if(leche != null){
                                            caloria = caloria + Integer.parseInt(rs0.getString(1));
                                            precio = precio + Double.parseDouble(rs0.getString(2));
                                        }
                                    } ;
  rs0=cmd0.executeQuery("select CALORIA, PRECIO from INGREDIENTE where INGREDIENTE = 'miel'");  
                                    while(rs0.next()){ 
                                        if(miel != null){
                                            caloria = caloria + Integer.parseInt(rs0.getString(1));
                                            precio = precio + Double.parseDouble(rs0.getString(2));
                                        }
                                    } ;
  rs0=cmd0.executeQuery("select CALORIA, PRECIO from INGREDIENTE where INGREDIENTE = 'stevia'");  
                                    while(rs0.next()){ 
                                        if(stevia != null){
                                            caloria = caloria + Integer.parseInt(rs0.getString(1));
                                            precio = precio + Double.parseDouble(rs0.getString(2));
                                        }
                                    } ;
                                    
  rs0=cmd0.executeQuery("select CALORIA, PRECIO from INGREDIENTE where INGREDIENTE = 'huevo'");  
                                    while(rs0.next()){ 
                                        if(huevo != null){
                                            caloria = caloria + Integer.parseInt(rs0.getString(1));
                                            precio = precio + Double.parseDouble(rs0.getString(2));
                                        }
                                    } ;
  rs0=cmd0.executeQuery("select CALORIA, PRECIO from INGREDIENTE where INGREDIENTE = 'malta'");  
                                    while(rs0.next()){ 
                                        if(malta != null){
                                            caloria = caloria + Integer.parseInt(rs0.getString(1));
                                            precio = precio + Double.parseDouble(rs0.getString(2));
                                        }
                                    } 

Connection cn;
  Statement cmd;
  ResultSet rs;
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd=cn.createStatement();
  
  rs=cmd.executeQuery("select CALORIA, PRECIO, TIEMPO, NOM_PRODUCTO from PRODUCTO WHERE IDPRODUCTO = '"+codigo+"'");  
                                    while(rs.next()){ 
                                        caloria = caloria + Integer.parseInt(rs.getString(1));
                                        precio = precio + Double.parseDouble(rs.getString(2));
                                        tiempo =rs.getString(3);
                                        nombre =rs.getString(4);
                                      } 

String ssubcal = Integer.toString(caloria);
String ssubtotal = Double.toString(precio);
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



      String sql ="INSERT INTO PRODUCTO_PERSONALIZADO (IDPRODPER, PRODUCTO, CANTIDAD, INGRE1,  INGRE2, INGRE3, INGRE4, INGRE5,SUBCAL, SUBTOTAL, TIEMPO) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
                    PreparedStatement cmd2= cn2.prepareStatement(sql);
                    cmd2.setInt(1, cod);
                    cmd2.setString(2, nombre +"(P)");
                    cmd2.setInt(3, scantidad);
                    cmd2.setString(4, leche);
                    cmd2.setString(5, miel);
                    cmd2.setString(6, stevia);
                    cmd2.setString(7, huevo);
                    cmd2.setString(8, malta);
                    cmd2.setString(9, ssubcal);
                    cmd2.setString(10, ssubtotal);
                    cmd2.setInt(11, Integer.parseInt(tiempo));
                    cmd2.executeUpdate();
                     response.sendRedirect("cartae.jsp");   
                    
                    
      


%>
        
    </body>
</html>
