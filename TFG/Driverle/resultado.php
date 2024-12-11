<?php
                include('conexion_Driverle.php');
                session_start();
                if (!isset($_SESSION['id'])) {
                  // Generar un nuevo piloto aleatorio y almacenar su ID en la variable de sesión
                header('location: ../index.php');
        
            }
            $id = $_SESSION['id'];
            $pilotoAleatorio = obtenerDatosPilotoAleatorio($conection);

                if(isset($_POST['piloto'])) {
                    // Obtén el valor ingresado en el campo de texto
                    $nombre_apellido = $_POST['piloto'];

                    // Separa el nombre y el apellido (asumiendo que están separados por un espacio)
                    $parts = explode(' ', $nombre_apellido);
                    
                    // Verifica si se han ingresado al menos dos palabras
                        $nombre = $parts[0]; // Primer elemento es el nombre
                        $apellido = implode(' ', array_slice($parts, 1)); // Los demás elementos son el apellido
                        $debutPilotoPorID = obtenerColumnaPorID($conection, $id, 'debut');
                        $debutPilotoPorNombre = obtenerColumnaPorNombre($conection, $nombre, $apellido, 'debut');
                        $retiroPilotoPorID = obtenerColumnaPorID($conection, $id, 'retiro');
                        $retiroPilotoPorNombre = obtenerColumnaPorNombre($conection, $nombre, $apellido, 'retiro');
                        $gpsPilotoPorID = obtenerColumnaPorID($conection, $id, 'gps');
                        $gpsPilotoPorNombre = obtenerColumnaPorNombre($conection, $nombre, $apellido, 'gps');
                        $victoriasPilotoPorID = obtenerColumnaPorID($conection, $id, 'victorias');
                        $victoriasPilotoPorNombre = obtenerColumnaPorNombre($conection, $nombre, $apellido, 'victorias');
                        $podiosPilotoPorID = obtenerColumnaPorID($conection, $id, 'podios');
                        $podiosPilotoPorNombre = obtenerColumnaPorNombre($conection, $nombre, $apellido, 'podios');
                        $polesPilotoPorID = obtenerColumnaPorID($conection, $id, 'poles');
                        $polesPilotoPorNombre = obtenerColumnaPorNombre($conection, $nombre, $apellido, 'poles');
                        $vueltasPilotoPorID = obtenerColumnaPorID($conection, $id, 'vuelta_rapida');
                        $vueltasPilotoPorNombre = obtenerColumnaPorNombre($conection, $nombre, $apellido, 'vuelta_rapida');
                        $titulosPilotoPorID = obtenerColumnaPorID($conection, $id, 'titulos');
                        $titulosPilotoPorNombre = obtenerColumnaPorNombre($conection, $nombre, $apellido, 'titulos');
                        // Comparar cada dato del piloto
                        if ($debutPilotoPorID == $debutPilotoPorNombre &&
                        $retiroPilotoPorID == $retiroPilotoPorNombre &&
                        $gpsPilotoPorID == $gpsPilotoPorNombre &&
                        $victoriasPilotoPorID == $victoriasPilotoPorNombre &&
                        $podiosPilotoPorID == $podiosPilotoPorNombre &&
                        $polesPilotoPorID == $polesPilotoPorNombre &&
                        $vueltasPilotoPorID == $vueltasPilotoPorNombre &&
                        $titulosPilotoPorID == $titulosPilotoPorNombre) {
                        // Todos los datos coinciden, muestra el mensaje de enhorabuena
                        echo "correcto";
                        } else {
                            // Al menos uno de los datos no coincide
                            echo "incorrecto";
                        }
                }
        ?>