var usuario = ['Erika', 'Laura','Lisseth'];
var contrasena=['1234a','5678a','9123a'];
var pos=-1;


$('#ingresar').click(function () {
   var valorUsuario = document.getElementById("user").value;
   var valorContrasena = document.getElementById("password").value;
   console.log("probando iniciarSesion :(");
   console.log(valorUsuario);
   console.log(valorContrasena);
   iniciarSesion(valorUsuario,valorContrasena);
});


function iniciarSesion(user,pass){
	var valor=validarUsuario(user);
	if(valor==-1){
		console.log("Usuario no registrado");
		alertify.alert("usuario no registrado", function () { 
			$('#user').val('');
		});
	}else{
			if(pass==contrasena[valor]){
					console.log("Ingreso con exito");
					location.href = 'MenuSamiWiksa.html';
					
					$(document).ready(function () {
						$('#usuario').text(user);
						$('#usuario').css('display', 'block');
						$('#inicio').css('display', 'none');
						//document.getElementById('inicio').style.display='none';
					});

					console.log("cambioooooooooooooooo");

			}else{
				console.log("Contraseña incorrecta");
				alertify.alert("La contraseña que ingresaste es incorrecta. <br> Vuelve a intentarlo", function () { 
					$('#password').val('');
				});
				
			}
	}
}

function validarUsuario(user){
	pos=-1;
	for (var i = 0; i<usuario.length ;i++) {
		if(user==usuario[i])
			pos=i;
	}
	return pos;	
}

