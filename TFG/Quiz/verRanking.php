<?php
session_start();
if (!isset($_SESSION['usr'])) {
    header('Location: ../Funciones_Comunes/iniciarSesion.php');
    exit();
}
require "../Funciones_Comunes/conexion.php";

// Función para obtener el total de filas en la tabla para un nivel específico
function getTotalRows($conection, $nivel)
{
    $sql = "SELECT COUNT(*) AS total FROM ranking_quiz WHERE nivel = :nivel";
    $stmt = $conection->prepare($sql);
    $stmt->bindParam(":nivel", $nivel);
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    return $row['total'];
}

// Función para obtener los datos de la página actual
function getPageData($conection, $nivel, $start, $rowsPerPage)
{
    $sql = "SELECT * FROM ranking_quiz WHERE nivel = :nivel ORDER BY aciertos DESC, tiempo ASC LIMIT :start, :rowsPerPage";
    $stmt = $conection->prepare($sql);
    $stmt->bindParam(":nivel", $nivel);
    $stmt->bindParam(":start", $start, PDO::PARAM_INT);
    $stmt->bindParam(":rowsPerPage", $rowsPerPage, PDO::PARAM_INT);
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

$nivel = $_SESSION['nivel'];

// Definir el número de filas por página
$rowsPerPage = 10;

// Calcular el número total de páginas
$totalRows = getTotalRows($conection, $nivel);
$totalPages = ceil($totalRows / $rowsPerPage);

// Determinar la página actual
$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
$page = max(1, min($page, $totalPages)); // Asegurar que la página está dentro del rango válido

// Calcular el índice de inicio para la consulta
$start = ($page - 1) * $rowsPerPage;

// Obtener los datos de la página actual
$data = getPageData($conection, $nivel, $start, $rowsPerPage);
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

<h2>Ranking nivel <?php echo $nivel; ?></h2>
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
        $position = ($page - 1) * $rowsPerPage + 1;
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
    $('.pagination a').removeClass('active');
    $('.pagination a').each(function() {
        if ($(this).text() == page) {
            $(this).addClass('active');
        }
    });
}
</script>
