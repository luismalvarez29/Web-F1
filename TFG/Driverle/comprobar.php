<?php
include('conexion_Driverle.php');

// Obtener el nombre completo del piloto proporcionado por la solicitud AJAX
$nombreCompleto = $_POST['piloto'];

// Dividir el nombre completo en partes
$partesNombre = explode(" ", $nombreCompleto);

// Verificar si se proporcionó al menos un nombre y un apellido
if (count($partesNombre) < 2) {
    echo "Piloto no encontrado.";
} else {
    // El primer elemento es el nombre
    $nombrePiloto = array_shift($partesNombre);
    
    // Los restantes elementos son los apellidos
    $apellidoPiloto = implode(" ", $partesNombre);

    try {
        // Preparar la consulta SQL utilizando PDO
        $stmt = $conection->prepare("SELECT COUNT(*) as total FROM pilotos_info WHERE nombre = :nombre AND apellidos = :apellidos");
        $stmt->execute(array(':nombre' => $nombrePiloto, ':apellidos' => $apellidoPiloto));

        // Obtener el resultado de la consulta
        $fila = $stmt->fetch(PDO::FETCH_ASSOC);
        
        // Verificar si el piloto está en la base de datos
        if ($fila['total'] > 0) {
            echo "existe";
        } else {
            echo "Piloto no encontrado.";
        }
    } catch (PDOException $e) {
        // Manejar errores de PDO
        echo "Error: " . $e->getMessage();
    }
}
?>
