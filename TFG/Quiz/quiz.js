$(document).ready(function(){
    $("#divPreguntas").hide(); // Oculta el div de preguntas al cargar la página
    $("#divPuntos").hide(); // Oculta el div de puntos al cargar la página
    var quizStartTime = 0; // Variable para almacenar el tiempo de inicio del quiz

    $(document).on('click', '.nivelbtn', function(){  // Maneja el clic en botones de nivel (clase .nivelbtn)
        var nivel = $(this).attr('id');  // Obtiene el nivel del botón clickeado
        getNivel(nivel);  // Llama a la función para obtener y mostrar las preguntas del nivel seleccionado
        $("#cronometroQuiz").hide(); // Oculta el cronómetro
        $("#divPreguntas").show(); // Muestra el div de preguntas
        $("#seleccion").hide(); // Oculta el div de selección de nivel
        //quizStartTime = new Date().getTime(); // Establece el tiempo de inicio del quiz
        //startQuizTimer(quizStartTime); // Inicia el cronómetro del quiz
    });

    $(document).on('submit', '#quizForm', function(event){  // Maneja el envío del formulario de quiz
        event.preventDefault(); // Evita el envío convencional del formulario
        var endTimeQuiz = new Date().getTime(); // Obtiene el tiempo al finalizar el quiz
        var elapsedTimeQuiz = (endTimeQuiz - quizStartTime) / 1000; // Calcula el tiempo transcurrido en segundos
        $("#tiempo_transcurridoQuiz").val(elapsedTimeQuiz); // Asigna el tiempo transcurrido al campo oculto en el formulario
        stopQuizTimer(); // Detiene el cronómetro del quiz
        $.ajax({
            type: "POST",
            url: "/Quiz/puntos.php",
            data: $(this).serialize(), // Serializa los datos del formulario para enviarlos
            success: function (response) {
                $("#divPreguntas").hide(); // Oculta el div de preguntas después de enviar el formulario
                $("#seleccion").hide(); // Oculta el div de selección de nivel después de enviar el formulario
            }
        });
    });

    $(".container_main").on('change', function(){  // Maneja el cambio en el contenedor principal
        stopQuizTimer(); // Detiene el cronómetro del quiz
        quizStartTime = new Date().getTime(); // Establece nuevamente el tiempo de inicio del quiz
        $("#cronometroQuiz").hide(); // Oculta el cronómetro
        startQuizTimer(quizStartTime); // Inicia el cronómetro del quiz nuevamente
    });

});

var quizTimerInterval;
function getNivel(nivel){
    $.ajax({
        type: "POST",
        url: "/Quiz/getNivel.php",
        data: {nivel: nivel}, // Envía el nivel seleccionado al servidor para obtener las preguntas del quiz
        success: function (response) {
            $("#divPreguntas").html(response); // Inserta las preguntas obtenidas en el div de preguntas
            quizStartTime = new Date().getTime(); // Establece el tiempo de inicio del quiz aquí
            console.log("Start Time: ", quizStartTime); // Impresión en consola para depuración
            stopQuizTimer(); // Asegura detener cualquier cronómetro en ejecución
            startQuizTimer(); // Inicia el cronómetro del quiz después de establecer el tiempo de inicio
        }
    });
}

function startQuizTimer(startTime) {
    quizTimerInterval = setInterval(function() {  // Función para iniciar el cronómetro del quiz
        var currentTimeQuiz = new Date().getTime();  // Obtiene el tiempo actual
        var elapsedTimeQuiz = currentTimeQuiz - startTime;  // Calcula el tiempo transcurrido
        var secondsQuiz = Math.floor(elapsedTimeQuiz / 1000);  // Convierte el tiempo transcurrido a segundos
        $("#tiempoQuiz").text("Tiempo transcurrido: " + secondsQuiz + " segundos"); // Muestra el tiempo transcurrido en la interfaz
    }, 1000); // Actualiza cada segundo
    $("#tiempoQuiz").hide(); // Oculta el elemento que muestra el tiempo transcurrido
}

function stopQuizTimer() {
    clearInterval(quizTimerInterval); // Detiene el intervalo del cronómetro del quiz
}
