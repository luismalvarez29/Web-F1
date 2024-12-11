<?php 
session_start(); // Inicia la sesión para acceder a las variables de sesión

// Requerir el archivo de conexión (debes asegurarte que la conexión esté establecida correctamente)
require "../Funciones_Comunes/conexion.php";

$usr = $_SESSION['usr']; // Obtiene el nombre de usuario de la sesión activa

// Verifica si el usuario está autenticado

$sql = "SELECT * FROM publicacion WHERE usuario = :usuario ORDER BY id DESC";
$stmt = $conection->prepare($sql);
$stmt->bindParam(":usuario", $usr);
$stmt->execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);

if (!empty($result)) {
    // Si hay resultados, itera sobre el array de resultados e imprime cada publicación
    foreach ($result as $row) {
        echo "<div class='publication' id='publication-" . $row['id'] . "'>";
        echo "<div class='usuario'>Usuario: " . htmlspecialchars($row['usuario']) . "</div>";
        echo "<div class='contenido'>Contenido: " . htmlspecialchars($row['contenido']) . "</div>";
        // Botón para eliminar la publicación, al hacer clic se llama a la función eliminarPublicacion con el ID correspondiente
        echo "<a href='#' onclick='eliminarPublicacion(" . $row['id'] . "); return false;'><img src='../IMG/papelera.png' alt='papelera' width='50px'></a>";
        echo "</div>";
    }
} else {
    // Si no hay resultados, muestra un mensaje indicando que no se encontraron publicaciones
    echo "<p style='text-align:center'>No se encontraron publicaciones.</p>";
}
?>

<!-- Incluir jQuery para manejar AJAX -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
    // Función JavaScript para eliminar una publicación
    function eliminarPublicacion(id) {
        $.ajax({
            url: "../Funciones_Comunes/eliminar_publicacion.php", // URL del script PHP que maneja la eliminación
            cache: false,
            type: "POST",
            data: { id: id }, // Datos a enviar (en este caso, solo el ID de la publicación)
            success: function(response) {
                if (response) {
                    // Si la eliminación fue exitosa, eliminar el elemento del DOM con jQuery
                    $("#publication-" + id).remove();
                } else {
                    // Si hay un error al eliminar, muestra una alerta y posiblemente el mensaje de error
                    alert("Error al eliminar la publicación.");
                    console.log(response); // Muestra el mensaje de error en la consola del navegador
                }
            },
            error: function() {
                // Si hay un error en la solicitud AJAX, muestra una alerta genérica
                alert("Error en la solicitud AJAX.");
            }
        });
    }
</script>
