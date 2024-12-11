<?php 
session_start();
// Requerir el archivo de conexión
require "../Funciones_Comunes/conexion.php";

// Definir la consulta SQL inicialmente vacía
$sql = "";

// Construir la consulta SQL para seleccionar publicaciones según el piloto o la escudería, ordenadas por ID descendente
$sql = "SELECT * FROM publicacion WHERE piloto=:piloto OR escuderia=:escuderia ORDER BY id DESC";

// Preparar la declaración SQL
$stmt = $conection->prepare($sql);

// Vincular los parámetros :piloto y :escuderia con los valores de sesión correspondientes
$stmt->bindParam(':piloto', $_SESSION['piloto']);
$stmt->bindParam(':escuderia', $_SESSION['escuderia']);

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
