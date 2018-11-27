/*$(document).on('ready', function () {  /*q el doc este cargado antes de realizar cualquier funcion*/

   /* function moverSlider(e) {
        var pos = $(e.currentTarget).offset()
            , posX = e.pageX - pos.left
            , valor= posX*100/$(e.currentTarget).outerWidth();

        if (posX >= 0 && posX <= $(e.currentTarget).outerWidth()) {
            $('.slider .progreso').css('width', posX);
            $('.slider .indicador').css('left', posX);

            $('#valorSlider').val(valor);
        }

    }

    $('.slider').on('mousedown', function (e) {
        
        moverSlider(e);
       $(this).on('mousemove', function (e) {
            moverSlider(e);
        });
    }).on('mouseup', function () {
        $(this).off('mousemove');

    });
    
});*/
$(document).ready(function () {
    var Precios = $('#rangoPrecios');
    var sliderDiv = $('#slider');

    sliderDiv.slider({
        range: true,
        min: 5,
        max: 100,
        values: [20, 30],
        slide: function (event, ui) {
            Precios.html('S/.'+ ui.values[0] + ' - ' +'S/.'+ ui.values[1]);
        },
        stop: function (event, ui) {
            $('#txtMin').val(ui.values[0]);
            $('#txtMax').val(ui.values[1]);
        }
    });

    Precios.html('S/.'+ sliderDiv.slider('values', 0) + ' - '
       +'S/.' + sliderDiv.slider('values', 1) );
   
});
