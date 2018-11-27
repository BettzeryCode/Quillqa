<%-- 
    Document   : Registro
    Created on : 14-nov-2018, 1:00:31
    Author     : Sergio37
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Formulario de Registro</title>
        <link rel="stylesheet" href="css/Registro.css">
        <link rel="stylesheet" href="css/fontello.css">
        <link rel="stylesheet" href="css_menu/fontello.css">
        <link rel="stylesheet" href="css/estilos_ultimate.css">
        <link rel="stylesheet" href="css/estilos.css"> 
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <script src="node_modules/jquery/dist/jquery.min.js"></script>
        <script src="js/validar1.js"></script>
    </head>

    <body>
<div class="iniciar_sesion">
        <div id="inicio" style='display:block;'>
            <a href="login.jsp" class="icon glyphicon glyphicon-user"> Iniciar sesión<span></span></a>
            <a href="Registro.jsp"></a>
        </div>
        <div id="usuario" style='display:none;'></div>
    </div>
    <header>
        <div class="contenedor">
            <!-- <h1>Quilca</h1> -->
            <img class="logo" src="imagenes/logo4.png" alt="">
            <input type="checkbox" id="menu-bar">
            <label class="icon-menu" for="menu-bar"></label>
            <nav class="menu">
                <a href="index.jsp">Inicio</a>
                <a href="Carta.jsp">Carta</a>
             
             
            </nav>
        </div>
    </header>
    <div class="">
        <main role="main">

            <section class="content-form">

                <h2 class="sub-title">DATOS GENERALES</h2>

                <form name="form2" method ="post" id="registrar-form" action="rRegistro.jsp">
                    <%--         <form method="get" action="index.jsp" method="POST" id="registrar-form" onsubmit="return validar1();">
--%>
                    <div class="form-group width-12">
                        <div class="width-6">
                            <input type="text" placeholder="Nombre *" class="form-control" name="nombre" id="nombre" />
                        </div>
                        <div class="width-6 ">
                            <input type="text" placeholder="Apellidos *" class="form-control segundo" name="apellidos"
                                id="apellidos" />
                        </div>

                        <div class="width-6">
                            <input type="email" placeholder="Correo15@hotmail.com *" class="form-control" name="correo"
                                id="correo" />
                        </div>
                        <div class="width-6">
                            <input type="text" placeholder="DNI *" class="form-control segundo" name="dni" id="dni" />
                        </div>
                        <div class="width-6">
                            <input type="password" placeholder="Contraseña *" class="form-control" name="contrasena" id="contraseña" />
                        </div>
                        <div class="width-6">
                            <input type="password" placeholder="Repetir Contraseña *" class="form-control segundo" name="Rcontraseña"
                                id="Rcontraseña" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="width-12">
                            <input type="text" placeholder="Dirección *" class="form-control" name="direccion" id="direccion" />
                        </div>
                    </div>

                    <div class="form-group width-12">
                        <div class="width-6">
                            <input type="text" placeholder="Celular *" class="form-control" name="celular" id="telefono" />
                        </div>
                        
                    </div>


                    <div class="form-group width-12">
                        <h3 class="sub-form">Fecha de cumpleaños (para promociones)</h3>
                        <input type="date" nombre="fecha" min="2017-06-01" max="2017-12-31" value="2017-06-01" name="fechanac" step="1"
                            class="form-control" />
                    </div>
                    <div class="botones">
                        <center>    <input type="button" onclick="history.back()" name="volver atrás" value="volver atrás" class="form-control btn btn-back btn-principal">
                        <input type="submit" value="Aceptar" class="form-control btn-save btn btn-principal" id="btn-registrar" />
                        </center>
                    </div>

                </form>

            </section>
        </main>
    </div>
</body>

</html>
