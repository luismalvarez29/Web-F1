<?php
session_start();  // Inicia la sesión para mantener datos entre páginas
require "../Funciones_Comunes/conexion.php";  // Conexión a la base de datos
$nivel = $_POST['nivel'];  // Obtiene el nivel seleccionado desde el formulario POST
$_SESSION['nivel'] = $nivel;  // Guarda el nivel en la sesión
$tiempo_inicio = time();  // Obtiene el tiempo actual en segundos desde el epoch

// Obtiene 10 preguntas aleatorias del nivel seleccionado sin repetir
$sql = "SELECT DISTINCT id_pregunta, pregunta FROM quiz WHERE nivel = :nivel ORDER BY RAND() LIMIT 10";
$stmt = $conection->prepare($sql);  // Prepara la consulta SQL
$stmt->bindParam(":nivel", $nivel);  // Asocia el parámetro :nivel con la variable $nivel
$stmt->execute();  // Ejecuta la consulta
$preguntas = $stmt->fetchAll(PDO::FETCH_ASSOC);  // Obtiene todas las filas resultantes como un array asociativo

// Si hay preguntas, muestra el formulario con las preguntas y respuestas
if ($preguntas) {
    echo "<form id='quizForm' method='post' action='puntos.php'>";  // Formulario para enviar respuestas
    foreach ($preguntas as $pregunta) {
        $id_pregunta = $pregunta['id_pregunta'];
        $pregunta_texto = $pregunta['pregunta'];
        echo "<label><h4>$pregunta_texto</h4></label>";  // Muestra el texto de la pregunta

        // Obtiene las respuestas para la pregunta actual
        $sql_respuestas = "SELECT id_respuesta, respuesta, id FROM quiz WHERE id_pregunta = :id_pregunta";
        $stmt_respuestas = $conection->prepare($sql_respuestas);
        $stmt_respuestas->bindParam(":id_pregunta", $id_pregunta);
        $stmt_respuestas->execute();
        $respuestas = $stmt_respuestas->fetchAll(PDO::FETCH_ASSOC);

        shuffle($respuestas);  // Mezcla las respuestas para mostrarlas en diferente orden

        // Muestra cada respuesta como un input radio
        foreach ($respuestas as $response) {
            $id_respuesta = $response['id_respuesta'];
            $respuesta_texto = $response['respuesta'];
            $idGeneral = $response['id'];
            echo "<label for='$idGeneral'><input type='radio' name='respuesta_$id_pregunta' id='$idGeneral' value='$id_respuesta' required>$respuesta_texto</label><br>";
        }
    }
    // Guarda el tiempo de inicio del juego como un campo oculto
    echo "<input type='hidden' id='tiempo_inicio' name='tiempo_inicio' value='$tiempo_inicio'>";    
    echo "<br><input type='submit' value='Enviar'></form>";  // Botón para enviar respuestas
} else {
    echo "No se encontraron preguntas para este nivel.";  // Mensaje si no hay preguntas para el nivel seleccionado
}
?>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
    let tiempo_inicio = <?php echo $tiempo_inicio; ?>;  // Obtiene el tiempo de inicio del juego desde PHP
    let cronometro = $('#cronometroQuiz');  // Selector para el cronómetro
    let tiempoDisplay = $('#tiempoQuiz');  // Selector para mostrar el tiempo transcurrido

    cronometro.show();  // Muestra el cronómetro en la interfaz

    // Función para iniciar y actualizar el cronómetro
    function iniciarCronometro() {
        let tiempoActual = Math.floor(Date.now() / 1000);  // Tiempo actual en segundos
        let tiempoTranscurrido = tiempoActual - tiempo_inicio;  // Calcula el tiempo transcurrido

        tiempoDisplay.text(`Tiempo transcurrido: ${tiempoTranscurrido} segundos`);  // Muestra el tiempo transcurrido

        setTimeout(iniciarCronometro, 1000);  // Llama a la función nuevamente después de 1 segundo
    }

    iniciarCronometro();  // Inicia el cronómetro al cargar la página

    // Captura el envío del formulario mediante AJAX
    $('#quizForm').submit(function(e) {
        e.preventDefault();  // Evita el comportamiento predeterminado del formulario

        $.ajax({
            url: './Quiz/puntos.php',  // URL a la que se enviarán los datos del formulario
            type: 'POST',
            data: $(this).serialize(),  // Serializa los datos del formulario para enviarlos
            success: function(data) {
                $('#content_main').empty();  // Borra el contenido actual del contenedor
                $('#content_main').html(data);  // Coloca el nuevo contenido recibido en el contenedor
            },
            error: function(xhr, status, error) {
                console.error('Error al enviar el formulario:', error);  // Muestra un mensaje en caso de error
            }
        });
        return false;  // Evita que el formulario se envíe de forma convencional
    });
});
</script>
