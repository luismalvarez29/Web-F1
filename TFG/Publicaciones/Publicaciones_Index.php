<?php 
session_start(); // Inicia la sesión para acceder a las variables de sesión

// Requerir el archivo de conexión a la base de datos
require "./Funciones_Comunes/conexion.php";

$sql = "";

// Construye la consulta SQL para seleccionar todas las publicaciones ordenadas por ID descendente
$sql = "SELECT * FROM publicacion ORDER BY id DESC";

// Preparar la declaración SQL
$stmt = $conection->prepare($sql);

// Ejecutar la consulta
$stmt->execute();

// Obtener todos los resultados como un array asociativo
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<?php
// Verificar si hay resultados obtenidos
if (!empty($result)) {
    // Iterar sobre el array de resultados e imprimir cada publicación
    foreach ($result as $row) {
        echo "<div class='publication'>";
        echo "<div class='usuario'>" . $row['usuario'] . "</div>"; // Mostrar el nombre del usuario
        echo "<div class='contenido'>" . $row['contenido'] . "</div>"; // Mostrar el contenido de la publicación
        echo "<hr><div class='publicacionTema'>".$row['piloto']." / ".$row['escuderia']."</div>"; // Mostrar el piloto y la escudería
        echo "</div>";
    }
} else {
    echo "No se encontraron publicaciones."; // Mostrar un mensaje si no hay resultados
}
?>
