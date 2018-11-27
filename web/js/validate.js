function validar() {
   
    var user , password ,expresion ;
    user = document.getElementById("user").value;
    password = document.getElementById("password").value;   
    
    expresion =/\w+@\w+\.+[a-z]/;
    
    if( password === ""||user === "" ){
        alert("Todos los campos son obligatorios");
        return false;
    }
    else if(user.length>20){
        alert ("El nombre es muy largo maximo 20 caracteres");
        return false;
    }
    else if(!expresion.test(user)){
        alert("El coreo no es valido");
        return false;
        
    }
    else if(password.length>20){
        alert ("la clave es muy largo maximo 20 caracteres");
        return false;
    }
}