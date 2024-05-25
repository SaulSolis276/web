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
    <h1>Buscador de Delitos por Municipio</h1>
    <form action="" method="post">
        <label for="municipio">Seleccione un Municipio:</label>
        <select name="municipio" id="municipio">
            <option value="">Seleccione un municipio</option>
            <!-- Los municipios se cargarán aquí usando PHP -->
            <?php
            include 'db_connection.php';  // Incluye la conexión a la base de datos

            // Consulta para obtener los municipios
            $query = "SELECT DISTINCT municipio FROM datos WHERE municipio IS NOT NULL AND municipio <> '' ORDER BY municipio";
            $result = $conn->query($query);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo '<option value="' . htmlspecialchars($row['municipio']) . '">' . htmlspecialchars($row['municipio']) . '</option>';
                }
            }
            ?>
        </select>
        <button type="submit">Buscar</button>
    </form>
    <br>
    <!-- Resultados de la búsqueda -->
    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST" && !empty($_POST['municipio'])) {
        $municipioSeleccionado = $conn->real_escape_string($_POST['municipio']);

        $sql = "SELECT id, tipo_delito, modalidad, municipio, lugar_calle_1, colonia, fecha, vehiculo_robado_marca, modelo, tipo_vehiculo, ano, color, placas, numero_serie, folio FROM datos WHERE municipio = '$municipioSeleccionado'";

        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            echo '<table><thead><tr><th>ID</th><th>Tipo de Delito</th><th>Modalidad</th><th>Municipio</th><th>Calle</th><th>Colonia</th><th>Fecha</th><th>Marca del Vehículo Robado</th><th>Modelo</th><th>Tipo de Vehículo</th><th>Año</th><th>Color</th><th>Placas</th><th>Número de Serie</th><th>Folio</th></tr></thead><tbody>';
            while ($row = $result->fetch_assoc()) {
                echo '<tr><td>' . htmlspecialchars($row['id']) . '</td><td>' . htmlspecialchars($row['tipo_delito']) . '</td><td>' . htmlspecialchars($row['modalidad']) . '</td><td>' . htmlspecialchars($row['municipio']) . '</td><td>' . htmlspecialchars($row['lugar_calle_1']) . '</td><td>' . htmlspecialchars($row['colonia']) . '</td><td>' . htmlspecialchars($row['fecha']) . '</td><td>' . htmlspecialchars($row['vehiculo_robado_marca']) . '</td><td>' . htmlspecialchars($row['modelo']) . '</td><td>' . htmlspecialchars($row['tipo_vehiculo']) . '</td><td>' . htmlspecialchars($row['ano']) . '</td><td>' . htmlspecialchars($row['color']) . '</td><td>' . htmlspecialchars($row['placas']) . '</td><td>' . htmlspecialchars($row['numero_serie']) . '</td><td>' . htmlspecialchars($row['folio']) . '</td></tr>';
            }
            echo '</tbody></table>';
        } else {
            echo '<p>No se encontraron resultados para el municipio seleccionado.</p>';
        }
    }
    ?>
</body>
</html>
