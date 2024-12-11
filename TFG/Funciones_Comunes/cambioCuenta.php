<?php
// Inicia una nueva sesión o reanuda la sesión existente
session_start();

// Incluye el archivo de conexión a la base de datos
require "conexion.php";

// Recibe los datos del formulario enviados por método POST
$newUsr = $_POST["usuario"];
$newPwd = $_POST["contraseña"];
$newPil = $_POST["piloto"];
$newEsc = $_POST["escuderia"];

// Obtiene el nombre de usuario actual desde la sesión
$oldUsr = $_SESSION['usr'];

// Hashea la nueva contraseña usando el algoritmo BCRYPT
$hashed_password = password_hash($newPwd, PASSWORD_BCRYPT);

// Prepara una consulta SQL para seleccionar un usuario con el nombre dado
$sql = "SELECT * FROM usuarios WHERE nombre = :nombre";
$stmt = $conection->prepare($sql);

// Vincula el parámetro de nombre a la consulta preparada
$stmt->bindParam(":nombre", $newUsr);

// Ejecuta la consulta SQL
$stmt->execute();

// Recupera todos los registros que coinciden con la consulta
$cuentas = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Verifica si el número de registros recuperados es mayor que cero (cambiado de >1 a >0 para verificar si el usuario ya existe)
if ($stmt->rowCount() > 0) {
    // Si el usuario ya existe, guarda un mensaje en la sesión y redirige a la página de inicio
    if($oldUsr==$newUsr){
        // Si el usuario no existe, prepara una consulta SQL para actualizar los datos del usuario actual
        $newAccount = "UPDATE usuarios SET nombre = :nombre, password = :password, piloto = :piloto, escuderia = :escuderia WHERE nombre = :nombreAnterior";
        $stmt = $conection->prepare($newAccount);
        
        // Vincula los parámetros a la consulta preparada
        $stmt->bindParam(':nombre', $newUsr, PDO::PARAM_STR);
        $stmt->bindParam(':password', $hashed_password, PDO::PARAM_STR);
        $stmt->bindParam(':piloto', $newPil, PDO::PARAM_STR);
        $stmt->bindParam(':escuderia', $newEsc, PDO::PARAM_STR);
        $stmt->bindParam(':nombreAnterior', $oldUsr, PDO::PARAM_STR);
        
        // Ejecuta la consulta SQL para actualizar los datos
        if ($stmt->execute()) {
            // Si la consulta se ejecuta correctamente, actualiza los datos de la sesión y redirige a la página de inicio
            $_SESSION['usr'] = $newUsr;
            $_SESSION['pwd'] = $newPwd;
            $_SESSION['piloto'] = $newPil;
            $_SESSION['escuderia'] = $newEsc;
            echo json_encode(['status' => true, 'message' => 'Cambio realizado con éxito']);
            header('Location: ../index.php');
        } else {
            // Si la consulta falla, guarda un mensaje de error en la sesión y redirige a la página de inicio
            $_SESSION['texto'] = "Error al registrar el usuario.";
            header('Location: ../index.php');
        }
    }else{
        echo json_encode(['status' => false, 'message' => 'Ese nombre de usuario ya fue seleccionado.']);
        header('Location: ../index.php');
    }
}
else{
    // Si el usuario no existe, prepara una consulta SQL para actualizar los datos del usuario actual
    $newAccount = "UPDATE usuarios SET nombre = :nombre, password = :password, piloto = :piloto, escuderia = :escuderia WHERE nombre = :nombreAnterior";
    $stmt = $conection->prepare($newAccount);
    
    // Vincula los parámetros a la consulta preparada
    $stmt->bindParam(':nombre', $newUsr, PDO::PARAM_STR);
    $stmt->bindParam(':password', $hashed_password, PDO::PARAM_STR);
    $stmt->bindParam(':piloto', $newPil, PDO::PARAM_STR);
    $stmt->bindParam(':escuderia', $newEsc, PDO::PARAM_STR);
    $stmt->bindParam(':nombreAnterior', $oldUsr, PDO::PARAM_STR);
    
    // Ejecuta la consulta SQL para actualizar los datos
    if ($stmt->execute()) {
        // Si la consulta se ejecuta correctamente, actualiza los datos de la sesión y redirige a la página de inicio
        $_SESSION['usr'] = $newUsr;
        $_SESSION['pwd'] = $newPwd;
        $_SESSION['piloto'] = $newPil;
        $_SESSION['escuderia'] = $newEsc;
        echo json_encode(['status' => true, 'message' => 'Cambio realizado con éxito']);
        header('Location: ../index.php');
    } else {
        // Si la consulta falla, guarda un mensaje de error en la sesión y redirige a la página de inicio
        $_SESSION['texto'] = "Error al registrar el usuario.";
        header('Location: ../index.php');
    }
}
?>
