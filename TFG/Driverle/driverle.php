<script type="text/javascript" src="../Driverle/librerias/jquery-3.4.1.js"></script>
<!-- Incluye el archivo de JavaScript personalizado -->
<script src="../Driverle/script.js"></script>

<style>
    /* Estilos para la tabla */
    table {
        margin: 0 auto; /* Centra la tabla horizontalmente */
    }
    th, td {
        border: 1px solid black; /* Bordes de las celdas */
        padding: 15px; /* Espaciado interno de las celdas */
    }
    /* Clases para el color de fondo de las celdas */
    .orange-bg {
        background-color: orange;
    }
    .green-bg {
        background-color: green;
    }
    .purple-bg {
        background-color: purple;
    }
    .datos {
        border: none; /* Sin borde para las celdas con la clase datos */
    }
    /* Estilos responsivos para pantallas pequeñas */
    @media only screen and (max-width: 480px) {
        table {
            width: 100%; /* La tabla ocupa el 100% del ancho de la pantalla */
        }
    }
    #sugerencias {
        cursor: pointer; /* El cursor cambia a una mano para los elementos con id sugerencias */
    }
    /* Contenedor con desplazamiento horizontal */
    .table-container {
        overflow-x: auto; /* Habilita el desplazamiento horizontal */
        margin: 20px auto; /* Margen superior e inferior de 20px, y centrado horizontal */
        width: 90%; /* Ancho del 90% del contenedor */
    }
</style>

<!-- Título principal de la página con un enlace que abre una ventana emergente -->
<h1>DRIVERLE <a href="#" onclick="abrirVentana();"><img src="./Driverle/info.png" alt="info" width="25px"></a></h1>

<!-- Contenedor de la tabla con desplazamiento horizontal -->
<div class="table-container">
    <table>
        <!-- Encabezado de la tabla con los nombres de las columnas -->
        <tr>
            <th>nombre</th><th>debut</th><th>retiro</th><th>gps</th><th>victorias</th><th>podios</th><th>poles</th><th>vuelta_rapida</th><th>titulos</th>
        </tr>
        <!-- Filas de la tabla que serán llenadas dinámicamente -->
        <tr id="intento1"></tr>
        <tr id="intento2"></tr>
        <tr id="intento3"></tr>
        <tr id="intento4"></tr>
        <tr id="intento5"></tr>
        <tr id="intento6"></tr>
        <tr id="intento7"></tr>
        <tr id="intento8"></tr>
    </table>
</div>

<!-- Formulario para buscar pilotos -->
<form id="comparar">
    <input type="text" placeholder="Introduce el nombre del piloto" name="piloto" id="piloto" required>
    <!-- Contenedor para las sugerencias de búsqueda -->
    <div id="sugerencias" style="width: 100%;"></div><br>
    <button type="submit" id="boton">Buscar Piloto</button>
</form>

<!-- Contenedor para mostrar mensajes de error -->
<div id="error"></div>

<!-- Información sobre el significado de los colores de fondo en las celdas -->
<div id="info">
    <table>
        <tr>
            <td class="green-bg" style="width: 40px;"></td><td class="datos">Correcto</td>
            <td class="purple-bg" style="width: 40px;"></td><td class="datos">Mayor</td>
            <td class="orange-bg" style="width: 40px;"></td><td class="datos">Menor</td>
        </tr>
    </table>
</div>
