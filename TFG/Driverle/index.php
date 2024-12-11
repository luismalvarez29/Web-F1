<?php
    // Inicia la sesión
    session_start();

    // Verifica si el usuario está logueado
    if (!isset($_SESSION['usr'])) {
        // Si el usuario no está logueado, redirige a la página de inicio de sesión
        header('Location: ./index.php');
        exit();
    } else {
        // Si el usuario está logueado, inicializa un arreglo vacío para pilotos ingresados
        $_SESSION['pilotos_ingresados'] = [];

        // Incluye el archivo de conexión a la base de datos
        include('conexion_Driverle.php');

        // Obtiene un ID de piloto aleatorio 
        $id = obtenerPilotoAleatorio($conection);

        // Almacena el ID del piloto en la sesión
        $_SESSION['id'] = $id;

        // Inicializa la variable de intentos
        $intentos = 1;

        // Almacena el número de intentos en una cookie
        $_COOKIE['intentos'] = $intentos;

        // Redirige a la página principal del juego
        header('location: driverle.php');    
    }
?>
