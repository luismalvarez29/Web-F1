<?php
// Inicia la sesión para mantener la información del usuario
session_start();

// Comprueba si el usuario está autenticado, de lo contrario redirige a la página de inicio
if (!isset($_SESSION['usr'])) {
    header('Location: ./index.php');
    exit(); // Finaliza la ejecución del script
}

// Obtiene el nombre de usuario de la sesión
$usr = $_SESSION['usr'];

// Inicializa un contador para contar los aciertos
$counter = 0;

// Incluye el archivo de conexión a la base de datos
require "../Funciones_Comunes/conexion.php";

// Maneja la solicitud POST para procesar las respuestas enviadas
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    foreach ($_POST as $key => $piloto) {
        // Itera sobre cada elemento del formulario que corresponde a un piloto
        if (strpos($key, 'piloto') !== false) {
            $index = str_replace('piloto', '', $key);
            $escuderia = $_POST['escuderia' . $index];
            $nacionalidad = $_POST['nacionalidad' . $index];
            $nombreCompleto = $_POST['piloto' . $index];
            
            // Divide el nombre completo en nombre y apellidos
            $partesNombre = explode(" ", $nombreCompleto);
            $nombrePiloto = array_shift($partesNombre); // Primer elemento es el nombre
            $apellidoPiloto = implode(" ", $partesNombre); // Resto son los apellidos

            // Consulta SQL para verificar si el piloto, escuderia y nacionalidad coinciden
            $sql = "SELECT * 
                    FROM pilotos_info pi
                    INNER JOIN piloto_escuderia pe ON pi.id = pe.piloto_id
                    INNER JOIN escuderias es ON pe.escuderia_id = es.id
                    INNER JOIN paises pa ON pi.nacionalidad = pa.nombre
                    WHERE pi.nombre = :nombre AND pi.apellidos = :apellidos
                    AND pe.escuderia_id = :escuderia AND pa.id = :nacionalidad";
            
            // Preparación de la consulta
            $stmt = $conection->prepare($sql);
            $stmt->bindParam(':nombre', $nombrePiloto);
            $stmt->bindParam(':apellidos', $apellidoPiloto);
            $stmt->bindParam(':nacionalidad', $nacionalidad);
            $stmt->bindParam(':escuderia', $escuderia);
            
            // Ejecución de la consulta
            $stmt->execute();
            
            // Obtiene el número de filas afectadas (debería ser 1 si se encuentra una coincidencia)
            $count = $stmt->fetchColumn();
            
            // Incrementa el contador de aciertos si se encontró una coincidencia
            if ($count > 0) {
                $counter++;
            }
        }
    }

    // Calcula el tiempo transcurrido entre inicio y fin del juego
    $tiempo_inicio = $_POST['tiempo_inicio'];
    $tiempo_fin = time();
    $tiempo_transcurrido = $tiempo_fin - $tiempo_inicio;

    // Construye la respuesta que se enviará al cliente (usuario)
    $response = "Has adivinado $counter pilotos. <br>Tiempo: $tiempo_transcurrido segundos.";

    // Inserta los datos del usuario en la tabla de ranking_guess
    $insertPuntos = "INSERT INTO ranking_guess (user, aciertos, tiempo) VALUES (:usr, :counter, :tiempo_transcurrido)";
    $stmt = $conection->prepare($insertPuntos);
    $stmt->bindParam(':usr', $usr);
    $stmt->bindParam(':counter', $counter);
    $stmt->bindParam(':tiempo_transcurrido', $tiempo_transcurrido);
    $stmt->execute();

    // Añade un enlace para ver los rankings después de la respuesta
    $response .= "<br><a href='#' id='verRankings'>Ver rankings</a>";
    echo $response;
}
?>
<script>
    // Script JavaScript para manejar el clic en el enlace 'Ver rankings'
    $('#verRankings').click(function(e) {
        e.preventDefault();

        // Realiza una solicitud AJAX para cargar la página de rankings
        $.ajax({
            url: '/Guess_Who/verRankingGuess.php',
            type: 'GET',
            success: function(data) {
                // Éxito: Actualiza el contenido en el elemento con id 'content_main'
                $('#content_main').empty();
                $('#content_main').html(data);
            },
            error: function(xhr, status, error) {
                // Maneja errores de carga de la página de rankings
                console.error('Error al cargar el quiz:', error);
            }
        });
    });
</script>
