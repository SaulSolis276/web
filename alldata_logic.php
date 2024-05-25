<?php
// Incluir el archivo de conexión a la base de datos
include 'db_connection.php';

// Consulta SQL para seleccionar todos los datos de la tabla
$sql = "SELECT * FROM datos";
$result = $conn->query($sql);
?>
<?php
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        echo "<tr>";
                        echo "<td>" . $row['id'] . "</td>";
                        echo "<td>" . $row['hora_trunca'] . "</td>";
                        echo "<td>" . $row['folio'] . "</td>";
                        echo "<td>" . $row['folio_c5'] . "</td>";
                        echo "<td>" . $row['fecha'] . "</td>";
                        echo "<td>" . $row['dia'] . "</td>";
                        echo "<td>" . $row['hora'] . "</td>";
                        echo "<td>" . $row['lugar_calle_1'] . "</td>";
                        echo "<td>" . $row['num'] . "</td>";
                        echo "<td>" . $row['lugar_calle_2'] . "</td>";
                        echo "<td>" . $row['direccion_completa'] . "</td>";
                        echo "<td>" . $row['x_coord'] . "</td>";
                        echo "<td>" . $row['y_coord'] . "</td>";
                        echo "<td>" . $row['tipo'] . "</td>";
                        echo "<td>" . $row['colonia'] . "</td>";
                        echo "<td>" . $row['sector'] . "</td>";
                        echo "<td>" . $row['nuevo_sector'] . "</td>";
                        echo "<td>" . $row['cuadrante'] . "</td>";
                        echo "<td>" . $row['sector_2023'] . "</td>";
                        echo "<td>" . $row['municipio'] . "</td>";
                        echo "<td>" . $row['region_2023'] . "</td>";
                        echo "<td>" . $row['distritos'] . "</td>";
                        echo "<td>" . $row['bien_juridico'] . "</td>";
                        echo "<td>" . $row['tipo_delito'] . "</td>";
                        echo "<td>" . $row['subtipo_delito'] . "</td>";
                        echo "<td>" . truncateText($row['modalidad'], 50) . "</td>"; // Limitar a 50 caracteres
                        echo "<td>" . truncateText($row['giro'], 50) . "</td>"; // Limitar a 50 caracteres
                        echo "<td>" . truncateText($row['caracteristicas_robo'], 50) . "</td>"; // Limitar a 50 caracteres
                        echo "<td>" . truncateText($row['modus_operandi'], 50) . "</td>"; // Limitar a 50 caracteres
                        echo "<td>" . truncateText($row['redaccion_tarjeta'], 50) . "</td>"; // Limitar a 50 caracteres
                        echo "<td>" . $row['titulo'] . "</td>";
                        echo "<td>" . truncateText($row['redaccion_anexo'], 50) . "</td>"; // Limitar a 50 caracteres
                        echo "<td>" . $row['modo_fuga'] . "</td>";
                        echo "<td>" . $row['tipo_arma'] . "</td>";
                        echo "<td>" . $row['caracteristicas_cadaver'] . "</td>";
                        echo "<td>" . $row['inferencia_homicidio'] . "</td>";
                        echo "<td>" . $row['objetos_robados'] . "</td>";
                        echo "<td>" . $row['autoridad'] . "</td>";
                        echo "<td>" . $row['observaciones'] . "</td>";
                        echo "<td>" . $row['cdi'] . "</td>";
                        echo "<td>" . $row['objetos_asegurados'] . "</td>";
                        echo "<td>" . $row['situacion'] . "</td>";
                        echo "<td>" . $row['detenidos'] . "</td>";
                        echo "<td>" . $row['numero_detenidos'] . "</td>";
                        echo "<td>" . $row['cantidad_responsables'] . "</td>";
                        echo "<td>" . $row['hombre'] . "</td>";
                        echo "<td>" . $row['mujer'] . "</td>";
                        echo "<td>" . $row['victimas_hombres'] . "</td>";
                        echo "<td>" . $row['victimas_mujeres'] . "</td>";
                        echo "<td>" . $row['no_identificado'] . "</td>";
                        echo "<td>" . $row['total_victimas'] . "</td>";
                        echo "<td>" . $row['nombre_victima'] . "</td>";
                        echo "<td>" . $row['antecedentes_penales'] . "</td>";
                        echo "<td>" . $row['ruta'] . "</td>";
                        echo "<td>" . $row['vehiculo_robado_marca'] . "</td>";
                        echo "<td>" . $row['modelo'] . "</td>";
                        echo "<td>" . $row['tipo_vehiculo'] . "</td>";
                        echo "<td>" . $row['ano'] . "</td>";
                        echo "<td>" . $row['color'] . "</td>";
                        echo "<td>" . $row['placas'] . "</td>";
                        echo "<td>" . $row['numero_serie'] . "</td>";
                        echo "<td>" . $row['estado_placas'] . "</td>";
                        echo "<td>" . $row['vehiculo_robado_involucrado'] . "</td>";
                        echo "<td>" . $row['tipo_involucrado'] . "</td>";
                        echo "<td>" . $row['modelo_involucrado'] . "</td>";
                        echo "<td>" . $row['color_involucrado'] . "</td>";
                        echo "<td>" . $row['placas_involucrado'] . "</td>";
                        echo "<td>" . $row['numero_serie_involucrado'] . "</td>";
                        echo "<td>" . $row['estado_placas_involucrado'] . "</td>";
                        echo "<td>" . $row['mes'] . "</td>";
                        echo "<td>" . $row['ano_evento'] . "</td>";
                        echo "<td>" . $row['semana_lunes'] . "</td>";
                        echo "<td>" . $row['numero_semana'] . "</td>";
                        echo "<td>" . $row['regiones_11'] . "</td>";
                        echo "<td>" . $row['regiones_22'] . "</td>";
                        echo "<td>" . truncateText($row['anexo'], 50) . "</td>"; // Limitar a 50 caracteres
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='78'>No se encontraron resultados.</td></tr>";
                }

                function truncateText($text, $limit) {
                    if (strlen($text) > $limit) {
                        $truncatedText = substr($text, 0, $limit) . '...';
                        return $truncatedText . "<button class='expand-text'>Leer más</button>";
                    } else {
                        return $text;
                    }
                }
                ?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<script>
    $(document).ready( function () {
        $('#tabla-datos').DataTable({
            "scrollX": true, 
            "scrollCollapse": true, 
            "paging": true, 
            "lengthChange": true, 
            "searching": true, 
            "ordering": true, 
            "info": true, 
            "autoWidth": true, 
            "responsive": true 
        });

        // Función para expandir el texto cuando se hace clic en "Leer más"
        $('#tabla-datos').on('click', '.expand-text', function () {
            var $cell = $(this).parent();
            var originalText = $cell.data('original-text');
            $cell.text(originalText);
        });
    });
</script>