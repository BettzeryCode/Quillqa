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
  rs=cmd.executeQuery("select DISTINCT IDPEDIDO from PEDIDO");  
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
    while(i>=0 && param[i]!= null){
      query = "update PEDIDO set estado_p = ? where IDPEDIDO = '"+nombre[i]+"'";
      ps = cn1.prepareStatement(query);
      ps.setString(1, param[i] );
      ps.executeUpdate();
      i--;
    }
;
//tendria que revisar el codigo, pero ahora debo subir :/ adonde?????, asu perse q habias salido no , asuu ahor aq hora vas a salir
//espero apurarme
//ahora voy a dejar mi laptop en el trabajo y la dejo conectada a teamviewer....yaaaa para probar y tomar pantallazo 
// dimee ael louin es con administrdor y vendenro asi??? o cmo esta T_T 
//solo es administrador entonces? o tamcpo hay loguin?hay login, lo que no hay es la validacion y el poner a un usario como logeado
// voy yendo Erika... yaya deja prendido

response.sendRedirect("armarcarta.jsp");                           
                                           %>   


<
    </body>
</html>
