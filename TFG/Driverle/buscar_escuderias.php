<?php
// Incluye el archivo de conexión a la base de datos
include('conexion_Driverle.php');

// Obtiene el nombre de la escudería desde la solicitud POST
$nombreEscuderia = $_POST['nombre'];

try {
    // Prepara la consulta SQL para buscar escuderías cuyos nombres coincidan parcialmente con el nombre proporcionado
    $stmt = $conection->prepare("SELECT nombre FROM escuderias WHERE nombre LIKE :nombre LIMIT 5");
    
    // Ejecuta la consulta con el parámetro proporcionado
    $stmt->execute(array(':nombre' => "%$nombreEscuderia%"));

    // Verifica si se encontraron resultados
    if ($stmt->rowCount() > 0) {
        // Itera sobre los resultados y genera las sugerencias
        while ($fila = $stmt->fetch(PDO::FETCH_ASSOC)) {
            echo "<div class='sugerenciasEscuderia'>" . $fila['nombre'] . "</div>";
        }
    } else {
        // Si no se encuentran resultados, no se devuelve ninguna sugerencia
        echo "";
    }
} catch (PDOException $e) {
    // En caso de error, muestra el mensaje de error
    echo "Error: " . $e->getMessage();
}
?>
