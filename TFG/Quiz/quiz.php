<?php
    // Comprueba si el usuario ha iniciado sesión para poder entrar en el quiz
    session_start();  // Inicia la sesión para mantener datos entre páginas
    if (!isset($_SESSION['usr'])) {  // Verifica si la variable de sesión 'usr' está definida
        header('Location: ./Funciones_Comunes/iniciarSesion.php');  // Redirige al usuario a la página de inicio de sesión si no ha iniciado sesión
        exit();  // Finaliza el script para asegurar que no se procese más código
    }
?>
<h1 class="quiz_title">BIENVENIDO AL QUIZ DE LA F1</h1>
<div id="seleccion" class="quiz_seleccion">
    <h3>Selecciona el nivel del Quiz</h3>
    <div class="quiz_level">
        <button id="facil" class="nivelbtn">Nivel Facil</button><br>
        <button id="medio" class="nivelbtn">Nivel Medio</button><br>
        <button id="dificil" class="nivelbtn">Nivel Difícil</button><br>
    </div>
</div>
<div id="cronometroQuiz" style="display: none;">
    <h3 id="tiempoQuiz">Tiempo transcurrido: 0 segundos</h3>
</div>
<div id="divPreguntas">

</div>
