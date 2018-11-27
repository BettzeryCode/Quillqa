<%-- 
    Document   : index
    Created on : 23-oct-2018, 23:48:33
    Author     : Sergio37
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
    <title>Juguería "QUILCA"</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maxium-scale=1, minium-scale=1">
    <link rel="stylesheet" href="css/fontello.css">
    <link rel="stylesheet" href="css_menu/fontello.css">
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/estilos1.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/superslides.css">
    <link rel="stylesheet" href="css/fondoCarta.css">
    <link rel="stylesheet" href="css/estilos_ultimate.css">


    <script src="js/stepper.widget.js"></script>
    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="js/alertify.min.js"></script>
    <script type="text/javascript" src="js/register.js"></script>
    <link rel="stylesheet" href="css/alertify.core.css">
    <link rel="stylesheet" href="css/alertify.default.css">
</head>
    <body>
    <header>
      <div class="contenedor">
            <!-- <h1>Quilca</h1> -->
            <img class="logo" src="imagenes/logo4.png" width="194px" height="70px">
            <input type="checkbox" id="menu-bar">
            <label class="icon-menu" for="menu-bar"></label>
            <nav class="menu">
                <a href="index.jsp">Inicio</a>
                <a href="">Nosotros</a>
                 <a href="cartaSLogin.jsp">Carta</a>
            </nav>
        </div>
    </header>
     <div class="usuario-wiksa">
            <a href="login.jsp" >Login</a>
    </div>



            <div id="slides">
            <ul class="slides-container">
                <li><img src="imagenes/registro.jpg" alt="" width="1024">
                    <div class="descripcion">
                        <h1 class="descripcion_titulo"><b>DE TODO Y PARA TI</b></h1>
                        <p>&nbsp;</p>
                        <p class="descripcion_texto"><b> Lo mejor de los mejores jugos a tu gusto.</b></p>
                    </div>
            

                </li>
                <li><img src="imagenes/registro.jpg" alt="" width="1024">
                    <div class="descripcion">
                        <h1 class="descripcion_titulo"><b>MIXTURA DE DESAYUNOS</b></h1>
                        <p>&nbsp;</p>
                        <p class="descripcion_texto"><b> Conéctate con nuestra tierra por el paladar.</b></p>
                    </div>
                 
                </li>
            </ul>

            <nav class="slides-navigation">
                <a href="#" class="next">&#62;</a>
            </nav>
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
    <script>

        $('.icon  glyphicon glyphicon-cutlery').click(function () {
            window.location.href = 'Carta.html';
        });
    </script>


    <script src="js/jquery.superslides.js"></script>
    <script src="js/register.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>
 