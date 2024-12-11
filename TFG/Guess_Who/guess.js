// Declaración de variables globales para el cronómetro de adivinanza
var guessStartTime = 0; // Tiempo de inicio del cronómetro
var guessTimerInterval; // Intervalo del cronómetro

// Document ready
$(document).ready(function() {
    // Envía el formulario de adivinanza y maneja la respuesta del servidor
    $(document).on('submit', '#guessForm', function(event) {
        event.preventDefault();
        
        // Calcula el tiempo transcurrido desde el inicio de la adivinanza
        var endTimeGuess = new Date().getTime();
        var elapsedTimeGuess = (endTimeGuess - guessStartTime) / 1000;
        
        // Asigna el tiempo transcurrido al campo oculto en el formulario
        $("#tiempo_transcurridoGuess").val(elapsedTimeGuess);
        
        // Detiene el cronómetro
        stopGuessTimer();
        
        // Realiza una solicitud AJAX para procesar el formulario
        $.ajax({
            type: "POST",
            url: "guess_points.php",
            data: $(this).serialize(), // Serializa los datos del formulario
            success: function(response) {
                $("#guessForm").hide(); // Oculta el formulario de adivinanza
                $("#resultadosGuess").html(response); // Muestra la respuesta del servidor
            }
        });
        return false;
    });

    // Reinicia el cronómetro al cambiar la entrada del usuario
    $(".container_main").on('change', function(){
        stopGuessTimer(); // Detiene el cronómetro actual
        guessStartTime = new Date().getTime(); // Reinicia el tiempo de inicio
        startGuessTimer(guessStartTime); // Inicia nuevamente el cronómetro
    });

    // Almacena el último input activo cuando el usuario enfoca un campo de piloto
    var lastActiveInput;
    $(document).on('focus', '.piloto', function() {
        lastActiveInput = $(this); // Guarda la referencia al último input activo
    });

    // Maneja las sugerencias mientras el usuario escribe en el campo de piloto
    $(document).on('keyup', '.piloto', function() {
        var inputText = $(this).val(); // Obtiene el texto ingresado por el usuario
        var inputNumber = $(this).attr('id').replace('piloto', ''); // Obtiene el número de input
        
        // Realiza una solicitud AJAX para buscar pilotos según el texto ingresado
        if (inputText !== '') {
            $.ajax({
                url: './Driverle/buscar_pilotos.php',
                type: 'POST',
                data: { nombre: inputText },
                success: function(response) {
                    $('#sugerencias' + inputNumber).html(response); // Muestra las sugerencias obtenidas
                }
            });
        } else {
            $('#sugerencias' + inputNumber).empty(); // Vacía las sugerencias si no hay texto
        }
    });

    // Maneja la selección de una sugerencia de piloto por parte del usuario
    $(document).on('click', '.sugerencia', function() {
        var sugerenciaSeleccionada = $(this).text(); // Obtiene el texto de la sugerencia seleccionada
        var parent = $(this).parent(); // Obtiene el elemento padre de la sugerencia seleccionada
        var inputNumber = '';
        
        // Verifica y obtiene el número de input basado en el elemento padre de la sugerencia
        if (parent.attr('id') && parent.attr('id').startsWith('sugerencias')) {
            inputNumber = parent.attr('id').replace('sugerencias', '');
        } else {
            return; // Sale de la función si no se puede determinar el número de input
        }

        // Asigna el texto de la sugerencia al input correspondiente y vacía las sugerencias
        $('#piloto' + inputNumber).val(sugerenciaSeleccionada);
        $('#sugerencias' + inputNumber).empty();
    });

});

// Función para iniciar el cronómetro de adivinanza
function startGuessTimer(startTime) {
    guessTimerInterval = setInterval(function() {
        var currentTimeGuess = new Date().getTime(); // Obtiene el tiempo actual
        var elapsedTimeGuess = currentTimeGuess - startTime; // Calcula el tiempo transcurrido
        var secondsGuess = Math.floor(elapsedTimeGuess / 1000); // Convierte el tiempo a segundos
        
        // Actualiza el elemento HTML con el tiempo transcurrido
        $("#tiempoGuess").text("Tiempo transcurrido: " + secondsGuess + " segundos");
    }, 1000); // Intervalo de actualización cada segundo
}

// Función para detener el cronómetro de adivinanza
function stopGuessTimer() {
    clearInterval(guessTimerInterval); // Limpia el intervalo del cronómetro
}
