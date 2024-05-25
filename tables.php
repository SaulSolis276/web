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
			
            <?php
include 'db_connection.php';
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Tabla de datos</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
</head>
<body>
<div class="container">
    <h2>Base Estatal con Regiones</h2>
    <div style="overflow-x:auto;">
    <table id="tabla-datos" class="display nowrap" style="width:100%">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>hora_trunca</th>
                    <th>folio</th>
                    <th>folio C5</th>
                    <th>fecha</th>
                    <th>dia</th>
                    <th>hora</th>
                    <th>lugar_calle_1</th>
                    <th>num</th>
                    <th>lugar_calle_2</th>
                    <th>direccion_completa</th>
                    <th>x_coord</th>
                    <th>y_coord</th>
                    <th>tipo</th>
                    <th>colonia</th>
                    <th>sector</th>
                    <th>nuevo_sector</th>
                    <th>cuadrante</th>
                    <th>sector_2023</th>
                    <th>municipio</th>
                    <th>region_2023</th>
                    <th>distritos</th>
                    <th>bien_juridico</th>
                    <th>tipo_delito</th>
                    <th>subtipo_delito</th>
                    <th>modalidad</th>
                    <th>giro</th>
                    <th>caracteristicas_robo</th>
                    <th>modus_operandi</th>
                    <th>redaccion_tarjeta</th>
                    <th>titulo</th>
                    <th>redaccion_anexo</th>
                    <th>modo_fuga</th>
                    <th>tipo_arma</th>
                    <th>caracteristicas_cadaver</th>
                    <th>inferencia_homicidio</th>
                    <th>objetos_robados</th>
                    <th>autoridad</th>
                    <th>observaciones</th>
                    <th>cdi</th>
                    <th>objetos_asegurados</th>
                    <th>situacion</th>
                    <th>detenidos</th>
                    <th>numero_detenidos</th>
                    <th>cantidad_responsables</th>
                    <th>hombre</th>
                    <th>mujer</th>
                    <th>victimas_hombres</th>
                    <th>victimas_mujeres</th>
                    <th>no_identificado</th>
                    <th>total_victimas</th>
                    <th>nombre_victima</th>
                    <th>antecedentes_penales</th>
                    <th>ruta</th>
                    <th>vehiculo_robado_marca</th>
                    <th>modelo</th>
                    <th>tipo_vehiculo</th>
                    <th>ano</th>
                    <th>color</th>
                    <th>placas</th>
                    <th>numero_serie</th>
                    <th>estado_placas</th>
                    <th>vehiculo_robado_involucrado</th>
                    <th>tipo_involucrado</th>
                    <th>modelo_involucrado</th>
                    <th>color_involucrado</th>
                    <th>placas_involucrado</th>
                    <th>numero_serie_involucrado</th>
                    <th>estado_placas_involucrado</th>
                    <th>mes</th>
                    <th>ano_evento</th>
                    <th>semana_lunes</th>
                    <th>numero_semana</th>
                    <th>regiones_11</th>
                    <th>regiones_22</th>
                    <th>anexo</th>
                </tr>
            </thead>
            <tbody>
            <?php include 'alldata_logic.php'; ?>
            </tbody>
        </table>
    </div>
</div>



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
