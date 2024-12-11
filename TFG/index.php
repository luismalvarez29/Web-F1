<!DOCTYPE html>
<html lang="en">
<?php include("metas.php")?> <!-- Inclusión del archivo PHP para las metaetiquetas -->

<body>
    <?php include("header.php");?> <!-- Inclusión del archivo PHP para el encabezado -->

    <main class="container_main" id="content_main">
        <?php 
            // Verifica si existe una sesión de usuario activa
            if(isset($_SESSION['usr'])){
                include("./nav_publicaciones.php"); // Incluye el archivo PHP de navegación de publicaciones si hay sesión activa
            }else{
                include("./Publicaciones/Publicaciones_Index.php"); // Incluye el archivo PHP de índice de publicaciones si no hay sesión activa
            }
        ?>
    </main>

    <button id="scrollToTopBtn" title="Ir arriba">↑</button> <!-- Botón para desplazarse hacia arriba -->

    <?php include("footer.php");?> <!-- Inclusión del archivo PHP para el pie de página -->
</body>

</html>
