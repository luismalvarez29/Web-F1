<?php
$config = parse_ini_file("config.ini", true);
$servername = $config["servername"];
$user = $config["username"];
$pwd = $config["password"];
try {
    $conection = new PDO("mysql:host=$servername;dbname=reardoor_drivethrough", $user, $pwd);
    $conection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //echo "Conexión exitosa";
} catch (PDOException $e) {
    echo "Error de conexión: " . $e->getMessage();
}

$query = "use reardoor_drivethrough;";
$conection->query($query);

//funcion para sacar los datos del piloto a adivinar
function obtenerDatosPilotoAleatorio($conection){
    $query = "SELECT * FROM pilotos_info WHERE id = (
                SELECT FLOOR(RAND() * (SELECT MAX(id) FROM pilotos_info)) + 1
            )";
    $statement = $conection->query($query);
    $pilotoAleatorio = $statement->fetch(PDO::FETCH_ASSOC);
    
    if ($pilotoAleatorio === false) {
        // Manejar el caso en que no se encontraron resultados
        return null;
    }
    
    return $pilotoAleatorio;
}

//funcion para sacar el id del piloto a adivinar
function obtenerPilotoAleatorio($conection){
    $query = "SELECT MAX(id) as max_id FROM pilotos_info";
    $resultado = $conection->query($query);

    // Obtener el resultado de la consulta
    $fila = $resultado->fetch(PDO::FETCH_ASSOC);
    if ($resultado->rowCount() > 0) {
        $max_id = $fila['max_id'];

        // Generar número aleatorio entre 1 y el máximo ID
        $num_aleatorio = rand(1, $max_id);
        return $num_aleatorio; // Retorna el número aleatorio en lugar de imprimirlo
    } else {
        echo "No se encontraron resultados en la tabla info_pilotos.";
    }
}

//funcion para obtener cualquier dato del piloto a adivinar de la bbdd
function obtenerColumnaPorID($conection, $id, $columna) {
    // Consulta para obtener el valor de la columna específica
    $consulta = "SELECT $columna FROM pilotos_info WHERE id = $id";
    $resultado = $conection->query($consulta);

    // Verificar si se encontraron resultados
    if ($resultado->rowCount() > 0) {
        // Obtener la fila de resultados
        $fila = $resultado->fetch(PDO::FETCH_ASSOC);
        // Devolver el valor de la columna específica
        return $fila[$columna];
    } else {
        // Si no se encontraron resultados, devolver null
        return null;
    }
}

//funcion para obtener cualquier dato del piloto que introduce el usuario de la bbdd
function obtenerColumnaPorNombre($conection, $nombre, $apellido, $columna) {
    // Consulta para obtener el valor de la columna específica
    $consulta = "SELECT $columna FROM pilotos_info WHERE LOWER(nombre) = LOWER(:nombre) AND LOWER(apellidos) = LOWER(:apellido)";
    $statement = $conection->prepare($consulta);
    $statement->execute(array(':nombre' => $nombre, ':apellido' => $apellido));

    // Verificar si se encontraron resultados
    if ($statement->rowCount() > 0) {
        // Obtener la fila de resultados
        $fila = $statement->fetch(PDO::FETCH_ASSOC);
        // Devolver el valor de la columna específica
        return $fila[$columna];
    } else {
        // Si no se encontraron resultados, devolver un array vacío
        return array();
    }
}


// Cerrar la conexión
?>
