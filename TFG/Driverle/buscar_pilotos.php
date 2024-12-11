<?php
// Incluye el archivo de conexión a la base de datos
include('conexion_Driverle.php');

// Obtiene el nombre del piloto desde la solicitud POST
$nombrePiloto = $_POST['nombre'];

try {
    // Prepara la consulta SQL para buscar pilotos cuyos nombres o apellidos coincidan parcialmente con el nombre proporcionado
    $stmt = $conection->prepare("SELECT nombre, apellidos FROM pilotos_info WHERE nombre LIKE :nombre OR apellidos LIKE :apellidos LIMIT 5");
    
    // Ejecuta la consulta con los parámetros proporcionados
    $stmt->execute(array(':nombre' => "%$nombrePiloto%", ':apellidos' => "%$nombrePiloto%"));

    // Verifica si se encontraron resultados
    if ($stmt->rowCount() > 0) {
        // Itera sobre los resultados y genera las sugerencias
        while ($fila = $stmt->fetch(PDO::FETCH_ASSOC)) {
            echo "<div class='sugerencia'>" . $fila['nombre'] . " " . $fila['apellidos'] . "</div>";
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
