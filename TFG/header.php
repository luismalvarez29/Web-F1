<?php
//Comprueba si el usuario ha iniciado sesion para poder entrar en el quiz
session_start(); // Inicia la sesión de PHP si no está iniciada
$registro = ""; // Variable para almacenar el ID del enlace y del texto del enlace
$texto_enlace = ""; // Variable para almacenar el texto del enlace

// Verifica si no está establecida la sesión de usuario
if (!isset($_SESSION['usr'])) {
    $registro = "LogLink"; // ID del enlace para iniciar sesión o registrarse
    $texto_enlace = "Log in / Sign up"; // Texto del enlace cuando no hay sesión iniciada
} else {
    $registro = "PersonalLink"; // ID del enlace para el perfil personalizado
    $texto_enlace = $_SESSION['usr']; // Texto del enlace cuando hay sesión iniciada, mostrando el nombre de usuario
}
?>
<!-- Comienza el código HTML -->
<header>
    <nav class="nav_Enlaces_Header">
        <div class="main_Header">
            <!-- Enlaces principales de la barra de navegación -->
            <a id="quizLink" href="#">Quiz</a>
            <a id="guessLink" href="#">Guess Who</a>
            <a href="index.php">
                <img src="IMG/LOGO.jpeg" alt="Drive through">
            </a>
            <!-- Enlace "Driverle" -->
            <a id="wordleLink" href="#">Driverle</a>
            <!-- Enlace dinámico dependiendo de si hay sesión iniciada o no -->
            <a id="<?php echo $registro;?>" href="#"><?php echo $texto_enlace; ?></a>
            <!-- Enlace para cerrar sesión, visible solo si hay sesión iniciada -->
            <a id="cerrarSesion" style="<?php echo (isset($_SESSION['usr'])) ? "" : "display: none;"; ?>">
                <img src="./IMG/logOut.svg" alt="Log out" id="logOut" style="width: 20px; height: 20px;">
            </a>
        </div>

        <!-- Contenedor del logotipo y el menú hamburguesa para dispositivos móviles -->
        <div class="header-container">
            <a href="index.php">
                <img src="IMG/LOGO.jpeg" alt="Drive through">
            </a>
            <!-- Icono de menú hamburguesa -->
            <div class="hamburger" onclick="toggleMenu()">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
        
        <!-- Menú desplegable para dispositivos móviles -->
        <div class="mobile-menu" id="mobileMenu">
            <!-- Enlaces principales en el menú móvil -->
            <a id="quizLink" href="#">Quiz</a>
            <a id="guessLink" href="#">Guess Who</a>
            <a id="wordleLink" href="#">Driverle</a>
            <!-- Enlace dinámico dependiendo de si hay sesión iniciada o no en el menú móvil -->
            <a id="<?php echo $registro; ?>" href="#"><?php echo $texto_enlace; ?></a>
            <!-- Enlace para cerrar sesión en el menú móvil, visible solo si hay sesión iniciada -->
            <a id="cerrarSesion" style="<?php echo (isset($_SESSION['usr'])) ? "" : "display: none;"; ?>">
                Cerrar Sesión <img src="./IMG/logOut.svg" alt="Log out" id="logOut" style="width: 20px; height: 20px;">
            </a>
        </div>
    </nav>
</header>
