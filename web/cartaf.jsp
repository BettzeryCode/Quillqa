<%-- 
    Document   : carta
    Created on : 18-nov-2018, 21:58:50
    Author     : Sergio37
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carta</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maxium-scale=1, minium-scale=1">
    <link rel="stylesheet" href="css/fontello.css">
    <link rel="stylesheet" href="css_menu/fontello.css">
    <link rel="stylesheet" href="css/estilos.css">

    <link rel="stylesheet" href="css_menu/menu.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/estilos1.css">
    <link rel="stylesheet" href="css/estilos_ultimate.css">
    <link rel="stylesheet" href="css/menu_cliente.css">

    <link rel="stylesheet" href="css/alertify.core.css">
    <link rel="stylesheet" href="css/alertify.default.css">
    <style>
        .alertify-log-custom {
                background: blue;
            }
        </style>

    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="js/sliderRange.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/stepper.widget.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/alertify.js"></script>
    <script src="js/alertify.min.js"></script>
    <script type="text/javascript">
function redireccionar(){
  document.getElementById('bntn').style.display='active';
  $("#bntn").trigger("click");
} 
setTimeout ("redireccionar()", 500); //tiempo expresado en milisegundos
</script> 

    <link rel="stylesheet" href="css/switch_Ingrediente.css">
    </head>
    
    
                            <%

        
        Connection cn22;
  Statement cmd22;
  ResultSet rs22;
  Class.forName("com.mysql.jdbc.Driver");
  cn22=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd22=cn22.createStatement();
  int cod=0;
  String dni="";
  String nombre= "";
  rs22=cmd22.executeQuery("select dni, nombre from log ");  
                                    while(rs22.next()){ 
                                        cod++;
                                        dni = rs22.getString(1);
                                        nombre = rs22.getString(2);
                                      } 
    

%>
        
        
    <header>
      <div class="contenedor">
            <!-- <h1>Quilca</h1> -->
            <img class="logo" src="imagenes/logo4.png" width="194px" height="70px">
            <input type="checkbox" id="menu-bar">
            <label class="icon-menu" for="menu-bar"></label>
            <nav class="menu">
                <a href="index.jsp">Inicio</a>
                <a href="carta.jsp">Carta</a>
                
            </nav>
        </div>
    </header>
     <div class="usuario-wiksa">
         <a><%=nombre%></a> <br>
            <%;%>
            <a href="rlogout.jsp" >Cerrar sesion</a>
    </div>
    <div class="transparencia">
        <main>
    
               <section id="platos" class="todo">
            <h2 class="title">Jugos</h2>
            <div class="contenedor ">
                                                    <%Connection cn;
  Statement cmd;
  ResultSet rs;
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd=cn.createStatement();
  
  rs=cmd.executeQuery("select IMAGEN, NOM_PRODUCTO, DESCRIPCION, CALORIA, PRECIO, IDPRODUCTO from PRODUCTO WHERE TIPO_PRODUCTO = 'Jugo' AND ESTADO_C='on'");  
                                    while(rs.next()){ %>
                                    <article class="articulosPlatos">
<img style="float:left; height:230px; margin-right:4px;  "
                         src="<%= rs.getString(1) %>">
                            <% ; %>
                    <label id="producto"><%= rs.getString(2) %></label>
                    <% ; %>
                    <p style="margin-bottom:4px; "><%= rs.getString(3) %></p>
                    <% ; %>
                    <strong>Calorias: <%= rs.getString(4) %> Kcal</strong>
                    <% ; %>
                    <p style=" margin-bottom: 5px; margin-left: 150px;">PRECIO S/.<%= rs.getString(5) %> &nbsp;
                    </p>
                    <% ; %>
                    <br>
                    <div class="stepper-widget">
                        <center>
                            <button id="s2" type="button" style="text-align:center;" class="js-qty-down">-</button>
                            <input id="s1" name ="enum" type="text" style="text-align:center; width:30px;" class="js-qty-input"value="1">
                            <button id="s3" type="button" style="text-align:center;" class="js-qty-up">+</button>
                        </center>
                    </div>
                    <br>
                    <input type="text" name="ecodigo" id="ecodigo" class="form-control" value = "<%= rs.getString(6) %>" style="display:none;"/>
                    <% ; %>
                    <button type="button" id="elegir" class="btn boton" style="margin-left:141px;" data-toggle="modal" data-target="#modalSolicitud">Elegir</button>
                    
                    <input type="text" name="pcodigo" id="pcodigo" class="form-control" value = "<%= rs.getString(6) %>" style="display:none;"/>
                    <% ; %>
                    <button type="button" id="personalizar" class="btn btn-info" data-toggle="modal" data-target="#modalIngredientes" >Personalizar</button>
                </article>        
                 <% }; %>           
                            
                        
            </div>
        </section>
                 
                 <section id="platos" class="todo">
            <h2 class="title">Sandwiches</h2>
            <div class="contenedor ">
                                                    <%Connection cn1;
  Statement cmd1;
  ResultSet rs1;
  Class.forName("com.mysql.jdbc.Driver");
  cn1=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd1=cn1.createStatement();
  
  rs1=cmd1.executeQuery("select IMAGEN, NOM_PRODUCTO, DESCRIPCION, CALORIA, PRECIO, IDPRODUCTO from PRODUCTO WHERE TIPO_PRODUCTO = 'Sandwich' AND ESTADO_C='on'");   
                                    while(rs1.next()){ %>
                                    <article class="articulosPlatos">
                        <img style="float:left; height:230px; margin-right:4px;  "
                         src="<%= rs1.getString(1) %>">
                            <% ; %>
                    <label id="producto"><%= rs1.getString(2) %></label>
                    <% ; %>
                    <p style="margin-bottom:4px; "><%= rs1.getString(3) %></p>
                    <% ; %>
                    <strong>Calorias: <%= rs1.getString(4) %> Kcal</strong>
                    <% ; %>
                    <p style=" margin-bottom: 5px; margin-left: 150px;">PRECIO S/.<%= rs1.getString(5) %> &nbsp;
                    </p>
                    <% ; %>
                    <br>
                    <div class="stepper-widget">
                        <center>
                            <button id="s2" type="button" style="text-align:center;" class="js-qty-down">-</button>
                            <input id="s1" name = "enum" type="text" style="text-align:center; width:30px;" class="js-qty-input"value="1">
                            <button id="s3" type="button" style="text-align:center;" class="js-qty-up">+</button>
                        </center>
                    </div>
                    <br>
                    <input type="text" name="ecodigo" id="ecodigo" class="form-control" value = "<%= rs1.getString(6) %>" style="display:none;"/>
                    <% ; %>
                    <button type="button" id="elegir" class="btn boton" style="margin-left:141px;" data-toggle="modal" data-target="#modalSolicitud">Elegir</button>
                </article>        
                 <% }; %>           
                            
                        
            </div>
        </section>

                                  <section id="platos" class="todo">
            <h2 class="title">Otros</h2>
            <div class="contenedor ">
                                                    <%Connection cn2;
  Statement cmd2;
  ResultSet rs2;
  Class.forName("com.mysql.jdbc.Driver");
  cn2=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd2=cn2.createStatement();
  
  rs2=cmd2.executeQuery("select IMAGEN, NOM_PRODUCTO, DESCRIPCION, CALORIA, PRECIO, IDPRODUCTO from PRODUCTO WHERE TIPO_PRODUCTO = 'Otro' AND ESTADO_C='on'");  
                                    while(rs2.next()){ %>
                                    <article class="articulosPlatos">
                        <img style="float:left; height:230px; margin-right:4px;  "
                         src="<%= rs2.getString(1) %>">
                            <% ; %>
                    <label id="producto"><%= rs2.getString(2) %></label>
                    <% ; %>
                    <p style="margin-bottom:4px; "><%= rs2.getString(3) %></p>
                    <% ; %>
                    <strong>Calorias: <%= rs2.getString(4) %> Kcal</strong>
                    <% ; %>
                    <p style=" margin-bottom: 5px; margin-left: 150px;">PRECIO S/.<%= rs2.getString(5) %> &nbsp;
                    </p>
                    <% ; %>
                    <br>
                    <div class="stepper-widget">
                        <center>
                            <button id="s2" type="button" style="text-align:center;" class="js-qty-down">-</button>
                            <input id="s1" name = "enum" type="text" style="text-align:center; width:30px;" class="js-qty-input"value="1">
                            <button id="s3" type="button" style="text-align:center;" class="js-qty-up">+</button>
                        </center>
                    </div>
                    <br>
                    <input type="text" name="ecodigo" id="ecodigo" class="form-control" value = "<%= rs2.getString(6) %>" style="display:none;"/>
                    <% ; %>
                    <button type="button" id="elegir" class="btn boton" style="margin-left:141px;" data-toggle="modal" data-target="#modalSolicitud">Elegir</button>
                </article>        
                 <% }; %>           
                            
                        
            </div>
        </section>
                 
                 
<script>
            
            $('.stepper-widget').stepper();
            $('.stepper-widget').stepper({
                upSelector: '.js-qty-up',
                downSelector: '.js-qty-down',
                inputSelector: '.js-qty-input',
                disabledClass: 'disabled',
                maxQty: 10,
                minQty: 1,
                step: 1
            });
            $('.stepper-widget').on('stepperupdate', function (ev, data) {
                console.log(data.updateMode);
            });
        </script>

                </div>

        <div class="ContainerIngrediente">
            <div class="contenedor-modal">
                <div class="modal fade" id="modalIngredientes" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <!-- Header de la  ventana modal-->
                            <div class="modal-header">
                               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h4 class="modal-title" id="myModalLabel"><b>Mi pedido</b></h4>
                            </div>

                            <div class="modal-body">

                                <div id='nombrePlato' style='display:block;'>
                                    <h4 class="modal-title">Jugo de fresa con leche</h4>
                                </div>

                                <br>

                                <label>Ingredientes:</label>
                                <div class="row">
                                        <div class="col-xs-4 col-sm-4 col-md-4" >
                                        </div>
                                        <div class="col-xs-2 col-sm-2 col-md-2" >
                                                                                                <%Connection cn3;
  Statement cmd3;
  ResultSet rs3;
  Class.forName("com.mysql.jdbc.Driver");
  cn3=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd3=cn3.createStatement();
  
  rs3=cmd3.executeQuery("select INGREDIENTE from INGREDIENTE");  
                                    while(rs3.next()){ %>
                                            <label><%= rs3.getString(1) %></label><br>
                                            <% ;}; %>
                                        </div>
                                           
                                        <div class="col-xs-2 col-sm-2 col-md-2">
                                       <label class="switch"><input type="checkbox" checked><span class="slider round"></span></label><br>
                                       <label class="switch"><input type="checkbox" checked><span class="slider round" ></span></label><br>
                                       <label class="switch"><input type="checkbox" checked><span class="slider round" ></span></label><br>
                                       <label class="switch"><input type="checkbox" checked><span class="slider round" ></span></label><br>
                                       <label class="switch"><input type="checkbox" checked><span class="slider round" ></span></label><br>
                                       <label class="switch"><input type="checkbox" checked><span class="slider round" ></span></label><br>
                                        </div>
                                        <div class="col-xs-4 col-sm-4 col-md-4" >
                                        </div>
                                </div>
                                <script type="text/javascript"> 

                                    $(document).ready(function () {
                                        $("#modalIngredientes").on('click', '#aceptar', function () {
                                            $('#modalSolicitud').modal('show');
                                             $('#modalSolicitud').modal({backdrop: "static"});
                                            $("#modalIngredientes").modal('hide');

                                        })

                                    });

                                    $(document).ready(function () {
                                        
                                        $("#modalIngredientes").on('click', '#atras', function () {
                                            $('#modalCantidad').modal('show');
                                             $('#modalCantidad').modal({backdrop: "static"});
                                            $("#modalIngredientes").modal('hide');
                                        })

                                    });

                                </script>
                            </div>
                            <div class="modal-footer">
                                <button type="button" id="aceptar" class="btn btn-success" style="margin-left:140px;">Aceptar</button>
                    <button type="button" id="atras" class="btn btn-danger">Volver atrás</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<button  href="#modalPedido"  id = "bntn" class="btn btn-primary" data-toggle="modal" type="submit" style="display:none;" >Pedidofinal</button>&nbsp;
        <div class="ContainerSolicitudPedido">
            <div class="contenedor-modal">
                <div class="modal fade" id="modalSolicitud"  aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <!-- Header de la  ventana modal-->
                            <div class="modal-header">
                               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h4 class="modal-title" id="myModalLabel"><b>Mi Pedido</b></h4>
                            </div>

                            <div class="modal-body">
                                <div class="row">
                                   <div class="col-xs-12 col-sm-6 col-md-12">
                                        <div class="table-responsive" >
                                            <table class="table table-striped table-bordered">
                                                <th style="width: 30%"><center>Producto</center></th>                                                
                                                <th style="width: 15%"><center>Calorías</center></th>
                                                <th style="width: 17%"><center>Cantidad</center></th>
                                                <th style="width: 15%"><center>Subtotal</center></th>
                                                <th style="width: 23%"><center>Tiempo</center></th>
        <%Connection cn5;
  Statement cmd5;
  ResultSet rs5;
  Class.forName("com.mysql.jdbc.Driver");
  cn5=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd5=cn5.createStatement();
  
  rs5=cmd5.executeQuery("select PRODUCTO, SUBCAL, CANTIDAD, SUBTOTAL, TIEMPO from PRODUCTO_PERSONALIZADO");  
                                    while(rs5.next()){ %>
                                        <tr>
                                                    <center>
                                                    <td><br><%= rs5.getString(1)%></td>
                                                    <%;%>
                                                    <td><br><%=rs5.getString(2)%> Kcal</td>
                                                    <%;%>
                                                    <td><br><%=rs5.getInt(3)%></td>
                                                    <%;%>
                                                    <td><br>S/. <%=rs5.getString(4)%></td>
                                                    <%;%>
                                                    <td>
                                                        <button class="btn btn-default btn-lg glyphicon glyphicon-time disabled"></button><br>
                                                        <label><%=rs5.getInt(5)%> min</label>
                                                        <%;};%>
                                                    </td>
                                                </center>
                                                </tr>

                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                <script type="text/javascript"> 
                                    $(document).ready(function () {
                                        $("#modalSolicitud").on('click', '#terminarPedido', function () {
                                            $('#modalPedido').modal('show');
                                             $('#modalPedido').modal({backdrop: "static"});
                                            $("#modalSolicitud").modal('hide');
                                        })

                                    });
                                </script>
                            <div class="modal-footer">
                                                              
                            <form name="form10" method ="post" id="registrar-form" action="carta.jsp">      
                                <center><button type="submit" id="agregarPedido" class="btn btn-success" >Agregar productos</button></center>
                            </form>
                                
                                
                                <center><button type="button" id="terminarPedido" class="btn btn-danger" >Terminar</button></center>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
   
    <div class="ContainerPedido">
            <div class="contenedor-modal">
                <div class="modal fade" id="modalPedido"  aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <!-- Header de la  ventana modal-->
                            <div class="modal-header">
                               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h4 class="modal-title" id="myModalLabel"><b>Pedido</b></h4>
                            </div>

                            <div class="modal-body">

                                <div class="row">
                                   <div class="col-xs-9 col-sm-6 col-md-9">
                                        <div class="table-responsive" >
                                            <table class="table table-striped table-bordered">
                                                <th style="width: 8%"><center>N°</center></th>
                                                <th style="width: 60%"><center>Producto</center></th>
                                                <th style="width: 16%"><center>Cantidad</center></th>
                                                <th style="width: 16%"><center>Subtotal</center></th>
              <%
                  int i =1;
                  int tiempot = 0;
                  double total =0;
                  Connection cn6;
  Statement cmd6;
  ResultSet rs6;
  Class.forName("com.mysql.jdbc.Driver");
  cn6=DriverManager.getConnection("jdbc:mysql://localhost/quillqa","root","root");
  cmd6=cn6.createStatement();
  
  rs6=cmd6.executeQuery("select PRODUCTO, CANTIDAD, SUBTOTAL, TIEMPO from PRODUCTO_PERSONALIZADO");  
                                    while(rs6.next()){ %>
                                        <tr>
                                                    <td><%= i%></td>
                                                    <%;%>
                                                    <td><%=rs6.getString(1)%></td>
                                                    <%;%>
                                                    <td><%=rs6.getInt(2)%></td>
                                                    <%;%>
                                                    <td>S/. <%=rs6.getString(3)%></td>
                                                    <%;
                                                    total= total + Double.parseDouble(rs6.getString(3));
                                                    i++;
                                                    tiempot = tiempot + rs6.getInt(4);
                                                    %>
                                                
                                                        
        
        
                                                </tr>
                                                <%};%>

                                            </table>

                                        </div>
                                        <div class="table-responsive" >
                                            <table class="table table-striped table-bordered">
                                                <th style="width: 12%"><center>Total</center></th>
                                                <th style="width: 68%"><center></center></th>
                                                <th style="width: 20%"><center> S/. <%=total%></center></th>
                                                <%;%>
                                            
                                            </table>

                                        </div>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-3">
                                            <br>
                                            <br>
                                            <br>
                                            <button class="btn btn-default btn-lg glyphicon glyphicon-time disabled"></button>
                                            <br>
                                            <label><%=tiempot%> min</label>
                                            <%;%>
                                            

                                    </div>


                                </div>

                            </div>

                            <div class="modal-footer">
                            <form name="form12" method ="post" id="registrar-form" action="rcrearpedido.jsp">       
                               <button type="submit" id="aceptaPedido" class="btn btn-success"  onclick="alerta()">Aceptar</button>
                               <input type="text" name="tiempot" id="mcodigo" class="form-control" value = "<%=tiempot%>" style="display:none;"/>
                                            <%;%>
                                <input type="text" name="total" id="mcodigo" class="form-control" value = "<%=total%>" style="display:none;"/>
                                <%;%>
                               
                            </form>
                            
                            <form name="form13" method ="post" id="registrar-form" action="rcancelarpedido.jsp">       
                                
                               <button type="submit" id="cancelaPedido" class="btn btn-danger" >Cancelar</button>
                            </form>
                            </div>
                            
                                
                            <script type="text/javascript">
                                function alerta(){
                                    alertify.alert("<b>El pedido ha sido solicitado, por favor espere el tiempo establecido para su entrega.", function () {
                                        
                                        });
                                }
                            </script>
                        </div>
                </div>
            </div>
        </div>
    </div>
 
        </main>
    </div>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#notificationLink").click(function () {
                $("#notificationContainer").fadeToggle(300);
                $("#notification_count").fadeOut("slow");
                return false;
            });

            //Document Click hiding the popup
            $(document).click(function () {
                $("#notificationContainer").hide();
            });

            //Popup on click
            $("#notificationContainer").click(function () {
                return false;
            });

        });
    </script>
</html>
