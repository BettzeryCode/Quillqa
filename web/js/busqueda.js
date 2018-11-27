var platos = ["arroz con pollo","tallarines verde","pollo a la brasa","lomo saltado"];
var pos;

$("#Buscar").click(function () {
   var valorNombre = document.getElementById("nomBus").value;
   console.log("probando busqueda :(");
   buscarPorNombre(valorNombre);

});


function buscarPorNombre(valor){
	var valorPos=verificarNombre(valor);

	if(valorPos==-1){

	}else{

		location.href = 'busqueda.html';
		//document.write("<article id="tallarines verdes">");
        //document.write("<img style="float:left; margin:10px;" src="imagenes/TallarinVerde.jpg">");
        document.write( "<h4>Tallarin Verde</h4>");
        document.write("<p>Este es un plato en base de arroz,pollo y culantro </p>");
        //document.write("<p>PRECIO S/. 35.00 &nbsp; <input type="checkbox" id="casillero"> </p>");
        document.write("</article>");

	}
}

function verificarNombre(nom){
	pos=-1;
	nom = nom.toLowerCase();
	for (var i = 0; i<platos.length ;i++) {
		if(nom==platos[i])
			pos=i;
	}
	return pos;	
}