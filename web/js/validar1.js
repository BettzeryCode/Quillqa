function validar1() {
   
    var nombre , apellidos ,correo,dni,contraseña,Rcontraseña,direccion,
    telefono,edad, expresion ;
    
    nombre = document.getElementById("nombre").value;
    apellidos= document.getElementById("apellidos").value;
    correo = document.getElementById("correo").value;
    dni = document.getElementById("dni").value; 
    contraseña = document.getElementById("contraseña").value; 
    Rcontraseña = document.getElementById("Rcontraseña").value; 
    direccion = document.getElementById("direccion").value; 
    telefono = document.getElementById("telefono").value; 
    edad = document.getElementById("edad").value; 
    
    expresion =/\w+@\w+\.+[a-z]/;
    
    if( apellidos === ""||nombre === ""||correo === ""|| dni ===""|| contraseña===""|| Rcontraseña===""|| direccion===""|| telefono==="" || edad==="" ){
        alert("Todos los campos son obligatorios");
        return false;
    }
    else if(nombre.length>20){
        alert ("El nombre es muy largo maximo 20 caracteres");
        return false;
    }
     else if(apellidos.length>20){
        alert ("El apellido es muy largo maximo 20 caracteres");
        return false;
    }
    else if(correo.length>20){
        alert ("El apellido es muy largo maximo 20 caracteres");
        return false;
    }
     /*
    else if(!expresion.test(correo)){
        alert("El coreo no es valido");
        return false;
        
    }*/
    else if(isNaN(dni)){
        alert("El DNI no es un numero")
        return false;
    }
    else if(dni.length != 8){
        alert ("El DNI tiene solo 8 digitos y es un numero");
        return false;
    }
    else if(contraseña.length>20){
        alert ("la contraseña es muy largo maximo 20 caracteres");
        return false;
    }
    else if(isNaN(telefono)){
        alert("El telfono no es un numero")
        return false;
    }
    else if(telefono.length != 7){
        alert ("El telefono tiene solo 7 digitos y es un numero");
        return false;
    }
   
   
   
    
    
    
       
}