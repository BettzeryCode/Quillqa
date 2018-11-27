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
 <%Connection cn;
  Statement cmd;
  ResultSet rs;
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd=cn.createStatement();
  
  rs=cmd.executeQuery("select IDPRODUCTO from PRODUCTO");  
  int cant =0;
  String[ ] nombre = new String[100];
                                    while(rs.next()){ 
             nombre[cant]=rs.getString(1);
cant++;
                                    };

String[ ] param = new String[100];
int i =cant-1;
while(i>=0){
    param[i]=request.getParameter(nombre[i]);
    i--;
} 
;
i =cant-1;
        Connection cn1;
  Class.forName("com.mysql.jdbc.Driver");
  cn1=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  PreparedStatement ps;
    String query ;
    while(i>=0){
      query = "update producto set estado_c = ? where IDPRODUCTO = '"+nombre[i]+"'";
      ps = cn1.prepareStatement(query);
      ps.setString(1, param[i] );
      ps.executeUpdate();
      i--;
    }
;

response.sendRedirect("armarcarta.jsp");                           
                                           %>   


<
    </body>
</html>
