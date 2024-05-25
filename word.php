<?php
	session_start();
	require 'conexion.php';
	if(!isset($_SESSION['id'])){
		header("Location: index.php");
	}
	$id = $_SESSION['id'];
	$tipo_usuario = $_SESSION['tipo_usuario'];
	if($tipo_usuario == 1){
		$where = "";
	} else if($tipo_usuario == 2){
		$where = "WHERE id=$id";
	}

	// Obtener datos del usuario
	$sql = "SELECT * FROM usuarios WHERE id = $id";
	$resultado = $mysqli->query($sql);
	$row = $resultado->fetch_assoc();
	$nombre = $row['nombre'];

	// Obtener todos los usuarios (o solo uno dependiendo del tipo de usuario)
	$sql = "SELECT * FROM usuarios $where";
	$resultado = $mysqli->query($sql);
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>Sistema Web</title>
	<link href="css/styles.css" rel="stylesheet" />
	<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="principal.php">Direccion General<br>de Analisis Criminal</a>
		<button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
		<ul class="navbar-nav ml-auto mr-0 mr-md-3 my-2 my-md-0">
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $nombre; ?><i class="fas fa-user fa-fw"></i></a>
				<div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
					<a class="dropdown-item" href="#">Configuración</a>
					<div class="dropdown-divider"></div>	
					<a class="dropdown-item" href="logout.php">Salir</a>
				</div>
			</li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<a class="nav-link" href="principal.php">
							<div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>Dashboard
						</a>
						<?php if($tipo_usuario == 1) { ?>
							<div class="sb-sidenav-menu-heading">Interface</div>
							<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
								<div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
								Base Estatal con Regiones
								<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
							</a>
							<div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
								<nav class="sb-sidenav-menu-nested nav">
									<a class="nav-link" href="upexcel.php">Subir Formato Excel</a>
									<a class="nav-link" href="word.php">Descargar Reporte de Incidencia Delictiva</a>
								</nav>
							</div>
							<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
								<div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>Pages
								<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
							</a>
							<div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
								<nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
									<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
										Authentication
										<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
									</a>
									<div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
										<nav class="sb-sidenav-menu-nested nav">
											<a class="nav-link" href="login.html">Login</a>
											<a class="nav-link" href="register.php">Register</a>
											<a class="nav-link" href="password.html">Forgot Password</a>
										</nav>
									</div>
								</nav>
							</div>
						<?php } ?>
						<div class="sb-sidenav-menu-heading">Addons</div>
						<a class="nav-link" href="charts.php">
							<div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
							Datos Generales
						</a>
						<a class="nav-link" href="tables.php">
							<div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
							Base Estatal
						</a>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">Logged in as:</div>
					<?php echo $nombre; ?>
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
			

			<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Buscador de Delitos</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        table { width: 100%; border-collapse: collapse; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <h1>Buscador de Delitos por Municipio y Fecha</h1>
    <form action="" method="post">
        <label for="municipio">Seleccione un Municipio:</label>
        <select name="municipio" id="municipio">
            <option value="">Seleccione un municipio</option>
            <!-- Los municipios se cargarán aquí usando PHP -->
            <?php
            include 'db_connection.php';  // Incluye la conexión a la base de datos

            // Obtener el municipio seleccionado previamente
            $municipioSeleccionado = '';
            if ($_SERVER["REQUEST_METHOD"] == "POST" && !empty($_POST['municipio'])) {
                $municipioSeleccionado = $_POST['municipio'];
            }

            // Consulta para obtener los municipios
            $query = "SELECT DISTINCT municipio FROM datos WHERE municipio IS NOT NULL AND municipio <> '' ORDER BY municipio";
            $result = $conn->query($query);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $municipio = htmlspecialchars($row['municipio']);
                    $selected = ($municipio == $municipioSeleccionado) ? 'selected' : '';
                    echo '<option value="' . $municipio . '" ' . $selected . '>' . $municipio . '</option>';
                }
            }
            ?>
        </select>

        <label for="fecha">Seleccione una Fecha:</label>
        <select name="fecha" id="fecha">
            <option value="">Seleccione una fecha</option>
            <!-- Las fechas se cargarán aquí usando PHP -->
            <?php
            // Consulta para obtener las fechas disponibles
            $queryFecha = "SELECT DISTINCT fecha FROM datos ORDER BY fecha";
            $resultFecha = $conn->query($queryFecha);
            if ($resultFecha->num_rows > 0) {
                while ($rowFecha = $resultFecha->fetch_assoc()) {
                    $fecha = htmlspecialchars($rowFecha['fecha']);
                    $selectedFecha = ($_POST['fecha'] == $fecha) ? 'selected' : '';
                    echo '<option value="' . $fecha . '" ' . $selectedFecha . '>' . $fecha . '</option>';
                }
            }
            ?>
        </select>
        <button type="submit">Buscar</button>
    </form>
    <br>
    <!-- Resultados de la búsqueda -->
    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST" && !empty($_POST['municipio']) && !empty($_POST['fecha'])) {
        $municipioSeleccionado = $conn->real_escape_string($_POST['municipio']);
        $fechaSeleccionada = $conn->real_escape_string($_POST['fecha']);

        $sql = "SELECT id, tipo_delito, modalidad, municipio, lugar_calle_1, colonia, fecha, vehiculo_robado_marca, modelo, tipo_vehiculo, ano, color, placas, numero_serie, folio FROM datos WHERE municipio = '$municipioSeleccionado' AND fecha = '$fechaSeleccionada'";

        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            echo '<table><thead><tr><th>ID</th><th>Tipo de Delito</th><th>Modalidad</th><th>Municipio</th><th>Calle</th><th>Colonia</th><th>Fecha</th><th>Marca del Vehículo Robado</th><th>Modelo</th><th>Tipo de Vehículo</th><th>Año</th><th>Color</th><th>Placas</th><th>Número de Serie</th><th>Folio</th></tr></thead><tbody>';
            while ($row = $result->fetch_assoc()) {
                echo '<tr><td>' . htmlspecialchars($row['id']) . '</td><td>' . htmlspecialchars($row['tipo_delito']) . '</td><td>' . htmlspecialchars($row['modalidad']) . '</td><td>' . htmlspecialchars($row['municipio']) . '</td><td>' . htmlspecialchars($row['lugar_calle_1']) . '</td><td>' . htmlspecialchars($row['colonia']) . '</td><td>' . htmlspecialchars($row['fecha']) . '</td><td>' . htmlspecialchars($row['vehiculo_robado_marca']) . '</td><td>' . htmlspecialchars($row['modelo']) . '</td><td>' . htmlspecialchars($row['tipo_vehiculo']) . '</td><td>' . htmlspecialchars($row['ano']) . '</td><td>' . htmlspecialchars($row['color']) . '</td><td>' . htmlspecialchars($row['placas']) . '</td><td>' . htmlspecialchars($row['numero_serie']) . '</td><td>' . htmlspecialchars($row['folio']) . '</td></tr>';
            }
            echo '</tbody></table>';

            // Agrega un botón para generar el documento Word y descargarlo
            echo '<form action="generar_docx.php" method="post">';
            echo '<input type="hidden" name="municipio" value="' . htmlspecialchars($municipioSeleccionado) . '">';
            echo '<input type="hidden" name="fecha" value="' . htmlspecialchars($fechaSeleccionada) . '">';
            echo '<button type="submit">Generar y Descargar Documento Word</button>';
            echo '</form>';
        } else {
            echo '<p>No se encontraron resultados para el municipio y fecha seleccionados.</p>';
        }
    }
    ?>



</body>
</html>


			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid">
					<div class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Saul Herrera</div>
						<div>
							<a href="#">Privacy Policy</a>
							&middot;
							<a href="#">Terms &amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
	<script src="assets/demo/datatables-demo.js"></script>
</body>
</html>
