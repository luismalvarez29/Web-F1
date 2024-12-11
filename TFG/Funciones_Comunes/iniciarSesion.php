<?php
// Iniciar o reanudar la sesión
session_start();

// Variables para almacenar mensajes de texto y errores desde las sesiones
if(isset($_SESSION['texto'])){
    $text = $_SESSION['texto'];
    unset($_SESSION['texto']); // Elimina el mensaje de la sesión una vez mostrado
} else {
    $text = "";
}

if(isset($_SESSION['error'])){
    $error = $_SESSION['error'];
    unset($_SESSION['error']); // Elimina el error de la sesión una vez mostrado
} else {
    $error = "";
}
?>
<div class="iniciar_Sesion">
    <h2>Iniciar sesión</h2>
    <?php
    // Mostrar mensaje de texto si existe
    if($text != ""){
        echo "<p class='text'>$text</p>";
    }
    // Mostrar mensaje de error si existe
    if($error != ""){
        echo "<p class='error'>$error</p>";
    }
    ?>
    <!-- Formulario para iniciar sesión -->
    <form method="POST" action="../Funciones_Comunes/checkUser.php">
        <input type="text" name="usr" placeholder="Usuario" required>
        <br>
        <br>
        <input id="password" type="password" name="pwd" placeholder="Contraseña" style="margin-left:3%" required>
        <img src="./IMG/eye-regular.svg" alt="ojo" id="ojo" class="toggle-password" style="width: 25px;">
        <br>
        <input type="submit" name="enviar" value="Enviar">
    </form>
    <br>
    <!-- Enlace para crear una cuenta nueva -->
    <a href="" id="crearCuentaLink">Crear cuenta</a>
</div>

<script>
// Script jQuery para manejar el enlace 'Crear cuenta'
$('#crearCuentaLink').click(function(e) {
    e.preventDefault(); // Evita el comportamiento predeterminado del enlace

    // Realiza una solicitud AJAX para cargar crearCuenta.php en el contenido principal
    $.ajax({
        url: './Funciones_Comunes/crearCuenta.php',
        type: 'GET',
        success: function(data) {
            // Borra el contenido actual antes de agregar el nuevo contenido
            $('#content_main').empty();

            // Agrega el contenido recibido al elemento #content_main
            $('#content_main').html(data);
        },
        error: function(xhr, status, error) {
            console.error('Error al cargar la página de crear cuenta:', error);
        }
    });
});
</script>
