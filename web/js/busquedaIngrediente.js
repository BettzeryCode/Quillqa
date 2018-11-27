
var cont = 0;
var ingrediente;


$(document).ready(function () {

    $('#boton-agregar').click(function () {
        agregar();
      
        
    });
    $('#Buscar').click(function () {
                if (document.getElementById('B.ingrediente').style.display == 'block') {
                    buscarxIngrediente();
                }
    });

    $(document).on('click', '.borrar', function (event) {
    event.preventDefault();
    //preguntar esta seguro que desea eliminar el ingrediente?
    //en caso sea si  se elimina con la dgt instruccion
       var variable;
        $('#ModalConfirmacion1').modal('show');

        $('#ModalConfirmacion1').on('click', "#siConfirma", function () {
            $(this).closest('tr').remove();
            console.log("Eliminando");
            $('#ModalConfirmacion1').modal('hide');})
            variable = "iuno";
            $('#ModalConfirmacion1').modal('hide');
        })
        if (variable == "iuno") {
            $('#ModalConfirmacion1').on('click', "#noConfirma", function () {
                   $('#ModalConfirmacion1').modal('hide');
            })
        }

});



function agregar() {
    ingrediente=document.getElementById("nameIngredientes").value;
    console.log("quee x1"+ingrediente);
   document.getElementById("nameIngredientes").value="";
    cont++;
    if(cont<6){
    var fila = '<tr class="borrar" id="fila ' + cont + '" ><td>' + cont + '</td><td>'+ingrediente+'</td></tr>';

    $('#tablaIngredientes').append(fila);
    }else {
       alert("maximos 5 ingredientes");
    }
    var table = document.getElementById("tablaIngredientes");
    var tr = table.getElementsByTagName("tr");
    //td = $("tr td")[0][1].innerHTML;
    td=tr[1].getElementsByTagName("td")[1].innerHTML;
    console.log("Valor: ",td);
}


function buscarxIngrediente(){
    var bus1=0,bus2=0,bus3=0;
    var table = document.getElementById("tablaIngredientes");
    var tr = table.getElementsByTagName("tr");

    //for (var i = 0; i < document.getElementById('tablaIngredientes').row.length-1; i++) {
        var filas=$("#tablaIngredientes tr").length;
        console.log("filas = ",filas);
    for (var i = 1; i <= filas-1; i++) {
        td=tr[i].getElementsByTagName("td")[1].innerHTML;
        td=td.toLowerCase();
        console.log("valor dentro bucle: ",td);
        if(td=="arroz" || td=="pollo"){
            bus1++;
        }
        if(td=="arroz" || td=="pollo" || td=="culantro" || td=="zanahoria" || td=="alverjita"){
            bus2++;
            
        }
        if(td=="fideo" || td=="pollo" || td=="espinaca"){
            bus3++;
            
        }
    }

    console.log("Valor bus1: " ,bus1);

    if(bus2==5){
        location.href = 'ArrozconPollo.html';
    }else{
        if(bus1==2){
            location.href = 'busquedaPorIngrediente.html';
        }else{
            if(bus3==3){
                location.href = 'TallarinVerde.html';
            }else{
            location.href = 'nadaResultado.html';
            }
        }  
    }
}
