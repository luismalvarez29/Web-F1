// Inicializa la variable intentos
var intentos = 1;

$(document).ready(function () {
    // Maneja las sugerencias mientras el usuario escribe en el campo de entrada con id 'piloto'
    $(document).on('keyup', '#piloto', function() {
        var inputText = $(this).val();
        if (inputText !== '') {
            // Realiza una solicitud AJAX para obtener sugerencias de pilotos
            $.ajax({
                url: './Driverle/buscar_pilotos.php',
                type: 'POST',
                data: { nombre: inputText },
                success: function(response) {
                    // Actualiza el contenido del elemento con id 'sugerencias' con la respuesta del servidor
                    $('#sugerencias').html(response);
                }
            });
        } else {
            // Limpia el contenido del elemento con id 'sugerencias' si el campo de entrada está vacío
            $('#sugerencias').empty();
        }
    });

    // Maneja la selección de una sugerencia
    $(document).on('click', '.sugerencia', function() {
        var sugerenciaSeleccionada = $(this).text();
        // Establece el valor del campo de entrada con la sugerencia seleccionada
        $('#piloto').val(sugerenciaSeleccionada);
        $('#sugerencias').empty(); // Limpia las sugerencias
    });

    // Maneja el envío del formulario para comparar pilotos
    $(document).on('submit', '#comparar', function(event) {
        event.preventDefault(); // Evita el comportamiento predeterminado del formulario
        var piloto = $("#piloto").val();
        verificarPiloto(piloto); // Verifica si el piloto existe
        resultado(); // Verifica el resultado final
    });

    // Maneja el envío del formulario para reiniciar el juego
    $(document).on('submit', '#reiniciar-form', function(event) {
        event.preventDefault(); // Evita el comportamiento predeterminado del formulario
        window.location.href = 'index.php'; // Redirige a index.php
    });
});

// Función para enviar la solicitud AJAX y comparar los datos del piloto
function comparar() {
    var piloto = $("#piloto").val();
    $.ajax({
        url: "./Driverle/comparar.php",
        cache: false,
        type: "POST",
        data: { piloto: piloto },
        success: function(response) {
            if (response == "repetido") {
                // Muestra un mensaje si el piloto ya fue introducido anteriormente
                $('#sugerencias').html("Piloto ya introducido anteriormente");
            } else {
                // Agrega la respuesta a las filas de la tabla
                $('#intento' + intentos).html(response);
                intentos++; // Incrementa el contador de intentos
            }
        }
    });
}

// Función para enviar la solicitud AJAX para verificar si el piloto existe en la base de datos
function verificarPiloto(nombrePiloto) {
    $.ajax({
        url: "./Driverle/comprobar.php", // Archivo PHP que maneja la verificación del piloto
        type: "POST",
        data: { piloto: nombrePiloto },
        success: function(response) {
            if (response == "existe") {
                comparar(); // Llama a la función comparar() si el piloto existe
                $('#piloto').val(''); // Limpia el campo de entrada
                $('#error').text(''); // Limpia el mensaje de error
            } else {
                // Muestra un mensaje de error si el piloto no existe
                $("#sugerencias").text("Piloto no encontrado.");
            }
        }
    });
}

// Función para verificar el resultado final
function resultado() {
    var piloto = $("#piloto").val(); // Obtiene el valor del piloto del campo de texto
    $.ajax({
        url: "./Driverle/resultado.php", // Archivo PHP que maneja la verificación del resultado
        type: "POST",
        data: { piloto: piloto },
        success: function(response) {
            console.log("Response from resultado.php:", response); // Depuración
            if (response === "correcto") {
                // Muestra un mensaje de victoria si el piloto es correcto
                $('#comparar').hide();
                mostrarModalConDatos('¡Felicidades!', 'Has ganado el juego', '');
            } else if (intentos > 8 && response !== "correcto") { // Verifica si se alcanzó el número máximo de intentos
                $('#comparar').hide();
                mostrarModal(); // Muestra un mensaje de derrota
            }
        }
    });
}

// Función para mostrar un modal con el mensaje de derrota
function mostrarModal() {
    $.ajax({
        url: './Driverle/derrota.php', // Archivo PHP que maneja la respuesta en caso de derrota
        method: 'GET',
        dataType: 'json',
        success: function(response) {
            // Muestra un modal con los datos del piloto correcto
            mostrarModalConDatos('¡No te quedan intentos!', 'No has acertado el piloto.', `El piloto era ${response.nombre} ${response.apellidos}`);
        }
    });
}

// Función para crear y mostrar un modal con datos personalizados
function mostrarModalConDatos(titulo, mensaje, detalle) {
    var modal = document.createElement('div');
    modal.innerHTML = `
        <div id="modal" style="position: fixed; top: 0; left: 0; width: 100%; height: 100%; background-color: rgba(0, 0, 0,0.5); display: flex; justify-content: center; align-items: center;">
            <div style="background-color: #002d42; padding: 20px; color: white; border-radius:1em;">
                <h1>${titulo}</h1>
                <p>${mensaje}</p>
                <p>${detalle}</p>
                <form id="reiniciar-form" style="text-align:center;">
                    <button type="submit" id="reiniciar">Salir</button>
                </form>
            </div>
        </div>
    `;
    document.body.appendChild(modal); // Agrega el modal al cuerpo del documento
}

// Función para cerrar el modal
function cerrarModal() {
    var modal = document.getElementById('modal');
    if (modal) {
        modal.parentNode.removeChild(modal); // Elimina el modal del DOM
    }
}

// Función para abrir la ventana emergente de información
function abrirVentana() {
    var ventanaEmergente = window.open("/Driverle/info_popup.html", "_blank", "width=400,height=300");
    // Abre una nueva ventana emergente con el contenido de info_popup.html
}
