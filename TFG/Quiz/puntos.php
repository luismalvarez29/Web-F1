<?php
session_start();
if (!isset($_SESSION['usr'])) {
    header('Location: ../Funciones_Comunes/iniciarSesion.php');
    exit();
}
$nivel = $_SESSION['nivel'];
$usr = $_SESSION['usr'];
$counter = 0;
require "../Funciones_Comunes/conexion.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Procesa las respuestas que enviamos
    foreach ($_POST as $key => $value) {
        // Verifica si la clave $key contiene respuesta_ al principio
        if (strpos($key, 'respuesta_') == 0) {
            //Obtiene el id de la pregunta y extrae el id de la pregunta     
            $id_pregunta = substr($key, strpos($key, '_') + 1);
            //Comprueba si el id_respuesta coincide con el id_pregunta para contarlo como correcto
            $sql = "SELECT id_pregunta FROM quiz WHERE id_pregunta = :id_pregunta AND id_pregunta = :id_respuesta";
            $stmt = $conection->prepare($sql);
            $stmt->bindParam(":id_pregunta", $id_pregunta);
            $stmt->bindParam(":id_respuesta", $value);
            $stmt->execute();
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            if ($result) {
                $counter += 1;
            }
        }
    }
    //Obtenemos el tiempo de inicio y se lo restamos al tiempo de fin para obtener el tiempo total en segundos de lo que han tardado
    //en contestar todas las preguntas para luego hacer un ranking
    $tiempo_inicio = $_POST['tiempo_inicio'];
    $tiempo_fin = time();
    $tiempo_transcurrido = $tiempo_fin - $tiempo_inicio;
    echo "Has acertado $counter preguntas. Tiempo: $tiempo_transcurrido segundos.";
    $insertPuntos = "INSERT INTO ranking_quiz (user, aciertos, tiempo, nivel) VALUES (:usr, :counter, :tiempo_transcurrido, :nivel)";
    $stmt = $conection->prepare($insertPuntos);
    $stmt->bindParam(':usr', $usr);
    $stmt->bindParam(':counter', $counter);
    $stmt->bindParam(':tiempo_transcurrido', $tiempo_transcurrido);
    $stmt->bindParam(':nivel', $nivel);
    $stmt->execute();
    echo "<a id='verRanking' href='#'>Ver rankings</a>";
}
?>

<script>
$(document).ready(function() {
    $('#verRanking').click(function(e) {
        e.preventDefault(); // Evita el comportamiento predeterminado del enlace

        // Realiza la solicitud AJAX para cargar el contenido de quiz.php
        $.ajax({
            url: '/Quiz/verRanking.php',
            type: 'GET',
            success: function(data) {
                // Borra el contenido actual antes de agregar el nuevo contenido
                $('#content_main').empty();

                // Coloca el contenido recibido en el #content_main
                $('#content_main').html(data);
            },
            error: function(xhr, status, error) {
                console.error('Error al cargar el quiz:', error);
            }
        });
    });
})
</script>