<?php
// Iniciar o reanudar la sesión
session_start();

// Incluir el archivo de conexión a la base de datos
require "conexion.php";

// Obtener el nombre de usuario de la sesión actual
$usr = $_SESSION['usr'];

// Recibir datos del formulario de la publicación
$contenido = $_POST['contenido'];
$piloto = $_POST['piloto'];
$escuderia = $_POST['escuderia'];

try {
    // Preparar la consulta SQL para insertar la nueva publicación en la base de datos
    $sql = "INSERT INTO `publicacion`(`contenido`, `usuario`, `piloto`, `escuderia`) VALUES (:contenido, :usuario, :piloto, :escuderia)";
    $stmt = $conection->prepare($sql);
    
    // Vincular los parámetros de la consulta
    $stmt->bindParam(":contenido", $contenido);
    $stmt->bindParam(":usuario", $usr);
    $stmt->bindParam(":piloto", $piloto);
    $stmt->bindParam(":escuderia", $escuderia);
    
    // Ejecutar la consulta
    $stmt->execute();

    // Redirigir a la página principal después de insertar la publicación
    header('Location: ../index.php');
} catch (PDOException $e) {
    // Capturar y manejar cualquier excepción PDO que pueda ocurrir
    echo "Error SQL: " . $e->getMessage();
    // En caso de error, podrías redirigir a una página de error específica o mostrar un mensaje al usuario
    // header('Location: error.php');
    // exit();
}
?>
