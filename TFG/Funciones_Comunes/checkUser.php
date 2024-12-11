<?php
// Inicia una nueva sesión o reanuda la sesión existente
session_start();

// Incluye el archivo de conexión a la base de datos
require "conexion.php";

// Recibe los datos del formulario enviados por método POST
$usr = $_POST["usr"];
$pwd = $_POST["pwd"];

// Inicializa las variables de sesión para mensajes de error y texto
$_SESSION['error'] = "";
$_SESSION['texto'] = "";

// Prepara una consulta SQL para buscar un usuario con el nombre dado
$sql = "SELECT * FROM usuarios WHERE nombre = :nombre";
$stmt = $conection->prepare($sql);

// Vincula el parámetro de nombre a la consulta preparada
$stmt->bindParam(":nombre", $usr);

// Ejecuta la consulta SQL
$stmt->execute();

// Recupera el primer registro que coincide con la consulta
$user = $stmt->fetch(PDO::FETCH_ASSOC);

// Si existe un usuario con el nombre proporcionado
if($user) {
    // Verifica la contraseña proporcionada con la contraseña almacenada usando password_verify
    if(password_verify($pwd, $user['password'])) {
        // Si la contraseña es correcta, guarda los datos del usuario en la sesión
        $_SESSION["usr"] = $usr;
        $_SESSION['pwd'] = $pwd;
        $_SESSION["piloto"] = $user["piloto"];
        $_SESSION["escuderia"] = $user["escuderia"];
        
        // Redirige al usuario a la página de inicio
        header('Location: ../index.php');
    } else {
        // Si la contraseña es incorrecta, guarda un mensaje de error en la sesión y redirige al usuario a la página de inicio
        $_SESSION['error'] = "Usuario o contraseña incorrectos";
        header('Location: ../index.php');
    }
} else {
    // Si no existe un usuario con el nombre proporcionado, guarda un mensaje de error en la sesión y redirige al usuario a la página de inicio
    $_SESSION['error'] = "Usuario o contraseña incorrectos";
    header('Location: ../index.php');
}
?>
