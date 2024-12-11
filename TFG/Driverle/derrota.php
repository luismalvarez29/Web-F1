<?php
// obtener_piloto.php
// Incluye el archivo de conexión a la base de datos
include('conexion_Driverle.php');

// Inicia la sesión
session_start();

// Verifica si existe una sesión con el ID del piloto
if (isset($_SESSION['id'])) {
    // Obtiene el ID del piloto desde la sesión
    $id = $_SESSION['id'];

    try {
        // Prepara una consulta SQL para obtener el nombre y apellidos del piloto basado en su ID
        $consulta = $conection->prepare("SELECT nombre, apellidos FROM pilotos_info WHERE id = :id");
        // Asigna el valor del ID a la consulta preparada
        $consulta->bindParam(':id', $id);
        // Ejecuta la consulta
        $consulta->execute();
        // Obtiene el resultado de la consulta como un arreglo asociativo
        $resultado = $consulta->fetch(PDO::FETCH_ASSOC);
        
        // Verifica si se encontró un resultado
        if ($resultado) {
            // Codifica el resultado en formato JSON y lo imprime
            echo json_encode($resultado);
        }
    } catch (PDOException $e) {
        // Captura cualquier excepción de PDO y devuelve un mensaje de error en formato JSON
        echo json_encode(['error' => 'Error al obtener el nombre del piloto: ' . $e->getMessage()]);
    }
} else {
    // Si no se encontró el ID del piloto en la sesión, devuelve un mensaje de error en formato JSON
    echo json_encode(['error' => 'No se encontró el ID del piloto en la sesión']);
}
?>
