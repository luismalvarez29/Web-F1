<?php
session_start();
// Verificar si el usuario está autenticado; si no lo está, redirige a la página de inicio
if (!isset($_SESSION['usr'])) {
    header('Location: ./index.php');
    exit();
}
require "../Funciones_Comunes/conexion.php";

// Función para obtener el total de filas en la tabla de ranking_guess
function getTotalRows($conection)
{
    $sql = "SELECT COUNT(*) AS total FROM ranking_guess";
    $stmt = $conection->prepare($sql);
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    return $row['total'];
}

// Función para obtener los datos de la página actual del ranking
function getPageData($conection, $start, $rowsPerPage)
{
    $sql = "SELECT * FROM ranking_guess ORDER BY aciertos DESC, tiempo ASC LIMIT $start, $rowsPerPage";
    $stmt = $conection->prepare($sql);
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

// Definir el número de filas por página
$rowsPerPage = 10;

// Calcular el número total de filas en la tabla
$totalRows = getTotalRows($conection);
$totalPages = ceil($totalRows / $rowsPerPage);

// Determinar la página actual basada en el parámetro GET 'page'
$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
$page = max(1, min($page, $totalPages)); // Asegurar que la página está dentro del rango válido

// Calcular el índice de inicio para la consulta basado en la página actual
$start = ($page - 1) * $rowsPerPage;

// Obtener los datos de la página actual del ranking
$data = getPageData($conection, $start, $rowsPerPage);
?>

<style>
table,
th,
td {
    border: 1px solid black;
    padding: 8px;
    text-align: center;
}

.pagination {
    display: flex;
    justify-content: center;
}

.pagination a {
    color: white;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
    transition: background-color .3s;
    border: 1px solid #ddd;
    margin: 0 4px;
}

.pagination a.active {
    background-color: #007bff;
    color: white;
    border: 1px solid #007bff;
}

.pagination a:hover:not(.active) {
    background-color: #ddd;
}
@media only screen and (max-width: 480px) {
    table,
    th,
    td {
        width: 100%;
    }
}
</style>

<h2>Ranking Guess</h2>
<table>
    <thead>
        <tr>
            <th>Posición</th>
            <th>Usuario</th>
            <th>Aciertos</th>
            <th>Tiempo</th>
        </tr>
    </thead>
    <tbody>
        <?php
        // Calcular la posición inicial en la tabla
        $position = ($page - 1) * $rowsPerPage + 1;
        // Iterar sobre los datos obtenidos y mostrar en la tabla
        foreach ($data as $row) {
            echo "<tr>";
            echo "<td>$position</td>";
            echo "<td>{$row['user']}</td>";
            echo "<td>{$row['aciertos']}</td>";
            echo "<td>{$row['tiempo']}</td>";
            echo "</tr>";
            $position++;
        }
        ?>
    </tbody>
</table>

<div class="pagination">
    <?php
    // Mostrar botones de paginación
    for ($i = 1; $i <= $totalPages; $i++) {
        $activeClass = ($i === $page) ? "active" : "";
        echo "<a href='javascript:void(0)' class='$activeClass' onclick='loadPage($i)'>$i</a>";
    }
    ?>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
// Función para cargar una página mediante AJAX
function loadPage(page) {
    $.ajax({
        url: '<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>',
        type: 'GET',
        data: {
            page: page
        },
        success: function(response) {
            // Reemplazar el contenido de la tabla y la paginación con los datos recibidos
            $('table tbody').html($(response).find('tbody').html());
            $('.pagination').html($(response).find('.pagination').html());
            updateActiveLink(page); // Actualizar el enlace activo
        },
        error: function(xhr, status, error) {
            console.error('Error al cargar la página:', error);
        }
    });
}

// Función para actualizar el enlace activo
function updateActiveLink(page) {
    $('.pagination a').removeClass('active'); // Quitar la clase 'active' de todos los enlaces
    $('.pagination a').each(function() {
        if ($(this).text() == page) {
            $(this).addClass('active'); // Agregar la clase 'active' al enlace de la página actual
        }
    });
}
</script>
