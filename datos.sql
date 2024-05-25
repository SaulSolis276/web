-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2024 a las 02:04:43
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(11) NOT NULL,
  `hora_trunca` text DEFAULT NULL,
  `folio` text DEFAULT NULL,
  `folio_c5` text DEFAULT NULL,
  `fecha` text DEFAULT NULL,
  `dia` text DEFAULT NULL,
  `hora` text DEFAULT NULL,
  `lugar_calle_1` text DEFAULT NULL,
  `num` text DEFAULT NULL,
  `lugar_calle_2` text DEFAULT NULL,
  `direccion_completa` text DEFAULT NULL,
  `x_coord` text DEFAULT NULL,
  `y_coord` text DEFAULT NULL,
  `tipo` text DEFAULT NULL,
  `colonia` text DEFAULT NULL,
  `sector` text DEFAULT NULL,
  `nuevo_sector` text DEFAULT NULL,
  `cuadrante` text DEFAULT NULL,
  `sector_2023` text DEFAULT NULL,
  `municipio` text DEFAULT NULL,
  `region_2023` text DEFAULT NULL,
  `distritos` text DEFAULT NULL,
  `bien_juridico` text DEFAULT NULL,
  `tipo_delito` text DEFAULT NULL,
  `subtipo_delito` text DEFAULT NULL,
  `modalidad` text DEFAULT NULL,
  `giro` text DEFAULT NULL,
  `caracteristicas_robo` text DEFAULT NULL,
  `modus_operandi` text DEFAULT NULL,
  `redaccion_tarjeta` text DEFAULT NULL,
  `titulo` text DEFAULT NULL,
  `redaccion_anexo` text DEFAULT NULL,
  `modo_fuga` text DEFAULT NULL,
  `tipo_arma` text DEFAULT NULL,
  `caracteristicas_cadaver` text DEFAULT NULL,
  `inferencia_homicidio` text DEFAULT NULL,
  `objetos_robados` text DEFAULT NULL,
  `autoridad` text DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `cdi` text DEFAULT NULL,
  `objetos_asegurados` text DEFAULT NULL,
  `situacion` text DEFAULT NULL,
  `detenidos` text DEFAULT NULL,
  `numero_detenidos` text DEFAULT NULL,
  `cantidad_responsables` text DEFAULT NULL,
  `hombre` text DEFAULT NULL,
  `mujer` text DEFAULT NULL,
  `victimas_hombres` text DEFAULT NULL,
  `victimas_mujeres` text DEFAULT NULL,
  `no_identificado` text DEFAULT NULL,
  `total_victimas` text DEFAULT NULL,
  `nombre_victima` text DEFAULT NULL,
  `antecedentes_penales` text DEFAULT NULL,
  `ruta` text DEFAULT NULL,
  `vehiculo_robado_marca` text DEFAULT NULL,
  `modelo` text DEFAULT NULL,
  `tipo_vehiculo` text DEFAULT NULL,
  `ano` text DEFAULT NULL,
  `color` text DEFAULT NULL,
  `placas` text DEFAULT NULL,
  `numero_serie` text DEFAULT NULL,
  `estado_placas` text DEFAULT NULL,
  `vehiculo_robado_involucrado` text DEFAULT NULL,
  `tipo_involucrado` text DEFAULT NULL,
  `modelo_involucrado` text DEFAULT NULL,
  `color_involucrado` text DEFAULT NULL,
  `placas_involucrado` text DEFAULT NULL,
  `numero_serie_involucrado` text DEFAULT NULL,
  `estado_placas_involucrado` text DEFAULT NULL,
  `mes` text DEFAULT NULL,
  `ano_evento` text DEFAULT NULL,
  `semana_lunes` text DEFAULT NULL,
  `numero_semana` text DEFAULT NULL,
  `regiones_11` text DEFAULT NULL,
  `regiones_22` text DEFAULT NULL,
  `anexo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `hora_trunca`, `folio`, `folio_c5`, `fecha`, `dia`, `hora`, `lugar_calle_1`, `num`, `lugar_calle_2`, `direccion_completa`, `x_coord`, `y_coord`, `tipo`, `colonia`, `sector`, `nuevo_sector`, `cuadrante`, `sector_2023`, `municipio`, `region_2023`, `distritos`, `bien_juridico`, `tipo_delito`, `subtipo_delito`, `modalidad`, `giro`, `caracteristicas_robo`, `modus_operandi`, `redaccion_tarjeta`, `titulo`, `redaccion_anexo`, `modo_fuga`, `tipo_arma`, `caracteristicas_cadaver`, `inferencia_homicidio`, `objetos_robados`, `autoridad`, `observaciones`, `cdi`, `objetos_asegurados`, `situacion`, `detenidos`, `numero_detenidos`, `cantidad_responsables`, `hombre`, `mujer`, `victimas_hombres`, `victimas_mujeres`, `no_identificado`, `total_victimas`, `nombre_victima`, `antecedentes_penales`, `ruta`, `vehiculo_robado_marca`, `modelo`, `tipo_vehiculo`, `ano`, `color`, `placas`, `numero_serie`, `estado_placas`, `vehiculo_robado_involucrado`, `tipo_involucrado`, `modelo_involucrado`, `color_involucrado`, `placas_involucrado`, `numero_serie_involucrado`, `estado_placas_involucrado`, `mes`, `ano_evento`, `semana_lunes`, `numero_semana`, `regiones_11`, `regiones_22`, `anexo`) VALUES
(1, 'Hora Trunca', 'FOLIO', 'Folio C5', 'Fecha', 'Día', 'Hora', 'Lugar de los Hechos Calle_1', 'Núm.', 'Lugar de los Hechos Calle_2', 'Dirección Completa', 'X', 'Y', 'Tipo', 'Colonia', 'Sector', 'Nuevo Sector', 'Cuadrante', 'Sector 2023', 'Municipio', 'Región 2023', 'Distritos', 'Bien Jurídico', 'Tipo de delito', 'Subtipo De Delito', 'Modalidad', 'Giro', 'Características del Robo', 'Modus Operandi', 'Redacción para tarjeta', 'Título', 'Redacción para anexo', 'Modo de Fuga', 'Tipo Arma', 'Características del hallazgo de cadáver (homicidio)', 'Inferencia del homicidio', 'Objetos Robados', 'Autoridad', 'Observaciones', 'CDI', 'Objetos Asegurados', 'Situación', 'Detenidos', 'Número Detenidos', 'Cantidad de Responsables', 'HOMBRE', 'MUJER', 'Víctimas Hombres', 'Víctimas Mujeres', 'No identificado', 'Total Víctimas', 'Nombre de la víctima', 'Antecedentes penales de la víctima', 'RUTA', 'VEHÍCULO ROBADO (MARCA)', 'MODELO', 'TIPO', 'AÑO', 'COLOR', 'PLACAS', 'NUMERO DE SERIE', 'ESTADO AL QUE PERTENECEN LAS PLACAS', 'VEHÍCULO ROBADO Y/O INVOLUCRADO', 'TIPO', 'MODELO', 'COLOR', 'PLACAS', 'NUMERO DE SERIE', 'ESTADO AL QUE PERTENECEN LAS PLACAS', 'Mes', 'Año', 'Semana Lunes', 'No. Semana', '11 REGIONES', '22 REGIONES', 'Anexo'),
(2, '1970-01-01', '1', 'PUE2400002702', '2024-01-01', 'Monday', '1970-01-01', 'Privada Oasis Valsequillo', 'Oasis', NULL, 'Privada Oasis Valsequillo Oasis', '-98.134227', '18.923715', 'Colonia', 'El Oasis', '2', 'Sur', '1', 'Sur-oriente', 'Puebla', 'Región 5', 'Distrito 9, 10, 11, 12, 16, 17, 19, 20', 'El patrimonio', 'Robo de vehículo', 'sd', 'sin violencia', 'sd', 'sd', 'Usuario informó que la unidad fue sustraída del lugar en donde se encontraba estacionada.\nMarca: Ford\nTipo: Lobo\nAño: N/A\nColor: Verde\nPlaca: SP35265\nSerie: N/A', 'sd', 'sd', 'sd', 'sd', 'No', 'sd', 'sd', 'sd', 'Estatal', 'sd', 'sd', 'sd', 'CONSUMADO', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'Ford', 'Lobo', 'sd', 'sd', 'Verde', 'SP35265', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'January', '2024', '2024-01-01', '1', 'Región-6', 'Región 21', 'sd'),
(3, '1970-01-01', '2', 'PUE2400003079 ', '2024-01-01', 'Monday', '1970-01-01', 'Puebla', 'y', 'Hidalgo y Tlaxcala', 'Puebla y Hidalgo y Tlaxcala', '-97.977', '20.193611', 'Colonia', 'De Hidalgo', 'sd', 'sd', 'sd', 'sd', 'Huauchinango', 'Región 1', 'Distrito 2', 'El patrimonio', 'Robo de vehículo', 'sd', 'con violencia', 'sd', 'sd', 'Usuario informó que 2 sujetos con arma de fuego lo despojaron de su vehículo.\nMarca: Volkswagen\nTipo/Modelo: Jetta A6\nAño: 2008\nColor: Negro\nPlacas: HNU4413  \nSerie: 3VWYV49M68M624750', 'sd', 'sd', 'sd', 'sd', 'Fuego', 'sd', 'sd', 'sd', 'Estatal', 'sd', 'sd', 'sd', 'CONSUMADO', 'sd', 'sd', '2', '2', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'Volkswagen', 'Jetta', 'sd', '2008', 'Negro', 'HNU4413', '3VWYV49M68M624750', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'January', '2024', '2024-01-01', '1', 'Región-5', 'Región 2', 'sd'),
(4, '1970-01-01', '3', 'PUE2400003370', '2024-01-01', 'Monday', '1970-01-01', 'Libertad', 'y', 'Morelos', 'Libertad y Morelos', '-98.43701', '19.282162', 'Colonia', 'Centro', 'sd', 'sd', 'sd', 'sd', 'San Martín Texmelucan', 'Región 4', 'Distrito 7', 'El patrimonio', 'Robo de vehículo', 'sd', 'con violencia', 'sd', 'sd', 'Usuario informó que 2 sujetos  con una arma de fuego a bordo de una motocicleta de la cual no tiene características le cerraron la circulación para despojarlo de su vehículo.\nMarca: Chrysler \nTipo: Atos\nModelo: 2002\nColor: Amarillo\nPlacas: TZD7660\nSerie: KMHAG51G92U207552', 'sd', 'sd', 'sd', 'Motocicleta', 'Fuego', 'sd', 'sd', 'sd', 'Estatal', 'sd', 'sd', 'sd', 'CONSUMADO', 'sd', 'sd', '2', '2', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'Chrysler', 'Atos', 'sd', '2002', 'Amarillo', 'TZD7660', 'KMHAG51G92U207552', 'sd', 'sd', 'Motocicleta', 'sd', 'sd', 'sd', 'sd', 'sd', 'January', '2024', '2024-01-01', '1', 'Región-7', 'Región 20', 'sd'),
(5, '1970-01-01', '4', 'PUE2400001020', '2024-01-01', 'Monday', '1970-01-01', 'Vicente Fox', 'Fox', NULL, 'Vicente Fox Fox', '-97.790717903545', '19.230644558316', 'Colonia', 'Vicente Fox', 'sd', 'sd', 'sd', 'sd', 'Rafael Lara Grajales', 'Región 7', 'Distrito 13', 'El patrimonio', 'Robo a casa habitación', 'sd', 'sin violencia', 'sd', 'sd', 'Omar Millán Alcanta de 29 años mencionó que dos masculinos ingresaron y comenzaron a sacar sus pertenencias tratándose de un refrigerador, una estufa, sus camas y colchones así como sus televisores. Posteriormente se procedió a ingresar al inmueble con previa autorización del dueño momento en el que un masculino quien no proporciona datos generales mencionó que metros más adelante iban los presuntos responsables del robo con una carretilla, por lo que Omar Millán en compañía de aproximadamente 15 ciudadanos acudieron a dónde se encontraban las personas señaladas. Una vez localizándolos y encarándolos salieron de un inmueble el cual era aparentemente el domicilio de los masculinos señalados aproximadamente 15 masculinos, quienes iniciaron una riña, entre ambas partes. Por lo que siendo las 20:35 horas se solicitó el apoyo de la Policía Municipal así como del operativo mandos coordinados quienes arribaron siendo las 20:50 horas a cargo of. José Cosme de la Cruz con 01 más a bordo de la unidad M-210, en coordinación de Policía Municipal de San José Chiapa y Nopalucan de la Granja así como Policía Estatal Copen Delegación San José Chiapa, comenzaron a dispersar a los ciudadanos quienes se encontraban en riña, logrando controlar la situación retirándose ambas partes. Así mismo se dieron pasos a seguir al C. Omar Millán para que acudiera a realizar su denuncia correspondiente, A las 21:15 horas se retiraron las unidades sin más novedad de relevancia. Se confirmó el robo a casa habitación sin detenciones. Se controló la riña a causa de un supuesto señalamiento erróneo.', 'sd', 'sd', 'sd', 'sd', 'No', 'sd', 'sd', 'Un refrigerador, una estufa, sus camas y colchones así como sus televisores', 'Estatal', 'sd', 'sd', 'sd', 'CONSUMADO', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'January', '2024', '2024-01-01', '1', 'Región-4', 'Región 8', 'sd'),
(6, '1970-01-01', '5', 'PUE2400003248', '2024-01-01', 'Monday', '1970-01-01', 'Reforma', '4', 'Independencia', 'Reforma 4 Independencia', '-98.162447', '19.100032', 'Junta Auxiliar', 'San Sebastian de Aparicio', '1', 'Norte', '1', 'Norte-oriente', 'Puebla', 'Región 5', 'Distrito 9, 10, 11, 12, 16, 17, 19, 20', 'La vida y la integridad corporal', 'Lesiones', 'sd', 'con violencia', 'sd', 'sd', 'Usuario informó que dos masculinos, lesionaron por golpes a un hombre (sin datos) y a Lorena Pérez Pérez de 48 años (sin registro en bases de datos), por impacto de arma de fuego (entrada y salida en tercio distal), los cuales se encontraban a bordo de una camioneta en calle Reforma, número esquina Independencia, Junta Auxiliar San Sebastián de Aparicio, municipio de Puebla. La femenina decidió quedarse en el lugar para realizar su trámite legal, y posteriormente trasladarse por sus medios. Mientras que el masculino golpeado rechazó la atención de los Paramédicos.', 'sd', 'sd', 'sd', 'sd', 'Fuego/Golpes', 'sd', 'sd', 'sd', 'Estatal', 'sd', 'sd', 'sd', 'CONSUMADO', 'sd', 'sd', 'sd', 'sd', 'sd', '1', '1', 'sd', '2', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'January', '2024', '2024-01-01', '1', 'Región-6', 'Región 21', 'sd'),
(7, '1970-01-01', '6', 'PUE2400003263', '2024-01-01', 'Monday', '1970-01-01', 'Miguel Hidalgo', '18', 'Iturbide', 'Miguel Hidalgo 18 Iturbide', '-98.293442', '19.007544', 'Junta Auxiliar', 'San Antonio Cacalotepec', 'sd', 'sd', 'sd', 'sd', 'San Andrés Cholula', 'Región 5', 'Distrito 18', 'La vida y la integridad corporal', 'Lesiones', 'sd', 'con violencia', 'sd', 'sd', 'Usuario informó que sujetos con armas de fuego entraron a su domicilio y lesionaron por impactos de arma de fuego a dos personas en calle Miguel Hidalgo 18 esq. Iturbide, Junta Auxiliar San Antonio Cacalotepec, municipio de San Andrés Cholula. Elementos de la Policía Municipal así como y Ambulancia A-04 arribaron al lugar en donde familiares indicaron que habían trasladado al lesionado al Hospital General de Cholula. 06:56 horas, elemento de Policía Auxiliar comisionado en Hospital General de Cholula reportó el ingreso al área de urgencias un vehículo BMW con placas NLM6316B del estado de Tlaxcala abordo el paciente José Félix Cuautle Coyotl de 38 años con 2 impactos de arma de fuego en cráneo y Yaneth Guadalupe de 23 años (sin registro en bases de datos), con un impacto en la mano derecha. Mencionaron que al estar festejando dentro de su domicilio tenían la puerta abierta y la música a todo volumen cuando en ese momento escucharon detonaciones de arma de fuego y por el susto corrieron a la planta alta ya que su bebé se encontraba durmiendo en la habitación. No se percataron quien ni cuantos sujetos fueron, pero sospechan del tío político, Leandro Cuautle Coyotl, mismo que también es vecino, ya que no es la primera vez que tienen discusiones y un problema legal por una porción del terreno donde habitan.', 'sd', 'sd', 'sd', 'sd', 'Fuego', 'sd', 'sd', 'sd', 'Estatal', 'sd', 'sd', 'sd', 'CONSUMADO', 'sd', 'sd', 'sd', 'sd', 'sd', '1', '1', 'sd', '2', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'January', '2024', '2024-01-01', '1', 'Región-6', 'Región 21', 'sd'),
(8, '1970-01-01', '7', 'PUE2400003707', '2024-01-01', 'Monday', '1970-01-01', 'Vicente Guerrero', 'Guerrero', NULL, 'Vicente Guerrero Guerrero', '-98.465861', '19.293944', 'Junta Auxiliar', 'San Rafael Tlanalapan', 'sd', 'sd', 'sd', 'sd', 'San Martín Texmelucan', 'Región 4', 'Distrito 7', 'El patrimonio', 'Robo de vehículo', 'sd', 'con violencia', 'sd', 'sd', 'Usuario informó que dos masculinos con arma de fuego lo despojaron de su vehículo.\nMarca: Bajaj\nTipo: Motocicleta\nColor: Rojo \nPlacas: 0313E9 \nModelo: 2022\nSerie: MD2A92CX2NCB02899', 'sd', 'sd', 'sd', 'sd', 'Fuego', 'sd', 'sd', 'sd', 'Estatal', 'sd', 'sd', 'sd', 'CONSUMADO', 'sd', 'sd', 'sd', 'sd', 'sd', '2', 'sd', 'sd', '2', 'sd', 'sd', 'sd', 'Bajaj', 'sd', 'Motocicleta', '2022', 'Rojo', 'sd', 'MD2A92CX2NCB02899', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'January', '2024', '2024-01-01', '1', 'Región-7', 'Región 20', 'sd'),
(9, '1970-01-01', '8', 'PUE2400004731', '2024-01-01', 'Monday', '1970-01-01', 'Rafael Cravioto', '20', NULL, 'Rafael Cravioto 20', '-98.05467666545', '20.173593819689', 'Colonia', 'Centro', 'sd', 'sd', 'sd', 'sd', 'Huauchinango', 'Región 1', 'Distrito 2', 'El patrimonio', 'Robo a negocio', 'sd', 'con violencia', 'Juguetería', 'Franci', 'Usuaria reportó que, su empleada se comunicó con ella y le mencionó que un masculino acababa de robar en su negocio, por lo que solicitó apoyo con policía. Se coordinó con Policía Municipal y Policía Estatal.\n14:39\nAl lugar acudió Policía Municipal unidad GM-036 al mando of. Mohamed Tenorio Olvera con dos más, al llegar al lugar hicieron contacto con la C. Yeni Ortiz Vargas de 24 años, refirió que, ingresó un masculino a su local con arma de fuego despojándolos de efectivo y mercancía.\nMencionó que el monto de lo robado fue de $400.00 en efectivo y un aproximado de $1,000.00 en artículos varios.\nEn apoyo acudió Policía Estatal unidad 1761.\nLe dieron la recomendación de realizar su denuncia ante el M.P.', 'sd', 'sd', 'sd', 'sd', 'Fuego', 'sd', 'sd', 'Mercancía y dinero', 'Estatal', 'sd', 'sd', 'sd', 'CONSUMADO', 'sd', 'sd', '1', '1', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'January', '2024', '2024-01-01', '1', 'Región-5', 'Región 2', 'sd'),
(10, '1970-01-01', '9', 'PUE2400004053', '2024-01-01', 'Monday', '1970-01-01', 'Autopista Tlaxco-Tejocotal', 'Km 38', NULL, 'Autopista Tlaxco-Tejocotal Km 38', '-98.060626280843', '19.860178873017', 'Localidad', 'Michac', 'sd', 'sd', 'sd', 'sd', 'Chignahuapan', 'Región 2', 'Distrito 3', 'La vida y la integridad corporal', 'Lesiones', 'sd', 'con violencia', 'sd', 'sd', 'Informó usuario que, al ir circulando a bordo de una camioneta Cheyenne, color verde pistache, acompañado de su familia, se percataron que sobre la autopista se encontraban unos vidrios y les comenzaron a realizar detonaciones de arma de fuego.\nUno de sus familiares fue lesionado en la cabeza y no se percataron de dónde provenían los los disparos.\nContinuaron su camino hasta llegar a Tlaxco, Tlaxcala y el usuario comentó que se bajó del vehículo para solicitar apoyo con un oficial, con el cual ya se encontraba mientras estaba en línea.\nRefirió que sus familiares continuaron a bordo de la camioneta para buscar un hospital, sin proporcionar mayor información.\nSe informó sobre los hechos al Coordinador de CECORE Zacatlán, Francisco Durán Toledo.\n11:35 hrs.\nInformó 9-1-1 Tlaxcala que, recibieron reporte por parte de Policía Municipal donde él C. Armando Molina Portilla, les solicitó el apoyo comentando que habían lesionado a su familiar con arma de fuego.\nEl C. Juan Carlos Carrasco Espinosa, arribó a la comandancia de Tlaxco, Tlaxcala, solicitando el mismo apoyo y preguntando por su familiar, posterior recibió una llamada en donde le informaron que el lesionado ya se encontraba en el hospital.\nEl lesionado responde al nombre de José Trinidad Méndez Sánchez de 53 años, quien presentó impacto por arma de fuego en la cabeza, fue trasladado al Hospital comunitario de Tlaxco, Tlaxcala.\nPolicía Municipal de Tlaxco, Tlaxcala, realizó recorrido por su zona de jurisdicción sin mayor novedad.\n12:42 hrs.\nInformó Policía Estatal de Puebla que, acudió la unidad 1320, al mando of. Honorio Bandala Romano más 03 elementos arribando al lugar donde al parecer sujetos apedrearon vehículos que transitaban por la pista, ya que sobre la cuneta localizaron varias piedras.\nAl lugar arribó Policía Estatal de Tlaxcala, unidades TL155-1 y TL245A-1 al mando of. David Daniel Orozco León con 04 elementos más, informando que había una persona lesionada en el Hospital IMSS Bienestar de Tlaxco Tlaxcala, desconociendo datos personales de dicho lesionado.\nEl masculino fue lesionado al parecer con una piedra y no por disparó de arma de fuego, ocurriendo los hechos en el km 40.\nEfectuaron recorrido a pie sobre la maleza y a orillas de la pista sin localizar algún individuo.', 'sd', 'sd', 'sd', 'sd', 'Objeto', 'sd', 'sd', 'sd', 'Estatal', 'sd', 'sd', 'sd', 'CONSUMADO', 'sd', 'sd', 'sd', 'sd', 'sd', '1', 'sd', 'sd', '1', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'January', '2024', '2024-01-01', '1', 'Región-11', 'Región 7', 'sd'),
(11, '1970-01-01', '10', '2400003778', '2024-01-01', 'Monday', '1970-01-01', '2 Norte', 'Edificio 3', NULL, '2 Norte Edificio 3', '-98.043615567269', '19.045308795923', 'Barrio', 'San Antonio', 'sd', 'sd', 'sd', 'sd', 'Amozoc', 'Región 5', 'Distrito 12', 'El patrimonio', 'Robo de vehículo', 'sd', 'sin violencia', 'sd', 'sd', 'Reporta el C. José Ricardo García Martínez 2224889567 el robo de su motocicleta Italika RC-200 modelo 2023 color negro placas 19TGM9 del estado de Puebla, Serie 3SCK3EJC9P1007030, robado estacionado', 'sd', 'sd', 'sd', 'sd', 'No', 'sd', 'sd', 'sd', 'Estatal', 'sd', 'sd', 'sd', 'CONSUMADO', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'Italika', 'sd', 'Motocicleta', '2023', 'Negro', '19TGM9', '3SCK3EJC9P1007030', 'Puebla', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'January', '2024', '2024-01-01', '1', 'Región-9', 'Región 21', 'sd'),
(12, '1970-01-01', '11', '2400004619', '2024-01-01', 'Monday', '1970-01-01', 'Privada Fresnos B', 'Lote 8', NULL, 'Privada Fresnos B Lote 8', '-98.199968659998', '19.102238275395', 'Colonia', 'Lomas de Coyopotrero', '4', 'Norte', '2', 'Norte-oriente', 'Puebla', 'Región 5', 'Distrito 9, 10, 11, 12, 16, 17, 19, 20', 'El patrimonio', 'Robo de vehículo', 'sd', 'sin violencia', 'sd', 'sd', 'Reporta el C. José Hernández Palafox 2212663004 el robo de su vehículo Ford Fiesta color gris placas UGH068A del estado de Puebla, Serie  9BFBT10N558354760, robado estacionado', 'sd', 'sd', 'sd', 'sd', 'No', 'sd', 'sd', 'sd', 'Estatal', 'sd', 'sd', 'sd', 'CONSUMADO', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'Ford', 'Fiesta', 'sd', 'sd', 'Gris', 'UGH068A', '9BFBT10N558354760', 'Puebla', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'January', '2024', '2024-01-01', '1', 'Región-6', 'Región 21', 'sd'),
(13, '1970-01-01', '12', 'PUE2400005740', '2024-01-01', 'Monday', '1970-01-01', 'Zacatlán', 'y', 'Libres', 'Zacatlán y Libres', '-98.30721815669', '19.076466660468', 'Junta Auxiliar', 'San Matias Cocoyotla', 'sd', 'sd', 'sd', 'sd', 'San Pedro Cholula', 'Región 5', 'Distrito 18', 'La vida y la integridad corporal', 'Lesiones', 'sd', 'con violencia', 'sd', 'sd', 'Reportaron que se escucharon detonaciones al interior de un domicilio y posteriormente indicaron que había lesionados. \nSe coordino el apoyo con Ambulancias, Policía Municipal y Policía Estatal. 18:30 hrs.\nOficiales de Policía Municipal M-731 se entrevistaron con el lesionado Elías Rueda Palma de 32 años, indicó que, al estar dentro de su domicilio, llegó el C. Carlos Efraín Romero Ahuatl, el cual se encontraba en estado de ebriedad, acompañado de familiares y amigos, causaron daños en su domicilio, así como lesiones al entrevistado y a los C. Álvaro Rueda Rangel de 78 años de edad, María Amney Mercedes Palma Ahuatl de 65 años de edad y David Rueda Palma de 43 años de edad.\nParamédicos de unidad 20 de Protección Civil, valoraron a los lesionados e informaron que sus lesiones no requerían atención en algún nosocomio de forma urgente. Al no encontrarse las personas agresoras, se les brindaron procedimientos legales a seguir. \nNo brindaron más detalles referentes a las lesiones', 'sd', 'sd', 'sd', 'sd', 'Fuego', 'sd', 'sd', 'sd', 'Estatal', 'sd', 'sd', 'sd', 'CONSUMADO', 'sd', 'sd', 'sd', 'sd', 'sd', '3', '1', 'sd', '4', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'January', '2024', '2024-01-01', '1', 'Región-6', 'Región 21', 'sd'),
(14, '1970-01-01', '13', 'PUE2400006828', '2024-01-01', 'Monday', '1970-01-01', 'Hidalgo', NULL, NULL, 'Hidalgo', '-98.468405636098', '18.595809899448', 'Barrio', 'De San Bernardo', 'sd', 'sd', 'sd', 'sd', 'Izúcar de Matamoros', 'Región 8', 'Distrito 22', 'El patrimonio', 'Robo a negocio', 'sd', 'con violencia', 'Tienda de conveniencia', 'Oxxo', 'Usuaria Anónima, refiere al comprar se percata de un robo a tienda OXXO. Responsables: 2 masculinos con vestimenta color negro a bordo de una motocicleta, se dan a la fuga rumbo al mercado. Se gestiona apoyo con policía municipal de Izúcar de Matamoros y policía estatal.', 'sd', 'sd', 'sd', 'Motocicleta', 'Sin especificar', 'sd', 'sd', 'sd', 'Estatal', 'sd', 'sd', 'sd', 'CONSUMADO', 'sd', 'sd', '2', '2', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'January', '2024', '2024-01-01', '1', 'Región-3', 'Región 15', 'sd'),
(15, '1970-01-01', '14', 'PUE2400006797', '2024-01-01', 'Monday', '1970-01-01', 'Bravo', NULL, NULL, 'Bravo', '-98.053477890316', '20.172870709368', 'Colonia', 'Centro', 'sd', 'sd', 'sd', 'sd', 'Huauchinango', 'Región 1', 'Distrito 2', 'El patrimonio', 'Robo a negocio', 'sd', 'con violencia', 'Telefonía', 'Soluciones Móviles', 'Usuario reportó que, ingresó un masculino al parecer con arma de fuego, lo amenazó despojándolo de 03 teléfonos celulares y dinero.\nSe coordino con Policía Municipal y Policía Estatal.', 'sd', 'sd', 'sd', 'sd', 'Fuego', 'sd', 'sd', 'Celulares y dinero', 'Estatal', 'sd', 'sd', 'sd', 'CONSUMADO', 'sd', 'sd', '1', '1', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'January', '2024', '2024-01-01', '1', 'Región-5', 'Región 2', 'sd'),
(16, '1970-01-01', '15', 'PUE2400005383', '2024-01-01', 'Monday', '1970-01-01', '105 Poniente', 'y', '5 Sur', '105 Poniente y 5 Sur', '-98.232704860814', '18.993676814211', 'Fraccionamiento', 'Damisal', '3', 'Sur', '2', 'Sur-poniente', 'Puebla', 'Región 5', 'Distrito 9, 10, 11, 12, 16, 17, 19, 20', 'El patrimonio', 'Robo a institución pública', 'sd', 'sin violencia', 'Escuela', 'Fundadores de Puebla', 'Usuaria informó ser representante de los padres de familia de la Escuela Fundadores de Puebla, comentó que ingresaron a robar.\nSe coordinó el apoyo con Policía Municipal y Policía Estatal.\nOficiales de Policía Estatal PE-1431 se entrevistaron con Perla Jazmín Pérez García, tesorera del comité, confirmó que forzaron los anaqueles para llevarse material didáctico de 2 aulas. Se consultó su sistema de monitoreo ubicando que el robo fue entre las 4 a 6 hrs.\nSe brindaron procedimientos legales a seguir.', 'sd', 'sd', 'sd', 'sd', 'No', 'sd', 'sd', 'Material didáctico', 'Estatal', 'sd', 'sd', 'sd', 'CONSUMADO', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'January', '2024', '2024-01-01', '1', 'Región-6', 'Región 21', 'sd'),
(17, '1970-01-01', '16', '2400006054', '2024-01-01', 'Monday', '1970-01-01', 'Luis Manuel Rojas', 'Manuel', NULL, 'Luis Manuel Rojas Manuel', '-98.157037805278', '18.973373854895', 'Colonia', 'Articulo Primero', '2', 'Sur', '1', 'Sur-oriente', 'Puebla', 'Región 5', 'Distrito 9, 10, 11, 12, 16, 17, 19, 20', 'El patrimonio', 'Robo a casa habitación', 'sd', 'sin violencia', 'sd', 'sd', 'María del Lourdes Sánchez Hernández indicó que ingresaron al domicilio tres sujetos por la parte trasera y se llevaron dos tanques de gas, una televisión y $50,000.00 mil pesos en efectivo, como primer respondiente Policía Municipal Esteban Carta Sánchez con uno más en la unidad VP-907.', 'sd', 'sd', 'sd', 'sd', 'No', 'sd', 'sd', 'Tanques de gas, electrónicos y dinero', 'Estatal', 'sd', 'sd', 'sd', 'CONSUMADO', 'sd', 'sd', '3', '3', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'January', '2024', '2024-01-01', '1', 'Región-6', 'Región 21', 'sd'),
(18, '1970-01-01', '17', '2400007352', '2024-01-01', 'Monday', '1970-01-01', 'Avenida Juan de Palafox y Mendoza', '610', 'Boulevard 5 de Mayo', 'Avenida Juan de Palafox y Mendoza 610 Boulevard 5 de Mayo', '-98.19306336844', '19.041594926208', 'Colonia', 'Centro Historico', '5', 'Centro Histórico', 'sd', 'Zona Centro Histórico', 'Puebla', 'Región 5', 'Distrito 9, 10, 11, 12, 16, 17, 19, 20', 'El patrimonio', 'Robo a negocio', 'sd', 'con violencia', 'Tienda de conveniencia', 'Oxxo', 'Informa policía 3630 José Eduardo Rodríguez Trujillo con 1 más a bordo de la unidad 1650 avenida Juan de Palafox y Mendoza y Boulevard 5 de Mayo indican de robo a tienda de conveniencia OXXO con violencia, se entrevistan con encargada de la tienda Karla Flores con número telefónico 2212777798, quien refiere ingresan dos masculinos de chalecos negros y tenis blancos, los amagan con arma blanca, llevándose la cantidad de $1,500.00 en efectivo, sin especificar con que dirección se dan a la fuga, indican procedimientos legales a seguir', 'sd', 'sd', 'sd', 'sd', 'Blanca', 'sd', 'sd', 'Dinero', 'Estatal', 'sd', 'sd', 'sd', 'CONSUMADO', 'sd', 'sd', '2', '2', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'January', '2024', '2024-01-01', '1', 'Región-6', 'Región 21', 'sd'),
(19, '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60', '61', '62', '63', '64', '65', '66', '67', '68', '69', '70', '71', '72', '73', '74', '75'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
