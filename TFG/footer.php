<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/Quiz/quiz.js"></script>
<script>
$(document).ready(function() {
    // Manejar sugerencias mientras el usuario escribe
    $(document).on('keyup', '#piloto', function() {
        var inputText = $(this).val();
        //var inputNumber = $(this).attr('id').replace('piloto', '');
        if (inputText !== '') {
            $.ajax({
                url: './Driverle/buscar_pilotos.php',
                type: 'POST',
                data: {
                    nombre: inputText
                },
                success: function(response) {
                    $('#sugerencias_piloto1').html(response);
                }
            });
        } else {
            $('#sugerencias_piloto1').empty();
        }
    });

    // Manejar la selección de una sugerencia
    $(document).on('click', '.sugerencia', function() {
        var sugerenciaSeleccionada = $(this).text();
        //var inputNumber = $(this).closest('.sugerencias-piloto').attr('id').replace('sugerencias', '');
        $('#piloto').val(sugerenciaSeleccionada);
        $('#sugerencias_piloto1').empty();
    });
    $(document).on('keyup', '.escuderia', function() {
        var inputText = $(this).val();
        var inputNumber = $(this).attr('id').replace('piloto', '');
        if (inputText !== '') {
            $.ajax({
                url: './Driverle/buscar_escuderias.php',
                type: 'POST',
                data: {
                    nombre: inputText
                },
                success: function(response) {
                    $('#sugerencias_escuderia').html(response);
                }
            });
        } else {
            $('#sugerencias_escuderia').empty();
        }
    });

    // Manejar la selección de una sugerencia
    $(document).on('click', '.sugerenciasEscuderia', function() {
        var sugerenciaSeleccionada = $(this).text();
        //var inputNumber = $(this).parent().attr('id').replace('sugerencias', '');
        $('#escuderia').val(sugerenciaSeleccionada);
        $('#sugerencias_escuderia').empty();
    });


    // Subir publicacion
    $(document).on('submit', '#formularioPublicacion', function(event) {
        event.preventDefault(); // Evita que se envíe el formulario de forma predeterminada

        // Capturar los valores del formulario
        var contenido = $("#contenido").val();
        var piloto = $("#piloto").val();
        var escuderia = $("#escuderia").val();

        // Realizar la solicitud AJAX
        $.ajax({
            type: "POST",
            url: "./Funciones_Comunes/publicar.php",
            data: {
                contenido: contenido,
                piloto: piloto,
                escuderia: escuderia
            },
            success: function(response) {
                // Aquí puedes manejar la respuesta del servidor, si es necesario
                console.log("Publicación realizada con éxito");
                // Recargar la página
                location.reload();
            },
            error: function(xhr, status, error) {
                // Manejar el error si la solicitud AJAX falla
                console.error("Error al realizar la publicación: " + error);
            }
        });
    });


    // Selecciona todos los elementos 'a' dentro de '.main_Header'
    var links = document.querySelectorAll('.main_Header a');

    // Itera sobre cada enlace ('a') encontrado
    links.forEach(function(link) {
        // Agrega un evento 'click' a cada enlace
        link.addEventListener('click', function() {
            // Remueve la clase 'active' de todos los enlaces
            links.forEach(function(l) {
                l.classList.remove('active');
            });
            // Agrega la clase 'active' solo al enlace clickeado
            this.classList.add('active');
        });
    });

    // Obtiene el enlace con ID generado dinámicamente desde PHP
    var link = document.getElementById('<?php echo $registro;?>');

    // Verifica el ID del enlace y modifica su contenido de texto basado en la condición
    if (link.id === 'LogLink') {
        link.textContent = 'Log In/Sign up'; // Cambia el texto a 'Log In/Sign up'
    } else if (link.id === 'PersonalLink') {
        // Cambia el texto a nombre de usuario si la sesión está iniciada, de lo contrario, muestra 'Nombre de Usuario'
        link.textContent = '<?php echo isset($_SESSION['usr']) ? $_SESSION['usr'] : 'Nombre de Usuario'; ?>';
    }


    $('.nav_Enlaces_Header').on('click', '#LogLink, #wordleLink, #guessLink, #quizLink, #PersonalLink, #cerrarSesion',
        function(e) {
            e.preventDefault();
            var url;
            switch (this.id) {
                case 'LogLink':
                    url = '/Funciones_Comunes/iniciarSesion.php';
                    break;
                case 'wordleLink':
                    <?php
                        if(isset($_SESSION['usr'])){
                            echo "url = '/Driverle/index.php';";    
                        }else{
                            echo "url = '/Funciones_Comunes/iniciarSesion.php';";
                        }
                    ?>
                    break;
                case 'guessLink':
                    <?php
                        if(isset($_SESSION['usr'])){
                            echo "url = '/Guess_Who/guess.php';";    
                        }else{
                            echo "url = '/Funciones_Comunes/iniciarSesion.php';";
                        }
                    ?>
                    break;
                case 'quizLink':
                    <?php
                        if(isset($_SESSION['usr'])){
                            echo "url = '/Quiz/quiz.php';";    
                        }else{
                            echo "url = '/Funciones_Comunes/iniciarSesion.php';";
                        }
                    ?>
                    break;
                case 'PersonalLink':
                    <?php
                        if(isset($_SESSION['usr'])){
                            echo "url = '/Usuarios/Users.php';";   
                        }else{
                            echo "url = '/Funciones_Comunes/iniciarSesion.php';";
                        }
                    ?>
                    break;
                case 'cerrarSesion':
                    url = '/Funciones_Comunes/cerrarSesion.php';
            }
            $.ajax({
                url: url,
                type: 'GET',
                success: function(data) {
                    $('#content_main').empty().html(data);
                    if(url == '/Funciones_Comunes/cerrarSesion.php'){
                        recargarPagina();
                    }
                },
                error: function(data) {
                    console.error('Error al cargar:', error);
                }
            });
        });

    // Unificar la carga de contenido para diferentes enlaces en .nav_Account_Header
    $('#content_main').on('click', '#publiParaTi, #publiGeneral, #publicar', function(e) {
        e.preventDefault();
        var url;
        switch (this.id) {
            case 'publiParaTi':
                url = '/Publicaciones/Publicaciones_Filtro.php';
                break;
            case 'publiGeneral':
                recargarPagina();
                break;
            case 'publicar':
                url = '../Publicaciones/formPublicar.php';
                break;
        }
        $.ajax({
            url: url,
            type: 'GET',
            success: function(data) {
                $('#publiContent').empty().html(data);
            }
        });
    });

    // Manejar clase 'active' en los enlaces del header
    var links = document.querySelectorAll('.main_Header a, .nav_Account_Header a');
    links.forEach(function(link) {
        link.addEventListener('click', function() {
            links.forEach(function(l) {
                l.classList.remove('active');
            });
            this.classList.add('active');
        });
    });

    // Manejar texto de enlaces según sesión
    <?php if (isset($registro)): ?>
    var link = document.getElementById('<?php echo $registro; ?>');
    if (link && link.id === 'LogLink') {
        link.textContent = 'Log In/Sign up';
    } else if (link && link.id === 'PersonalLink') {
        link.textContent = '<?php echo isset($_SESSION['usr']) ? $_SESSION['usr'] : 'Nombre de Usuario'; ?>';
    }
    <?php endif; ?>

    // Cargar contenido de inicio de sesión basado en la sesión
    <?php
    if (isset($_SESSION['error']) && $_SESSION['error'] == "Usuario o contraseña incorrectos") {
        echo "loadLoginContent();";
    } elseif (isset($_SESSION['texto']) && ($_SESSION['texto'] == "El usuario que has introducido ya existe." || $_SESSION['texto'] == "Error al registrar el usuario.")) {
        echo "loadLoginContent();";
    }
    ?>
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

    $('.mobile-menu a').click(closeMobileMenu);
    $(document).on('click', '.toggle-password', function(e){
        togglePassword();
    });
});

//Menu hamburguesa movil
function toggleMenu() {
    const mobileMenu = document.getElementById('mobileMenu');
    const main = document.getElementById('content_main');
    if (mobileMenu.style.display === 'flex') {
        mobileMenu.style.display = 'none';
        main.style.marginTop = '7%';
    } else {
        mobileMenu.style.display = 'flex';
        main.style.marginTop = '350px';
    }
}
// Función para alternar la visibilidad de la contraseña
function togglePassword() {
        var passwordInput = document.getElementById("password");
        var passwordType = passwordInput.getAttribute("type");
        var passwordEye  = document.getElementById("ojo");
        if (passwordType === "password") {
            passwordInput.setAttribute("type", "text");
            passwordEye.setAttribute("src", "./IMG/eye-slash-regular.svg");
        } else {
            passwordInput.setAttribute("type", "password");
            passwordEye.setAttribute("src", "./IMG/eye-regular.svg");
        }
    }

// Asegurarse de que el estilo correcto se aplique al cambiar el tamaño de la pantalla
window.addEventListener('resize', function() {
    const main = document.getElementById('content_main');
    const screenWidth = window.innerWidth;

    if (screenWidth >= 768) {
        // Pantalla de tamaño escritorio
        main.style.marginTop = '15%';
    } else {
        // Pantalla de tamaño móvil
        const mobileMenu = document.getElementById('mobileMenu');
        if (mobileMenu.style.display === 'flex') {
            main.style.marginTop = '270px';
        } else {
            main.style.marginTop = '15%';
        }
    }
});

function closeMobileMenu() {
    // Obtener referencia al elemento del menú móvil por su ID
    const mobileMenu = document.getElementById('mobileMenu');
    
    // Obtener referencia al elemento principal de contenido por su ID
    const Main = document.getElementById('content_main');
    
    // Ocultar el menú móvil estableciendo su estilo de visualización a 'none'
    mobileMenu.style.display = 'none';
    
    // Ajustar el margen superior del contenido principal
    Main.style.marginTop = '20px';
}

function loadLoginContent() {
    // Realiza una petición AJAX para cargar el contenido de inicio de sesión desde el servidor
    $.ajax({
        url: '/Funciones_Comunes/iniciarSesion.php', // URL del script PHP que maneja el inicio de sesión
        type: 'GET', // Tipo de petición HTTP GET
        success: function(data) {
            // Función que se ejecuta cuando la petición AJAX es exitosa
            $('#content_main').empty(); // Vacía el contenido actual del elemento con ID 'content_main'
            $('#content_main').html(data); // Inserta el nuevo contenido recibido (data) en el elemento 'content_main'
        },
        error: function(xhr, status, error) {
            // Función que se ejecuta si hay un error durante la petición AJAX
            console.error('Error al cargar el inicio de sesión:', error); // Muestra un mensaje de error en la consola del navegador
        }
    });
}

function recargarPagina() {
    // Recarga la página actual
    location.reload();
}

function loadLoginContent() {
    // Realiza una petición AJAX para cargar el contenido de inicio de sesión desde el servidor
    $.ajax({
        url: '/Funciones_Comunes/iniciarSesion.php', // URL del script PHP que maneja el inicio de sesión
        type: 'GET', // Tipo de petición HTTP GET
        success: function(data) {
            // Función que se ejecuta cuando la petición AJAX es exitosa
            $('#content_main').empty().html(data); // Vacía el contenido actual y luego inserta el nuevo contenido recibido (data)
        },
        error: function(xhr, status, error) {
            // Función que se ejecuta si hay un error durante la petición AJAX
            console.error('Error al cargar el inicio de sesión:', error); // Muestra un mensaje de error en la consola del navegador
        }
    });
}

// Obtener el botón
const scrollToTopBtn = document.getElementById("scrollToTopBtn");

// Mostrar el botón cuando el usuario desplaza hacia abajo 20px desde la parte superior
window.onscroll = function() {
    scrollFunction();
};

function scrollFunction() {
    // Verifica si el desplazamiento vertical del cuerpo (document.body) es mayor que 20px
    // o si el desplazamiento vertical del elemento raíz del documento (document.documentElement) es mayor que 20px
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        // Si se cumple la condición (scroll mayor a 20px), realiza las siguientes acciones:
        scrollToTopBtn.style.display = "block";   // Mostrar el botón de scroll hacia arriba cambiando su estilo a "block"
        scrollToTopBtn.style.position = "fixed";  // Fijar el botón en posición fija en la ventana
        scrollToTopBtn.style.bottom = "20px";     // Colocar el botón 20px desde la parte inferior de la ventana
    } else {
        // Si la condición no se cumple (scroll menor o igual a 20px), realiza esta acción:
        scrollToTopBtn.style.display = "none";    // Ocultar el botón de scroll hacia arriba cambiando su estilo a "none"
    }
}

// Cuando el usuario hace clic en el botón, desplázate hacia arriba de la página
scrollToTopBtn.onclick = function() {
    document.body.scrollTop = 0; // Para Safari
    document.documentElement.scrollTop = 0; // Para Chrome, Firefox, IE y Opera
};

</script>
<footer style='text-align: center; padding-top: 5%; padding-bottom: 5%;'>
    &copy Fasrel S.L. | Derechos reservados
</footer>