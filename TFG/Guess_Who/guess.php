<?php
session_start();
// Verifica si el usuario está autenticado; si no lo está, redirige a la página de inicio
if (!isset($_SESSION['usr'])) {
    header('Location: ./index.php');
    exit();
}
require '../Funciones_Comunes/conexion.php';

// Inicia el tiempo al cargar la página
$tiempo_inicio = time();

// Incluye las bibliotecas de jQuery y guess.js necesarias para la funcionalidad
echo "<script src='https://code.jquery.com/jquery-3.6.0.min.js'></script>";
echo "<script src='./Guess_Who/guess.js'></script>";

// Selecciona aleatoriamente 10 registros de la tabla guess_who para mostrar países y escuderías
$sql = "SELECT gw.pais, pa.imagen AS imagen_pais, e.imagen AS imagen_escuderia, gw.escuderia, pa.id as id_pais, e.id as id_escuderia
        FROM guess_who gw
        INNER JOIN paises pa ON gw.pais = pa.nombre
        INNER JOIN escuderias e ON gw.escuderia = e.nombre
        ORDER BY RAND() LIMIT 10";
$stmt = $conection->prepare($sql);
$stmt->execute();
$datos = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Si hay datos, muestra un formulario con imágenes de países y escuderías, y campos para introducir pilotos
if ($datos) {
    echo "<div id='cronometroGuess' style='display: none; text-align: center;'>
            <h3 id='tiempoGuess'>Tiempo transcurrido: 0 segundos</h3>
          </div>";
    echo "<form id='guessForm' method='post' style='text-align: center;'>";
    $i = 1;
    foreach ($datos as $key => $pregunta) {
        $nacionalidad = $pregunta['id_pais'];
        $escuderia = $pregunta['id_escuderia'];
        $imagen_pais = $pregunta['imagen_pais'];
        $imagen_escuderia = $pregunta['imagen_escuderia'];
        echo "<table style='text-align: center; margin-top:20px;' class=' guessTabla'>";
        echo "<tr style='border: 1px solid black;'>";
        echo "<td style='border: 1px solid black;'><img src='$imagen_pais' alt='Imagen del país' style='width:200px; height:auto;' class='imagenPais'></td>";
        echo "<td style='border: 1px solid black; background-color: white;'><img src='$imagen_escuderia' alt='Imagen de la escudería' class='imagenEscuderia' style='width:200px; height:auto;'></td>";
        echo "</tr>";
        echo "<tr style='border: 1px solid black;'>";
        echo "<td colspan='2'>";
        echo "<input type='text' placeholder='Introduce un piloto' name='piloto$i' id='piloto$i' class='piloto' required>";
        echo "<input type='hidden' name='escuderia$i' value='$escuderia'>";
        echo "<input type='hidden' name='nacionalidad$i' value='$nacionalidad'>";
        echo "<div id='sugerencias$i' class='sugerencias' style='cursor: pointer;'></div>";
        echo "</td>"; 
        echo "</tr>";
        echo "</table>";
        $i++;
    }
    // Campo oculto para pasar el valor del tiempo de inicio
    echo "<input type='hidden' id='tiempo_inicio' name='tiempo_inicio' value='$tiempo_inicio'>";    
    echo "<br><input type='submit' id='puntos_Guess' value='Enviar'></form>";
    echo "<div id='resultadosGuess'></div>"; // Contenedor para los resultados   
}
?>
<script>
    $(document).ready(function() {
        let tiempo_inicio = <?php echo $tiempo_inicio; ?>;
        let cronometro = $('#cronometroGuess');
        let tiempoDisplay = $('#tiempoGuess');

        // Función para iniciar el cronómetro y mostrar el tiempo transcurrido
        function iniciarCronometro() {
            let tiempoActual = Math.floor(Date.now() / 1000);
            let tiempoTranscurrido = tiempoActual - tiempo_inicio;

            tiempoDisplay.text(`Tiempo transcurrido: ${tiempoTranscurrido} segundos`);

            setTimeout(iniciarCronometro, 1000); // Actualiza cada segundo
        }

        // Iniciar el cronómetro al cargar la página
        iniciarCronometro();

        // Maneja el evento click del botón de enviar (puntos_Guess)
        $('#puntos_Guess').click(function(e) {
            e.preventDefault(); // Evita el comportamiento por defecto del formulario

            var formData = $('#guessForm').serialize(); // Serializa los datos del formulario

            // Envía los datos del formulario mediante AJAX a guess_points.php
            $.ajax({
                url: '/Guess_Who/guess_points.php',
                type: 'POST',
                data: formData,
                success: function(data) {
                    $('#content_main').empty(); // Limpia el contenido principal
                    $('#content_main').html(data); // Muestra la respuesta del servidor en el contenido principal
                },
                error: function(xhr, status, error) {
                    console.error('Error al cargar el guess:', error); // Maneja errores de solicitud AJAX
                }
            });
        });
    });
</script>
