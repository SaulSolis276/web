<?php
require_once 'vendor/autoload.php';
require_once 'db_connection.php';

use PhpOffice\PhpWord\TemplateProcessor;

if ($_SERVER["REQUEST_METHOD"] == "POST" && !empty($_POST['municipio']) && !empty($_POST['fecha'])) {
    $municipioSeleccionado = $conn->real_escape_string($_POST['municipio']);
    $fechaSeleccionada = $conn->real_escape_string($_POST['fecha']);

    $sql = "SELECT tipo_delito, modalidad, municipio, lugar_calle_1, colonia, fecha, vehiculo_robado_marca, modelo, tipo_vehiculo, ano, color, placas, numero_serie, folio FROM datos WHERE municipio = '$municipioSeleccionado' AND fecha = '$fechaSeleccionada'";

    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $templatePath = 'templates/PLANTILLA GENERAL.docx';
        
        if (!file_exists($templatePath)) {
            die('La plantilla no existe en la ruta especificada: ' . $templatePath);
        }
        try {
            $template = new TemplateProcessor($templatePath);
            $i = 1;

            while ($row = $result->fetch_assoc()) {
                $template->setValue('TIPO_DELITO_' . $i, htmlspecialchars($row['tipo_delito']));
                $template->setValue('MODALIDAD_' . $i, htmlspecialchars($row['modalidad']));
                $template->setValue('MUNICIPIO_' . $i, htmlspecialchars($row['municipio']));
                $template->setValue('CALLE_' . $i, htmlspecialchars($row['lugar_calle_1']));
                $template->setValue('COLONIA_' . $i, htmlspecialchars($row['colonia']));
                $template->setValue('FECHA_' . $i, htmlspecialchars($row['fecha']));
                $template->setValue('MARCA_VEHICULO_' . $i, htmlspecialchars($row['vehiculo_robado_marca']));
                $template->setValue('MODELO_' . $i, htmlspecialchars($row['modelo']));
                $template->setValue('TIPO_VEHICULO_' . $i, htmlspecialchars($row['tipo_vehiculo']));
                $template->setValue('ANO_' . $i, htmlspecialchars($row['ano']));
                $template->setValue('COLOR_' . $i, htmlspecialchars($row['color']));
                $template->setValue('PLACAS_' . $i, htmlspecialchars($row['placas']));
                $template->setValue('NUMERO_SERIE_' . $i, htmlspecialchars($row['numero_serie']));
                $template->setValue('FOLIO_' . $i, htmlspecialchars($row['folio']));
                $i++;
            }

            $outputFile = 'informacion_' . date('YmdHis') . '.docx';
            $template->saveAs($outputFile);

            header('Content-Description: File Transfer');
            header('Content-Type: application/octet-stream');
            header('Content-Disposition: attachment; filename="' . basename($outputFile) . '"');
            header('Expires: 0');
            header('Cache-Control: must-revalidate');
            header('Pragma: public');
            header('Content-Length: ' . filesize($outputFile));
            readfile($outputFile);
            exit;
        } catch (Exception $e) {
            die('Error al procesar la plantilla: ' . $e->getMessage());
        }
    } else {
        echo '<p>No se encontraron resultados para el municipio y fecha seleccionados.</p>';
    }
} else {
    echo '<p>Solicitud no válida.</p>';
}
?>
