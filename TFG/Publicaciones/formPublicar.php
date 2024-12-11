<!--Formulario para crear una publicacion-->
<div class="publication">
    <form id="formularioPublicacion">
        <label for="contenido">Contenido:</label><br>
        <textarea id="contenido" name="contenido" rows="4" style="margin-bottom:50px;"></textarea><br>
        <label for="piloto">Piloto/Tema relacionado:</label>
        <input type='text' placeholder='Introduce el piloto' id='piloto' name="piloto" class="piloto" required>
        <div id='sugerencias_piloto1'></div><br>
        <label for="escuderia">Escudería/Tema relacionad@:</label>
        <input type='text' placeholder='Introduce la escudería' name='escuderia' id='escuderia' class="escuderia"
            required>
        <div id='sugerencias_escuderia'></div><br>
        <input type="submit" value="Publicar">
    </form>
</div>