<?php
// Lee la configuración desde el archivo config.ini
$config = parse_ini_file("config.ini", true);

// Obtiene los valores necesarios del archivo de configuración
$servername = $config["servername"];
$user = $config["username"];
$pwd = $config["password"];

try {
    // Intenta establecer una conexión PDO con la base de datos MySQL
    $conection = new PDO("mysql:host=$servername;dbname=reardoor_drivethrough;charset=utf8mb4", $user, $pwd);

    // Configura PDO para que lance excepciones en caso de errores
    $conection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Establece el juego de caracteres a utf8mb4 para soportar emojis y caracteres especiales
    $conection->exec("SET NAMES utf8mb4");

} catch (PDOException $e) {
    // En caso de error al conectarse a la base de datos, captura la excepción y muestra un mensaje de error
    echo "Error de conexión: " . $e->getMessage();
}
?>
