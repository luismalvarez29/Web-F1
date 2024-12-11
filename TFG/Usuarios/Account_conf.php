<?php
    session_start(); // Inicia la sesión para mantener variables de sesión
    
    // Sección HTML con formulario y elementos dinámicos
?>

<div class="Account_conf">
    <div class="texto"><?php echo $_SESSION["texto"]; ?></div>
    <!-- Muestra un texto almacenado en la sesión -->

    <!-- Formulario para cambiar cuenta -->
    <form id="formCambioCuenta">
        <label for="user">Usuario:</label>
        <div class="input_form">
            <input type="text" id="user" name="user" value="<?php echo $_SESSION['usr']; ?>">
            <!-- Muestra el nombre de usuario almacenado en la sesión -->
        </div>

        <label for="pwd">Contraseña:</label>
        <div class="input_form">
            <input type="password" id="password" name="pwd" value="<?php echo $_SESSION['pwd']; ?>">
            <!-- Muestra la contraseña almacenada en la sesión -->
            <img src="./IMG/eye-regular.svg" alt="ojo" id="ojo" class="toggle-password" style="width: 25px; margin-bottom: 5%;">
            <!-- Imagen para alternar la visibilidad de la contraseña -->
        </div>

        <label for="piloto">Piloto:</label>
        <div class="input_form">
            <input type="text" id="piloto" name="piloto" value="<?php echo $_SESSION['piloto']; ?>">
            <!-- Muestra el nombre del piloto almacenado en la sesión -->
        </div>
        <div id="sugerenciaPiloto" style="cursor: pointer;"></div><br>
        <!-- Aquí se mostrarán sugerencias mientras el usuario escribe -->

        <label for="escuderia">Escudería:</label>
        <div class="input_form">
            <input type="text" id="escuderia" name="escuderia" value="<?php echo $_SESSION['escuderia']; ?>">
            <!-- Muestra el nombre de la escudería almacenada en la sesión -->
        </div>
        <div id="sugerenciaEscuderia" style="cursor: pointer;"></div><br>
        <!-- Aquí se mostrarán sugerencias mientras el usuario escribe -->

        <input type="submit" value="Cambiar"> <!-- Botón para enviar el formulario -->
    </form>

    <!-- Formulario para cerrar sesión -->
    <form action="../Funciones_Comunes/cerrarSesion.php" method="post">
        <button type="submit">Cerrar sesión</button> <!-- Botón para cerrar la sesión -->
    </form>
</div>

<!-- Script JavaScript para manejar eventos en el formulario -->
<script>
    $(document).ready(function () {
       // Manejar sugerencias mientras el usuario escribe
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

        // Manejar la selección de una sugerencia
        $(document).on('click', '.sugerencia', function() {
            var sugerenciaSeleccionada = $(this).text();
            $('#piloto').val(sugerenciaSeleccionada);
            $('#sugerenciaPiloto').empty();
        });

        // Manejar sugerencias mientras el usuario escribe
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

        // Manejar la selección de una sugerencia
        $(document).on('click', '.sugerenciasEscuderia', function() {
            var sugerenciaSeleccionada = $(this).text();
            $('#escuderia').val(sugerenciaSeleccionada);
            $('#sugerenciaEscuderia').empty();
        });

        // Manejar el envío del formulario de cambio de cuenta
        $(document).on('submit', '#formCambioCuenta', function(event) {
            event.preventDefault(); // Evitar envío predeterminado del formulario

            // Obtener datos del formulario
            var newUsr = $("#user").val();
            var newPwd = $("#password").val();
            var newPil = $("#piloto").val();
            var newEsc = $("#escuderia").val();

            // Realizar solicitud AJAX para enviar los datos a 'cambioCuenta.php'
            $.ajax({
            type: "POST",
            url: "./Funciones_Comunes/cambioCuenta.php",
            data: {
                usuario: newUsr,
                contraseña: newPwd,
                piloto: newPil,
                escuderia: newEsc
            },
            dataType: 'json',  // Asegúrate de que la respuesta se maneje como JSON
            success: function(response) {
                // Manejar la respuesta del servidor (por ejemplo, mostrar un mensaje de éxito)
                console.log(response);
                alert(response.message);
                if (response.status) {
                    recargarPagina(); // Función para recargar la página después de realizar el cambio
                }
            },
            error: function(xhr, status, error) {
                // Manejar errores de la solicitud AJAX
                console.error("Error en la solicitud AJAX:", error);
            }
        });
        });

        // Otras funciones y eventos pueden ser manejados aquí
    });
</script>
