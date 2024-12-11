<?php
// Iniciar o reanudar la sesión
session_start();

// Incluir el archivo de conexión a la base de datos
require "conexion.php";

// Obtener el ID de la publicación a eliminar desde los datos enviados por POST
$id = $_POST['id'];

// Query para eliminar la publicación con el ID especificado
$sql = "DELETE FROM publicacion WHERE id = :id";
$stmt = $conection->prepare($sql); // Preparar la consulta SQL
$stmt->bindParam(":id", $id); // Vincular el parámetro :id con el valor de $id recibido por POST
$result = $stmt->execute(); // Ejecutar la consulta preparada y almacenar el resultado

echo($result); // Devolver el resultado de la ejecución de la consulta (true si se eliminó correctamente, false si ocurrió un error)
?>
