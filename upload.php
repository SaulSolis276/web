<?php
set_time_limit(300);
require 'vendor/autoload.php';
require 'db_connection.php';

use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Cell\Coordinate;
use PhpOffice\PhpSpreadsheet\Calculation\Calculation;
use PhpOffice\PhpSpreadsheet\Shared\Date;

function handleUnsupportedFormulas($cell) {
    if ($cell->isFormula()) {
        try {
            // Intenta obtener el valor calculado
            $value = $cell->getCalculatedValue();
        } catch (Exception $e) {
            // Si hay un error (función no soportada, etc.), usar el valor actual o manejarlo de otra manera
            $value = $cell->getValue();
            // Implementar lógica para manejar fórmulas específicas si es necesario
        }
    } else {
        $value = $cell->getValue();
    }
    
    // Convertir valor numérico de fecha a formato de fecha PHP
    if (Date::isDateTime($cell)) {
        $value = Date::excelToDateTimeObject($value)->format('Y-m-d'); // Puedes ajustar el formato según tu necesidad
    }

    return $value;
}

if ($_FILES["file"]["error"] == UPLOAD_ERR_OK) {
    $fileTmpPath = $_FILES["file"]["tmp_name"];

    $reader = IOFactory::createReader('Xlsx');
    $reader->setReadDataOnly(false); // Configurado para calcular fórmulas
    $spreadsheet = $reader->load($fileTmpPath);

    $sheet = $spreadsheet->getSheetByName('BASE ESTATAL');

    if ($sheet) {
        $calculation = Calculation::getInstance($spreadsheet);

        $data = $sheet->toArray();

        $firstDataRow = 1;
        $highestRow = $sheet->getHighestRow();
        $highestColumn = $sheet->getHighestColumn();
        $highestColumnIndex = Coordinate::columnIndexFromString($highestColumn);

        for ($row = $firstDataRow; $row <= $highestRow; $row++) {
            $rowData = [];
            for ($col = 1; $col <= $highestColumnIndex; $col++) {
                $cell = $sheet->getCell(Coordinate::stringFromColumnIndex($col) . $row);
                $processedValue = handleUnsupportedFormulas($cell);
                $rowData[] = $processedValue;
            }

            $placeholders = rtrim(str_repeat('?,', count($rowData) - 1), ',');

            $sql = "INSERT INTO datos VALUES (NULL, $placeholders)";

            $stmt = $conn->prepare($sql);

            $params = array_slice($rowData, 1); // Almacenar en una variable antes de pasarlo a bind_param

            $stmt->bind_param(str_repeat('s', count($params)), ...$params);

            $stmt->execute();

            if ($stmt->errno) {
                echo "Error al procesar la fila $row: " . $stmt->error . "<br>";
            }
        }

        $stmt->close();
        echo "Datos cargados exitosamente.";
    } else {
        echo "La hoja 'BASE ESTATAL' no fue encontrada.";
    }
} else {
    echo "Error al subir el archivo.";
}

$conn->close();
?>
