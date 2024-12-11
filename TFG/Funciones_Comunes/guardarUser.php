<?php
// Iniciar o reanudar la sesión
session_start();

// Incluir el archivo de conexión a la base de datos
require "conexion.php";

// Recibir datos del formulario
$usr = $_POST["usr"];
$pwd = $_POST["pwd"];
$pwd2 = $_POST["pwd2"];
$piloto = $_POST["piloto"];
$escuderia = $_POST["escuderia"];

// Hash de la contraseña proporcionada
$hashed_password = password_hash($pwd, PASSWORD_BCRYPT);

// Consulta SQL para verificar si el usuario ya existe
$sql = "SELECT * FROM usuarios WHERE nombre = :nombre";
$stmt = $conection->prepare($sql);
$stmt->bindParam(":nombre", $usr);
$stmt->execute();
$users = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Si el usuario ya existe, redirige con un mensaje de error
if ($users) {
    $_SESSION['texto'] = "El usuario que has introducido ya existe.";
    header('Location: ../index.php');
} else {
    // Si el usuario no existe, procede a insertar los datos en la base de datos
    $insertUser = "INSERT INTO usuarios (nombre, password, piloto, escuderia) VALUES ('$usr', '$hashed_password', '$piloto', '$escuderia')";
    
    // Ejecutar la inserción y manejar los resultados
    if ($conection->query($insertUser) == TRUE) {
        // Si la inserción fue exitosa, establece las variables de sesión y redirige al inicio
        $_SESSION['usr'] = $usr;
        $_SESSION['pwd'] = $pwd; // Considera si es seguro almacenar la contraseña en sesión
        $_SESSION['piloto'] = $piloto;
        $_SESSION['escuderia'] = $escuderia;
        $_SESSION['texto'] = "Te has registrado correctamente!";
        header('Location: ../index.php');
    } else {
        // Si hubo un error en la inserción, establece un mensaje de error y redirige al inicio
        $_SESSION['texto'] = "Error al registrar el usuario.";
        header('Location: ../index.php');
    }
}
?>
