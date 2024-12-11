<?php
// Incluir el archivo de conexión a la base de datos
require "conexion.php";

// Consulta para obtener nombres y apellidos de la tabla select_fav
$sql = "SELECT nombre, apellido FROM select_fav";
$stmt = $conection->prepare($sql);
$stmt->execute();
$piloto = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Consulta para obtener escuderías únicas de la tabla select_fav
$sqlEsc = "SELECT DISTINCT escuderia FROM select_fav";
$stmtEsc = $conection->prepare($sqlEsc);
$stmtEsc->execute();
$escuderia = $stmtEsc->fetchAll(PDO::FETCH_ASSOC);

// Iniciar sesión o reanudar sesión existente
session_start();

// Verificar si hay un mensaje guardado en sesión y mostrarlo
if(isset($_SESSION['texto'])){
    $text = $_SESSION['texto'];
    unset($_SESSION['texto']);
}
else {
    $text = "";
}
?>
<!-- HTML para mostrar el formulario de registro -->
<h2>Crear cuenta</h2>

<?php
// Mostrar el mensaje de error guardado en sesión, si existe
if($text != ""){
    echo "<p>$text</p>";
}
?>

<form method="POST" action="./Funciones_Comunes/guardarUser.php" id="registroForm">
    <div class="input_form">
        <input type="text" name="usr" placeholder="Usuario" required>
    </div>
    <br>
    <br>
    <div class="input_form">
        <input id="password" type="password" name="pwd" placeholder="Contraseña" required>
        <!-- Botón para alternar la visibilidad de la contraseña -->
        <img src="./IMG/eye-regular.svg" alt="ojo" id="ojo" class="toggle-password" style="width: 25px; margin-bottom: 5%;">
    </div>
    <br>
    <br>
    <div class="input_form">
        <input id="password2" type="password" name="pwd2" placeholder="Repetir la contraseña" required>
        <!-- Botón para alternar la visibilidad de la contraseña repetida -->
        <img src="./IMG/eye-regular.svg" alt="ojo" id="ojo2" onclick="togglePassword2();" style="width: 25px; margin-bottom: 5%;">
    </div>
    <!-- Espacio para mostrar errores relacionados con las contraseñas -->
    <h4 id="error" style="color: red;"></h4>
    <br>
    <br>
    <!-- Campo para seleccionar piloto favorito -->
    <div class="input_form">
        <input type="text" name="piloto" id="piloto" placeholder="Piloto favorito">
    </div>
    <!-- Contenedor para sugerencias de pilotos -->
    <div id="sugerenciaPiloto" style="cursor: pointer;"></div>
    <br>
    <br>
    <!-- Campo para seleccionar escudería favorita -->
    <div class="input_form">
        <input type="text" name="escuderia" id="escuderia" placeholder="Escuderia favorita">
    </div>
    <!-- Contenedor para sugerencias de escuderías -->
    <div id="sugerenciaEscuderia" style="cursor: pointer;"></div>
    <br>
    <br>
    <input type="submit" value="Enviar">
</form>
<br>
<!-- Enlace para iniciar sesión -->
<a href="" id="IniciarSesionLink">Iniciar sesión</a>

<!-- Script JavaScript para la validación de contraseñas y manejo de sugerencias -->
<script>
// Validar contraseñas al enviar el formulario
$('#registroForm').submit(function(event) {
    var pwd1 = $('#password').val();
    var pwd2 = $('#password2').val();
    if (pwd1 !== pwd2) {
        event.preventDefault(); // Evitar el envío del formulario si las contraseñas no coinciden
        $('#password2').css('border', '2px solid red');
        $('#password').css('border', '2px solid red');
        $('#error').text('Las contraseñas no coinciden');
    }
});

// Función para alternar la visibilidad de la contraseña
function togglePassword2() {
    var passwordInput = document.getElementById("password2");
    var passwordType = passwordInput.getAttribute("type");
    var passwordEye = document.getElementById("ojo2");
    if (passwordType === "password") {
        passwordInput.setAttribute("type", "text");
        passwordEye.setAttribute("src", "./IMG/eye-slash-regular.svg");
    } else {
        passwordInput.setAttribute("type", "password");
        passwordEye.setAttribute("src", "./IMG/eye-regular.svg");
    }
}

$(document).ready(function () {
    // Manejar sugerencias mientras el usuario escribe para el campo de piloto
    $('#piloto').keyup(function() {
        var inputText = $(this).val();
        if (inputText !== '') {
            $.ajax({
                url: './Driverle/buscar_pilotos.php',
                type: 'POST',
                data: { nombre: inputText },
                success: function(response) {
                    $('#sugerenciaPiloto').html(response);
                }
            });
        } else {
            $('#sugerenciaPiloto').empty();
        }
    });

    // Manejar la selección de una sugerencia de piloto
    $(document).on('click', '.sugerencia', function() {
        var sugerenciaSeleccionada = $(this).text();
        $('#piloto').val(sugerenciaSeleccionada);
        $('#sugerenciaPiloto').empty();
    });

    // Manejar sugerencias mientras el usuario escribe para el campo de escudería
    $('#escuderia').keyup(function() {
        var inputText = $(this).val();
        if (inputText !== '') {
            $.ajax({
                url: './Driverle/buscar_escuderias.php',
                type: 'POST',
                data: { nombre: inputText },
                success: function(response) {
                    $('#sugerenciaEscuderia').html(response);
                }
            });
        } else {
            $('#sugerenciaEscuderia').empty();
        }
    });

    // Manejar la selección de una sugerencia de escudería
    $(document).on('click', '.sugerenciasEscuderia', function() {
        var sugerenciaSeleccionada = $(this).text();
        $('#escuderia').val(sugerenciaSeleccionada);
        $('#sugerenciaEscuderia').empty();
    });

    // Cargar el formulario de inicio de sesión dinámicamente al hacer clic en el enlace
    $('#IniciarSesionLink').click(function(e) {
        e.preventDefault();
        $.ajax({
            url: '/Funciones_Comunes/iniciarSesion.php',
            type: 'GET',
            success: function(data) {
                $('#content_main').empty();
                $('#content_main').html(data);
            },
            error: function(xhr, status, error) {
                console.error('Error al cargar el inicio de sesión:', error);
            }
        });
    });
});
</script>
