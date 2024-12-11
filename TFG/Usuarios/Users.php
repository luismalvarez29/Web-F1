<div class=nav_Account_Container>
    <nav class="nav_Account_Header">
        <a id="Publications" href="#" class="active_Account">
            <div>Mis Publicaciones</div>
        </a>
        <a id="MyAccount" href="#">
            <div>Gestionar Cuenta</div>
        </a>
    </nav>
</div>
<div id="contenido_User">
    <?php include("Publication.php");?>
</div>
<script>
$(document).ready(function(e) {
    var items = document.querySelectorAll('.nav_Account_Header a');

    // Iteramos sobre cada enlace
    items.forEach(function(item) {
        // Añadimos un listener de evento 'click' a cada enlace
        item.addEventListener('click', function() {
            // Quitamos la clase 'active' de todos los enlaces
            items.forEach(function(l) {
                l.classList.remove('active_Account');
            });
            // Agregamos la clase 'active' solo al enlace clicado
            this.classList.add('active_Account');
        });
    });

    $('#Publications').click(function(e) {
        e.preventDefault(); // Evita el comportamiento predeterminado del enlace

        // Realiza la solicitud AJAX para cargar el contenido de quiz.php
        $.ajax({
            url: './Usuarios/Publication.php',
            type: 'GET',
            success: function(data) {
                // Borra el contenido actual antes de agregar el nuevo contenido
                $('#contenido_User').empty();

                // Coloca el contenido recibido en el #content_main
                $('#contenido_User').html(data);
            },
            error: function(xhr, status, error) {
                console.error('Error al cargar el inicio de sesión:', error);
            }
        });
    });

    $('#MyAccount').click(function(e) {
        e.preventDefault(); // Evita el comportamiento predeterminado del enlace

        // Realiza la solicitud AJAX para cargar el contenido de quiz.php
        $.ajax({
            url: './Usuarios/Account_conf.php',
            type: 'GET',
            success: function(data) {
                // Borra el contenido actual antes de agregar el nuevo contenido
                $('#contenido_User').empty();

                // Coloca el contenido recibido en el #content_main
                $('#contenido_User').html(data);
            },
            error: function(xhr, status, error) {
                console.error('Error al cargar el inicio de sesión:', error);
            }
        });
    });

});
</script>