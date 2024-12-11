<?php
// Incluir el archivo de conexión a la base de datos
include('./Funciones_Comunes/conexion.php');

// Obtener el nombre del piloto desde el formulario POST
$nombrePiloto = $_POST['nombre'];

try {
    // Preparar la consulta SQL con parámetros de nombre y apellidos
    $stmt = $conection->prepare("SELECT nombre, apellidos FROM pilotos_info WHERE nombre LIKE :nombre OR apellidos LIKE :apellidos LIMIT 5");
    
    // Ejecutar la consulta SQL con los valores proporcionados
    $stmt->execute(array(':nombre' => "%$nombrePiloto%", ':apellidos' => "%$nombrePiloto%"));

    // Verificar si se encontraron resultados
    if ($stmt->rowCount() > 0) {
        // Iterar a través de los resultados obtenidos
        while ($fila = $stmt->fetch(PDO::FETCH_ASSOC)) {
            // Mostrar cada resultado encontrado en formato HTML
            echo "<div class='sugerencia'>" . $fila['nombre'] . " " . $fila['apellidos'] . "</div>";
        }
    } else {
        // Si no se encontraron resultados, mostrar un mensaje
        echo "<div class='sugerencia'>No se encontraron resultados</div>";
    }
} catch (PDOException $e) {
    // Capturar y manejar cualquier error de PDO que pueda ocurrir
    echo "Error: " . $e->getMessage();
}
?>
