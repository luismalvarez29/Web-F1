<!-- Contenedor principal para la navegación de la cuenta -->
<div class="nav_Account_Container">
    <!-- Encabezado de navegación de la cuenta -->
    <nav class="nav_Account_Header">
        <!-- Enlace "Para Ti" -->
        <a id="publiParaTi" href="">
            <div>Para Ti</div>
        </a>
        <!-- Enlace "General" con clase activa -->
        <a id="publiGeneral" href="" class="active active_Account">
            <div>General</div>
        </a>
        <!-- Enlace "Publicar" -->
        <a id="publicar" href="">
            <div>Publicar</div>
        </a>
    </nav>
</div>

<!-- Contenedor donde se carga dinámicamente el contenido de las publicaciones -->
<div id="publiContent">
    <?php include('./Publicaciones/Publicaciones_Index.php'); ?> <!-- Inclusión del archivo PHP que carga el contenido de las publicaciones -->
</div>
