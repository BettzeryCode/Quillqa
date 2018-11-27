function asu() {
   
    var nombre , ruc ,razon,expresion ,contraseña,Rcontraseña,direccion,telefono;
    nombre = document.getElementById("nombre").value;
    ruc = document.getElementById("ruc").value;
    razon = document.getElementById("razon").value;
    contraseña = document.getElementById("contraseña").value;
    Rcontraseña = document.getElementById("Rcontraseña").value;
    direccion = document.getElementById("direccion").value;
    telefono = document.getElementById("telefono").value;
    

   
    
    
    expresion =/\w+@\w+\.+[a-z]/;
    
    if( ruc === ""||nombre === "" ){
        alert("Todos los campos son obligatorios");
        return false;
    }
    else if( contraseña === ""||Rcontraseña === "" ){
        alert("Todos los campos son obligatorios");
        return false;
    }
    
    else if(nombre.length>20){
        alert ("El nombre es muy largo maximo 20 caracteres");
        return false;
    }
    else if(razon.length>20){
        alert ("La razon social es muy largo maximo 20 caracteres");
        return false;
    }
    else if(contraseña.length>20){
        alert ("La contraseña es muy largo maximo 20 caracteres");
        return false;
    }
    else if(Rcontraseña.length>20){
        alert ("La contraseña es muy largo maximo 20 caracteres");
        return false;
    }
    else if(direccion.length>20){
        alert ("La direccion es muy larga maximo 20 caracteres");
        return false;
    }
   
    /*
    else if(!expresion.test(nombre)){
        alert("El coreo no es valido");
        return false;
        
    }*/
    else if(ruc.length>20){
        alert ("la clave es muy largo maximo 20 caracteres");
        return false;
    }
    
    else if(isNaN(ruc)){
        alert("El RUC debe ser un numero")
        return false;
    }
    else if(ruc.length!=11){
        alert ("El RUC tiene solo 11 digitos y es un numero");
        return false;
    }
    else if(isNaN(telefono)){
        alert("El RUC debe ser un numero")
        return false;
    }
    else if(telefono.length!=7){
        alert ("El telefono tiene solo 7 digitos y es un numero");
        return false;
    }
    
    
    
       
}