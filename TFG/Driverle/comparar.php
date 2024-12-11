<?php
include('conexion_Driverle.php');
session_start();

if (!isset($_SESSION['id'])) {
    // Redirigir al usuario a la página de inicio si no hay sesión
    header('location: ../index.php');
    exit();
}

$id = $_SESSION['id'];
$pilotoAleatorio = obtenerDatosPilotoAleatorio($conection);

// Inicializar la lista de pilotos ingresados si no existe
if (!isset($_SESSION['pilotos_ingresados'])) {
    $_SESSION['pilotos_ingresados'] = [];
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['piloto'])) {
        // Obtén el valor ingresado en el campo de texto
        $nombre_apellido = $_POST['piloto'];

        // Verifica si el piloto ya ha sido ingresado
        if (in_array($nombre_apellido, $_SESSION['pilotos_ingresados'])) {
            echo "repetido";
        } else {
            // Agrega el piloto a la lista de pilotos ingresados
            $_SESSION['pilotos_ingresados'][] = $nombre_apellido;

            // Separa el nombre y el apellido (asumiendo que están separados por espacios)
            $parts = explode(' ', $nombre_apellido);

            // Verifica si se han ingresado al menos dos palabras
            if (count($parts) > 1) {
                $nombre = $parts[0]; // Primer elemento es el nombre
                $apellido = implode(' ', array_slice($parts, 1)); // Los demás elementos son el apellido

                //Sacar los valores del piloto introducido y del que hay que adivinar
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

                // Determina el color del fondo del td según el valor de cada apartado
                $bgColorClassDebut = $debutPilotoPorID < $debutPilotoPorNombre ? 'orange-bg' : ($debutPilotoPorID == $debutPilotoPorNombre ? 'green-bg' : 'purple-bg');
                $bgColorClassRetiro = $retiroPilotoPorID < $retiroPilotoPorNombre ? 'orange-bg' : ($retiroPilotoPorID == $retiroPilotoPorNombre ? 'green-bg' : 'purple-bg');
                $bgColorClassGps = $gpsPilotoPorID < $gpsPilotoPorNombre ? 'orange-bg' : ($gpsPilotoPorID == $gpsPilotoPorNombre ? 'green-bg' : 'purple-bg');
                $bgColorClassVictorias = $victoriasPilotoPorID < $victoriasPilotoPorNombre ? 'orange-bg' : ($victoriasPilotoPorID == $victoriasPilotoPorNombre ? 'green-bg' : 'purple-bg');
                $bgColorClassPodios = $podiosPilotoPorID < $podiosPilotoPorNombre ? 'orange-bg' : ($podiosPilotoPorID == $podiosPilotoPorNombre ? 'green-bg' : 'purple-bg');
                $bgColorClassPoles = $polesPilotoPorID < $polesPilotoPorNombre ? 'orange-bg' : ($polesPilotoPorID == $polesPilotoPorNombre ? 'green-bg' : 'purple-bg');
                $bgColorClassVueltaRapida = $vueltasPilotoPorID < $vueltasPilotoPorNombre ? 'orange-bg' : ($vueltasPilotoPorID == $vueltasPilotoPorNombre ? 'green-bg' : 'purple-bg');
                $bgColorClassTitulos = $titulosPilotoPorID < $titulosPilotoPorNombre ? 'orange-bg' : ($titulosPilotoPorID == $titulosPilotoPorNombre ? 'green-bg' : 'purple-bg');

                // Imprime las filas de la tabla con los colores determinados
                echo "<td>$nombre_apellido</td>
                <td class='$bgColorClassDebut'>".$debutPilotoPorNombre."</td>
                <td class='$bgColorClassRetiro'>".$retiroPilotoPorNombre."</td>
                <td class='$bgColorClassGps'>".$gpsPilotoPorNombre."</td>
                <td class='$bgColorClassVictorias'>".$victoriasPilotoPorNombre."</td>
                <td class='$bgColorClassPodios'>".$podiosPilotoPorNombre."</td>
                <td class='$bgColorClassPoles'>".$polesPilotoPorNombre."</td>
                <td class='$bgColorClassVueltaRapida'>".$vueltasPilotoPorNombre."</td>
                <td class='$bgColorClassTitulos'>".$titulosPilotoPorNombre."</td>";
            }
        }
    }
}
?>
