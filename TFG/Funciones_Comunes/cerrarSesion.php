<?php
// Inicia una nueva sesión o reanuda la sesión existente
session_start();

// Elimina todas las variables de sesión
session_unset();

// Destruye la sesión actual
session_destroy();

// Redirige al usuario a la página de inicio
header('Location: ../index.php');

// Asegura que el script se detenga después de la redirección
exit();
?>
