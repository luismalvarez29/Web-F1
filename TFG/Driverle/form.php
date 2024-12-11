<?php
include("conexion_Driverle.php");
function insertar($conection, $nombre, $apellido, $fecha, $nation, $equipo, $debut, $retiro, $gps, $victoria, $podio, $poles, $vuelta, $titulo){
    try {
        $bd = "INSERT INTO pilotos_info (nombre, apellidos, fecha_nacimiento,  nacionalidad, escuderia, debut, retiro, gps, victorias, podios, poles, vuelta_rapida, titulos) 
        VALUES ('$nombre', '$apellido', '$fecha', '$nation', '$equipo', '$debut',  '$retiro', '$gps', '$victoria', '$podio', '$poles', '$vuelta', '$titulo')";
        $conection-> exec($bd);
        echo "Se ha añadido correctamente";    
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}
?>