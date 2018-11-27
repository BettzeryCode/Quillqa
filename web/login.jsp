<%-- 
    Document   : login
    Created on : 25-nov-2018, 14:32:41
    Author     : Sergio37
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>Restaurant "QUILCA"</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maxium-scale=1, minium-scale=1">
    <link rel="stylesheet" href="css/fontello.css">
    <link rel="stylesheet" href="css_menu/fontello.css">
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/estilos1.css">
    <link rel="stylesheet" href="css/fonts.css">

    <link rel="stylesheet" href="css/style.css">
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
                </nav>
            </div>
        </header>

    <div class="container">

        <div class="card card-container" >

            <form class="form-signin" name="form" id="form" method="post" action="rlogin.jsp">
                <span id="reauth-email" class="reauth-email"></span>
                <input placeholder="Usuario" name="email" type="email" id="inputEmail" class="form-control" required
                    autofocus>
                <input name="password" type="password"  id="inputPassword" class="form-control" placeholder="Contraseña"
                    required>
                <button type="submit" class="btn btn-lg btn-primary btn-block btn-signin">
                    <i class="fa fa-sign-out" aria-hidden="true"></i>
                    Iniciar sesión</button><br>
                <center><a class="register" href="Registro.jsp">Regístrate</a></center>
            </form>
        </div>
    </div>
    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/stepper.widget.js"></script>
    <script src="js/alertify.min.js"></script>
    <script type="text/javascript" src="js/register.js"></script>
    <script src="js/validate.js"></script>
    <script language=JavaScript>
        function go() {
            if (document.form.login.value != 'miguel@hotmail.com') {
                alertify.error("Usuario Incorrecto");
            } else {
                if (document.form.password.value != '12345') {
                    alertify.error("Contraseña Incorrecta");
                } else {
                    if (document.form.password.value == '12345' && document.form.login.value == 'miguel@hotmail.com') {
                        alertify.success("Ha ingresado correctamente");
                        setTimeout(
                            function () {
                                document.getElementById('form').action = "index1.html";
                                document.form.submit();
                            }, 3000);
                        return false;
                    }
                }
            }
        }
    </script>
        <script src="js/jquery.superslides.js"></script>
    <script src="js/register.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>
