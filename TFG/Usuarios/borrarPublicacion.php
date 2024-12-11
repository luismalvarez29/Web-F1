<?php
session_start();

// Requerir el archivo de conexión
require "../Funciones_Comunes/conexion.php";

// Verificar si el usuario está autenticado
if (!isset($_SESSION['usr'])) {
    header("Location: login.php"); // Redirigir al login si no está autenticado
    exit();
}

if (isset($_POST['id'])) {
    $id = $_POST['id'];

    try {
        // Preparar la consulta para eliminar la publicación
        $sql = "DELETE FROM publicacion WHERE id = :id";
        $stmt = $conection->prepare($sql);
        $stmt->bindParam(":id", $id);
        $stmt->execute();

        // Devolver una respuesta exitosa
        echo "success";
    } catch (Exception $e) {
        // Manejar cualquier error que pueda ocurrir durante la eliminación
        echo "Error al eliminar la publicación: " . $e->getMessage();
    }
} else {
    // Si no se recibió el ID de la publicación, devolver un mensaje de error
    echo "ID de la publicación no proporcionado";
}
?>
