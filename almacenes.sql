-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-02-2016 a las 04:38:57
-- Versión del servidor: 5.5.39
-- Versión de PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `almacenes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigo`
--

CREATE TABLE IF NOT EXISTS `codigo` (
`idcodigo` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `idtipocodigo` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `codigo`
--

INSERT INTO `codigo` (`idcodigo`, `codigo`, `idtipocodigo`) VALUES
(1, 'DNI', 1),
(2, 'Carnet de Extranjeria', 1),
(3, 'Pasaporte', 1),
(4, 'Masculino', 2),
(5, 'Femenino', 2),
(6, 'Ing. Sistemas', 3),
(7, 'Ing. Industrial', 3),
(8, 'Medicina', 3),
(9, 'Ciencias de la Comunicación', 3),
(10, 'Ing. Ambiental', 3),
(11, 'Administración', 3),
(12, 'Trimestral', 4),
(13, 'Bimestral', 4),
(14, 'Semestral', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE IF NOT EXISTS `distrito` (
`iddistrito` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Volcado de datos para la tabla `distrito`
--

INSERT INTO `distrito` (`iddistrito`, `nombre`) VALUES
(1, 'Cercado de Lima'),
(2, 'Ate'),
(3, 'Barranco'),
(4, 'Breña'),
(5, 'Comas'),
(6, 'Chorrillos'),
(7, 'El Agustino'),
(8, 'Jesús María'),
(9, 'La Molina'),
(10, 'La Victoria'),
(11, 'Lince'),
(12, 'Magdalena del Mar'),
(13, 'Miraflores'),
(14, 'Pueblo Libre'),
(15, 'Puente Piedra'),
(16, 'Rimac'),
(17, 'San Isidro'),
(18, 'Independencia'),
(19, 'San Juan de Miraflores'),
(20, ' San Luis'),
(21, 'San Martin de Porres'),
(22, 'San Miguel'),
(23, 'Santiago de Surco'),
(24, 'Surquillo'),
(25, 'Villa María del Triunfo'),
(26, 'San Juan de Lurigancho'),
(27, 'Santa Rosa'),
(28, 'Los Olivos'),
(29, 'San Borja'),
(30, 'Villa El Savador'),
(31, 'Santa Anita');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE IF NOT EXISTS `lugar` (
`idlugar` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `longitud` varchar(30) DEFAULT NULL,
  `latitud` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `map`
--

CREATE TABLE IF NOT EXISTS `map` (
`idMap` int(11) NOT NULL,
  `solicitud` varchar(150) DEFAULT NULL,
  `actividad` varchar(150) DEFAULT NULL,
  `nombreContratista` varchar(150) DEFAULT NULL,
  `cliente` varchar(150) DEFAULT NULL,
  `dirObra` varchar(150) DEFAULT NULL,
  `distrito` varchar(150) DEFAULT NULL,
  `rolLiquidador` varchar(150) DEFAULT NULL,
  `tecnico` varchar(150) DEFAULT NULL,
  `finReal` varchar(150) DEFAULT NULL,
  `mes` varchar(150) DEFAULT NULL,
  `ruta` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=240 ;

--
-- Volcado de datos para la tabla `map`
--

INSERT INTO `map` (`idMap`, `solicitud`, `actividad`, `nombreContratista`, `cliente`, `dirObra`, `distrito`, `rolLiquidador`, `tecnico`, `finReal`, `mes`, `ruta`) VALUES
(2, '1430983.0', 'Mejoras AP', 'ORION', 'MEJORA DE AP EN PARQUE', 'CALLE MIGUEL GRAU CRUCE CON SALVADOR ALLENDE', 'Villa Maria Del Triunfo', 'CARLOS CASTAÑEDA', 'Henry Heredia Jimenez', '02-sep-2015', 'SEPTIEMBRE', NULL),
(3, '1445625.0', 'Conexiones', 'OBJ', 'VELARDE VELASCO EDGAR', 'CL 4 MZ G LT 3 ZONA 4 - JOSE GALVEZ BARRENECH', 'Pachacamac', 'CARLOS CASTAÑEDA', 'CMLO', '05-nov-2015', 'NOVIEMBRE', NULL),
(4, '1439246.0', 'Proyectos BT', 'OBJ', 'ENCALADA TARAPAQUE JOSE MANUEL', 'MZ M LT 6 GRUPO 11 SECTOR 3', 'Villa El Salvador', 'CARLOS CASTAÑEDA', 'CMLO', '05-nov-2015', 'NOVIEMBRE', NULL),
(5, '1438025.0', 'Conexiones', 'OBJ', 'CRISTOBAL VILCAPUMA FLORENCIO', 'MZ M LT 7 ZONA 5 - QUEBRADA DE MANCHAY COM SA', 'Pachacamac', 'CARLOS CASTAÑEDA', 'Victor Vasquez Hidalgo', '04-nov-2015', 'NOVIEMBRE', NULL),
(6, '1427687.0', 'Conexiones', 'OBJ', 'VARGAS VILLEGAS ELMER AQUILINO', 'AV AYACUCHO MZ 40 LT 4B PJ VILLA POETA JOSE G', 'Villa Maria Del Triunfo', 'CARLOS CASTAÑEDA', 'CMLO', '04-nov-2015', 'NOVIEMBRE', NULL),
(7, '1447886.0', 'Conexiones', 'OBJ', 'RIVERA YNGAROCA FULGENCIO', 'MZ 02 LT 4 AH EL PARAISO DE CAJAMARQUILLA', 'Lurigancho-Chosica', 'CARLOS CASTAÑEDA', 'Victor Vasquez Hidalgo', '03-nov-2015', 'NOVIEMBRE', NULL),
(8, '1441952.0', 'Conexiones', 'OBJ', 'ESPIRITU CAPCHA RICHARD ALBERTO', 'PSJ LOS LIRIOS MZ B LT 05 ASOC DE PROPIETARIO', 'Chaclacayo', 'CARLOS CASTAÑEDA', 'Victor Vasquez Hidalgo', '03-nov-2015', 'NOVIEMBRE', NULL),
(9, '1440984.0', 'Conexiones', 'OBJ', 'LEGAFRI EIRL', 'CL SANTO DOMINGO (EX CL 42) MZ B2 LT 14 OF 1', 'La Molina', 'CARLOS CASTAÑEDA', 'Victor Vasquez Hidalgo', '31-oct-2015', 'OCTUBRE', NULL),
(10, '1441212.0', 'Proyectos Especiales', 'PRODIEL', 'LUZ DEL SUR - AATE PV14', 'AV 28 DE JULIO ESQ. JR. OBREROS S/N', 'La Victoria', 'CARLOS CASTAÑEDA', 'Cristian Quinto Sandoval', '27-oct-2015', 'OCTUBRE', NULL),
(11, '1416062.0', 'Masivos', 'OBJ', 'LDS - LT 01 MZ A ASOC. CALIFORNIA NIEVERIA', 'MZ A LT 1 ASOC VIVIENDA CALIFORNIA DE NIEVERI', 'Lurigancho-Chosica', 'CARLOS CASTAÑEDA', 'Bladimiro Quispe Alfaro', '23-oct-2015', 'OCTUBRE', NULL),
(12, '1426670.0', 'Proyectos BT', 'PRODIEL', 'LIMAYLLA MELENDEZ FLORENCIA DINA', 'CL LA UNION MZ E LT 10A ASOC PRO VIV FORTALEZ', 'Ate-Vitarte', 'CARLOS CASTAÑEDA', 'Felix Romero Baldeon', '15-oct-2015', 'OCTUBRE', NULL),
(13, '1422139.0', 'Proyectos BT', 'PRODIEL', 'GALINDO GUERRERO MARIA JESUS', 'JR HIPOLITO UNANUE 1300 INT 1 EDIF 7', 'La Victoria', 'CARLOS CASTAÑEDA', 'Jesus Contreras Estela', '29-sep-2015', 'SEPTIEMBRE', NULL),
(14, '1363620.0', 'Conexiones', 'OBJ', 'MITMA QUISPE TEODORO', 'MZ 33D LT 2 SECTOR SAN FCO DE LA CRUZ PJ PAMP', 'San Juan De Miraflores', 'CARLOS CASTAÑEDA', 'CMLO', '06-oct-2015', 'OCTUBRE', NULL),
(15, '1443475.0', 'Emergencia SP', 'GCI', 'FUNDACION IGNACIA R. DE CANEVARO', 'CAMINO REAL 355', 'San Isidro', 'CARLOS CASTAÑEDA', 'Wilman Rodriguez Solis', '05-oct-2015', 'OCTUBRE', NULL),
(16, '1433503.0', 'Proyectos BT', 'PRODIEL', 'GALVAN SIERRA SULPICIO CLAUDIO', 'PROL JAVIER PRADO MZ C2 LT 20 URB LOS PORTALE', 'Ate-Vitarte', 'CARLOS CASTAÑEDA', 'Felix Romero Baldeon', '02-oct-2015', 'OCTUBRE', NULL),
(17, '1412664.0', 'Conexiones', 'OBJ', 'AREA S.A', 'AV CIRCUNVALACION GOLF LOS INCAS 641 INT BCI', 'Santiago De Surco', 'CARLOS CASTAÑEDA', 'Luis Vega Mogollon', '02-oct-2015', 'OCTUBRE', NULL),
(18, '1411282.0', 'Conexiones', 'OBJ', 'AREA S.A', 'AV CIRCUNVALACION GOLF LOS INCAS 641 INT BCI', 'Santiago De Surco', 'CARLOS CASTAÑEDA', 'Luis Vega Mogollon', '02-oct-2015', 'OCTUBRE', NULL),
(19, '1322927.0', 'Mantenimiento MT', 'PRODIEL', 'CAMBIO DE INTERRUPTOR IP 9066', 'AV. VISTA ALEGRE', 'Chorrillos', 'HENRY CONTRERAS', 'Carlos Rivera Fabian', '06-jul-2015', 'JULIO', NULL),
(20, '1433137.0', '#N/A', 'JORIBA', 'RETIRO Y INSTALACIóN DE EMPALMES - RED BT', 'AAHH PUENTE TABLA', 'Cerro Azul', 'HENRY CONTRERAS', 'Yuri Urcuhuaranga Chavez', '15-sep-2015', 'SEPTIEMBRE', NULL),
(21, '1434979.0', '#N/A', 'CONSTRUCER', 'CAMBIO DE DISYUNTOR', 'SE 63', 'Miraflores', 'HENRY CONTRERAS', 'Mario Bazan Martel', '02-nov-2015', 'NOVIEMBRE', NULL),
(22, '1434786.0', '#N/A', 'CONSTRUCER', 'CAMBIO DE INT. DE POT. MVA POR VACIO', 'FLORES ARAOZ Y PASEO DE LA REPUBLICA', 'Miraflores', 'HENRY CONTRERAS', 'Mario Bazan Martel', '02-nov-2015', 'NOVIEMBRE', NULL),
(23, '1419127.0', '#N/A', 'CONSTRUCER', 'INSTALACION DE INTERRUPTOR VA CON RELÉ MULTIF', 'AV. PILLARDELLI CDRA. 35', 'San Isidro', 'HENRY CONTRERAS', 'Mario Bazan Martel', '02-nov-2015', 'NOVIEMBRE', NULL),
(24, '1430414.0', '#N/A', 'PLM', 'CAMBIO DE INTERRUPTOR DE PONTENCIA POR OTRO S', 'PUENTE LOS ANGELES CAB 1394', 'Lurigancho-Chosica', 'HENRY CONTRERAS', 'Jorge Arteaga Melendez', '20-sep-2015', 'SEPTIEMBRE', NULL),
(25, '1427011.0', '#N/A', 'CONSTRUCER', 'INSTALACION DE SECCIONADOR DE POTENCIA', 'AV. LA CULTURA', 'Ate-Vitarte', 'HENRY CONTRERAS', 'Carlos Rivera Fabian', '19-oct-2015', 'OCTUBRE', NULL),
(26, '1440794.0', '#N/A', 'GCI', 'CAMBIO DE POSTE DE BT INCLINADO CON BASE CORR', 'JR JORGE CHAVEZ', 'Imperial', 'HENRY CONTRERAS', 'Yuri Urcuhuaranga Chavez', '19-oct-2015', 'OCTUBRE', NULL),
(27, '1395568.0', 'Mantenimiento MT', 'OBJ', 'CAMBIO CABLE MT CON REPARACION PROVISIONAL G-', 'AV. 28 DE JULIO N° 1030', 'Lima Cercado', 'HENRY CONTRERAS', 'Mario Bazan Martel', '28-sep-2015', 'SEPTIEMBRE', NULL),
(28, '1420018.0', '#N/A', 'OBJ', 'INSTALACION DE DISYUNTOR EN TRAFO SE 2000', 'URB LOS PORTALES DE JAVIER PRADO', 'Ate-Vitarte', 'HENRY CONTRERAS', 'Carlos Rivera Fabian', '28-sep-2015', 'SEPTIEMBRE', NULL),
(29, '1421951.0', '#N/A', 'PRODIEL', 'CAMBIO DE TERMINAL Y LIMPIEZA DE CELDA Y EQUI', 'AV. CHOSICA', 'Lurigancho-Chosica', 'HENRY CONTRERAS', 'Carlos Rivera Fabian', '28-sep-2015', 'SEPTIEMBRE', NULL),
(30, '1443832.0', 'Medidores', 'ORION', 'PROGRAMA REEMPLAZO MEDIDORES ANTIGUEDAD', 'VARIAS', 'San Isidro', 'JAVIER VASQUEZ', 'Alexander Portuondo Mercado', '30-oct-2015', 'OCTUBRE', NULL),
(31, '1440689.0', 'Mantenimiento BT', 'JORIBA', 'P20 - REFORMA DE REDES EN LA SE 04745A', 'AAHH. HEROES DE SAN JUAN - ALT. KM 15 PANAMER', 'San Juan De Miraflores', 'JAVIER VASQUEZ', 'Flavio Guillermo Soto', '23-sep-2015', 'SEPTIEMBRE', NULL),
(32, '1443829.0', 'Medidores', 'ORION', 'REEMPLAZO MEDIDORES NTCSE', 'VARIAS', 'Miraflores', 'JAVIER VASQUEZ', 'Alexander Portuondo Mercado', '15-oct-2015', 'OCTUBRE', NULL),
(33, '1443454.0', 'Mantenimiento BT', 'SERMESA', '', 'Frente a Av. Nueva Toledo Lt. 105 - Cieneguil', 'Cieneguilla', 'JAVIER VASQUEZ', 'Jave Peña Cueva', '15-oct-2015', 'OCTUBRE', NULL),
(34, '1428630.0', 'Proyectos MT', 'OBJ', 'CAMBIO DE RED MT DE SE 1893 A 00027T', 'AV CARRETERA HUAROCHIRI SN', 'Ate-Vitarte', 'JEFFERSON VIDALON', 'Nabil Huamani Huayhua', '06-nov-2015', 'NOVIEMBRE', NULL),
(35, '1382938.0', 'Proyectos MT', 'PLM', 'ASTETE DE MANNHEIM MARIA ESTHER Y ESPOSO', 'JR GONZALES PRADA 581 - 585 - 589 DPTO BCI', 'Surquillo', 'JEFFERSON VIDALON', 'Denis Vasco Mallma', '14-sep-2015', 'SEPTIEMBRE', NULL),
(36, '1423553.0', 'Proyectos MT', 'OBJ', 'EJECUCION DE OBRAS CIVILES EN SED 01781S', 'AV ARENALES', 'Lince', 'JEFFERSON VIDALON', 'Jose Rojas Martinez', '14-sep-2015', 'SEPTIEMBRE', NULL),
(37, '1426308.0', 'Proyectos BT', 'OBJ', 'ORIHUELA HUARANGA AURORA SUSANA', 'PSJ LAS CASUARINAS MZ B SUBLT 24-C ASOC PRO V', 'Lurigancho-Chosica', 'JEFFERSON VIDALON', 'Freddy Monteza Leon', '28-oct-2015', 'OCTUBRE', NULL),
(38, '1385348.0', 'Proyectos MT', 'OBJ', 'INMOBILIARIA ITALICA S.A.C.', 'CL ENRIQUE PALACIOS 420', 'Miraflores', 'JEFFERSON VIDALON', 'Neil Ceras Tovar', '22-sep-2015', 'SEPTIEMBRE', NULL),
(39, '1426864.0', 'Proyectos MT', 'COTECON', 'MOSILOT GONZALES REYNA ISABEL', 'CL ONCE Y TRES MZ D LT 03 FDO MONTERRICO CHIC', 'Santiago De Surco', 'JEFFERSON VIDALON', 'Marco Espirilla Caceres', '22-oct-2015', 'OCTUBRE', NULL),
(40, '1424841.0', 'Proyectos MT', 'PLM', 'DEPAHORRO S.A.C.', 'CL PADEREWSKI MZ M LT 8 URB LA CALERA DE LA M', 'Surquillo', 'JEFFERSON VIDALON', 'Denis Vasco Mallma', '22-oct-2015', 'OCTUBRE', NULL),
(41, '1435437.0', 'Proyectos BT', 'ALVIMAR', 'LOPEZ GARAY JANETH MARGARITA', 'UCV 03172 LT 19-C1 SECTOR COMUNIDAD DE LURIN', 'Lurin', 'JEFFERSON VIDALON', 'Jackson Ferro Salazar', '16-oct-2015', 'OCTUBRE', NULL),
(42, '1420079.0', 'Proyectos MT', 'ORION', 'BRISMAR S.A.C', 'AV NICOLAS ARRIOLA 2915 MZ C LT 22 URB EL MER', 'San Luis', 'JEFFERSON VIDALON', 'Nabil Huamani Huayhua', '14-oct-2015', 'OCTUBRE', NULL),
(43, '1365906.0', 'Proyectos Especiales', 'COTECON', 'LUZ DE SUR S.A.A. - COORP. MADAGASCAR', 'CL BERLIN 1014', 'Miraflores', 'JEFFERSON VIDALON', 'Cristian Quinto Sandoval', '29-sep-2015', 'SEPTIEMBRE', NULL),
(44, '1436600.0', 'Proyectos BT', 'COTECON', 'RODRIGUEZ VENERO DE RAMIREZ ISIDORA', 'JR MICAELA BASTIDAS MZ E LT 17 INT 1 AH MATEO', 'Santiago De Surco', 'JEFFERSON VIDALON', 'Marco Espirilla Caceres', '10-oct-2015', 'OCTUBRE', NULL),
(45, '1433438.0', 'Proyectos BT', 'OBJ', 'MORALES PAUCAR ERNESTO', 'UCV 148 LT 47 PJ HUYCAN ZONA J', 'Ate-Vitarte', 'JEFFERSON VIDALON', 'Freddy Monteza Leon', '12-oct-2015', 'OCTUBRE', NULL),
(46, '1419495.0', 'Proyectos MT', 'CONSTRUCER', 'COMPAÑIA TEXTIL WG S.A.C', 'AV NICOLAS AYLLON 3080 LT C FDO VASQUEZ', 'Ate-Vitarte', 'JEFFERSON VIDALON', 'Nabil Huamani Huayhua', '12-oct-2015', 'OCTUBRE', NULL),
(47, '1434107.0', 'Conexiones', 'OBJ', 'TURPO BALDEON MARY LUZ', 'PSJ 7 MZ K LT 7 CP RURAL RIO SECO', 'Cieneguilla', 'JHON MUÑOZ', 'Victor Vasquez Hidalgo', '07-nov-2015', 'NOVIEMBRE', NULL),
(48, '1399114.0', 'Conexiones', 'OBJ', 'AMARO CUYUBAMBA ELARD CANCIO', 'UCV 221 LT 41 ZONA T - TERCERA ETAPA PJ PROYE', 'Ate-Vitarte', 'JHON MUÑOZ', 'Victor Vasquez Hidalgo', '07-nov-2015', 'NOVIEMBRE', NULL),
(49, '1448035.0', 'Conexiones', 'OBJ', 'KORAND S.A.C.', 'AV ARENALES 1055 URB SANTA BEATRIZ', 'Lima Cercado', 'JHON MUÑOZ', 'Piero Amador Salazar', '03-nov-2015', 'NOVIEMBRE', NULL),
(50, '1433474.0', 'Conexiones', 'OBJ', 'SANCHEZ SALAZAR SANTA ISABEL Y ESPOSO', 'JR GARCIA GARCIA 425', 'Barranco', 'JHON MUÑOZ', 'Piero Amador Salazar', '16-sep-2015', 'SEPTIEMBRE', NULL),
(51, '1424755.0', '#N/A', 'GCI', 'RAMOS HUAMANI NORMA ALFREDA', 'MZ B LT 01 URB SAN LEONARDO SUBLOTE 108', 'Imperial', 'JHON MUÑOZ', 'JREP', '17-sep-2015', 'SEPTIEMBRE', NULL),
(52, '1419530.0', 'Conexiones', 'OBJ', 'VELA VELASQUEZ MANUELA LILIA', 'CL EL PRADO 141 URB LA CALESA', 'Santiago De Surco', 'JHON MUÑOZ', 'Piero Amador Salazar', '31-oct-2015', 'OCTUBRE', NULL),
(53, '1432127.0', 'Conexiones', 'OBJ', 'PERALES CANA JOSUE LUCAS', 'MZ T LT 6 URB SAN IGNACIO DE MONTERRICO', 'Santiago De Surco', 'JHON MUÑOZ', 'Piero Amador Salazar', '02-nov-2015', 'NOVIEMBRE', NULL),
(54, '1426217.0', 'Conexiones', 'OBJ', 'TOVAR PECHO VDA DE PASACHE ANA', 'MZ Y LT 10 PJ STA ISABEL DE VILLA', 'Santiago De Surco', 'JHON MUÑOZ', 'Piero Amador Salazar', '29-oct-2015', 'OCTUBRE', NULL),
(55, '1447150.0', 'Conexiones', 'OBJ', 'DESARROLLO DE PROYECTOS INMOBILIARIOS S.A.C.', 'JR GIUSEPPE VERDI 309 BLOCK H SECTOR II FUNDO', 'Santiago De Surco', 'JHON MUÑOZ', 'Piero Amador Salazar', '29-oct-2015', 'OCTUBRE', NULL),
(56, '1422418.0', 'Conexiones', 'OBJ', 'NIÑO SUSANIBAR ISABEL', 'CL DOÑA CONSUELO MZ D1 LT 10 URB SANTA ROSA D', 'Santiago De Surco', 'JHON MUÑOZ', 'Piero Amador Salazar', '29-oct-2015', 'OCTUBRE', NULL),
(57, '1435845.0', 'Conexiones', 'OBJ', 'GUILLEN SOTOMAYOR FLOR DE MARIA', 'JR BENITO PARDO FIGUEROA 315 DPTO 315-4', 'La Victoria', 'JHON MUÑOZ', 'Piero Amador Salazar', '28-oct-2015', 'OCTUBRE', NULL),
(58, '1439369.0', 'Conexiones', 'OBJ', 'VILDOSO DUEÑAS KAREN SUSAN', 'AV HUAYLAS 255', 'Chorrillos', 'JHON MUÑOZ', 'Piero Amador Salazar', '28-oct-2015', 'OCTUBRE', NULL),
(59, '1442584.0', 'Conexiones', 'OBJ', 'DIAZ NAPANGA ROSARIO PAULINO', 'MZ 12 LT 5 SECTOR MICAELA BASTIDAS PJ INCA PA', 'Villa Maria Del Triunfo', 'JHON MUÑOZ', 'CMLO', '28-oct-2015', 'OCTUBRE', NULL),
(60, '1446140.0', 'Conexiones', 'OBJ', 'ATLAS SERVICE SA', 'AV LOS PINOS MZ N1 LT 6 URB VILLA MARINA', 'Chorrillos', 'JHON MUÑOZ', 'Piero Amador Salazar', '27-oct-2015', 'OCTUBRE', NULL),
(61, '1447096.0', 'Conexiones', 'OBJ', 'RUSSO HERRERA LORENZO OSCAR', 'JR DANIEL URREA 195 - 185 PS 2', 'Chorrillos', 'JHON MUÑOZ', 'Piero Amador Salazar', '27-oct-2015', 'OCTUBRE', NULL),
(62, '1447091.0', 'Conexiones', 'OBJ', 'RUSSO VALCARCEL RONALD ALDO', 'JR DANIEL URREA 195 - 185 PS 3', 'Chorrillos', 'JHON MUÑOZ', 'Piero Amador Salazar', '27-oct-2015', 'OCTUBRE', NULL),
(63, '1433377.0', 'Conexiones', 'OBJ', 'RIOS HARO ANGELA KARINA', 'MZ P LT 7 URB HONOR Y LEALTAD', 'Santiago De Surco', 'JHON MUÑOZ', 'Piero Amador Salazar', '27-oct-2015', 'OCTUBRE', NULL),
(64, '1438395.0', 'Conexiones', 'OBJ', 'MOTTA TAGLE JOSE MARIA', 'CL LOS ROSALES MZ 39 LT 10 - A SECTOR A ASOC', 'Chorrillos', 'JHON MUÑOZ', 'Piero Amador Salazar', '27-oct-2015', 'OCTUBRE', NULL),
(65, '1444436.0', 'Conexiones', 'OBJ', 'LEDESMA ACOSTA CARLOS AMERICO', 'AV CENTRAL S/N', 'Jesus Maria', 'JHON MUÑOZ', 'Piero Amador Salazar', '26-oct-2015', 'OCTUBRE', NULL),
(66, '1441353.0', 'Conexiones', 'OBJ', 'ESPINOZA PALOMINO MARLENI', 'AV MEXICO 2219 DPTO 101', 'La Victoria', 'JHON MUÑOZ', 'Piero Amador Salazar', '26-oct-2015', 'OCTUBRE', NULL),
(67, '1435669.0', 'Conexiones', 'OBJ', 'SOLTO NAVARRO ALEJANDRO', 'CL ANDROMEDA MZ 8 LT J URB LA CAMPIÑA', 'Chorrillos', 'JHON MUÑOZ', 'Piero Amador Salazar', '24-oct-2015', 'OCTUBRE', NULL),
(68, '1440043.0', 'Conexiones', 'OBJ', 'VIZCARRA CESPEDES FERNANDO AUGUSTO Y ESPOSA', 'PSJ VILLARAN 178 URB LOS SAUCES', 'Surquillo', 'JHON MUÑOZ', 'Piero Amador Salazar', '23-oct-2015', 'OCTUBRE', NULL),
(69, '1405812.0', 'Conexiones', 'OBJ', 'SANCHEZ JARAMILLO YESENIA YAZMIN', 'CL PALAS ATENEA 148 PS 2', 'Chorrillos', 'JHON MUÑOZ', 'Piero Amador Salazar', '23-oct-2015', 'OCTUBRE', NULL),
(70, '1406805.0', 'Conexiones', 'OBJ', 'MUNICIPALIDAD DISTRITAL DE LINCE', 'AV RIVERA NAVARRETE COM CL LOS MIRTOS .', 'Lince', 'JHON MUÑOZ', 'Piero Amador Salazar', '23-oct-2015', 'OCTUBRE', NULL),
(71, '1406796.0', 'Conexiones', 'OBJ', 'MUNICIPALIDAD DISTRITAL DE LINCE', 'JR LAS HERAS CON JR IQUITOS .', 'Lince', 'JHON MUÑOZ', 'Piero Amador Salazar', '23-oct-2015', 'OCTUBRE', NULL),
(72, '1433051.0', 'Conexiones', 'OBJ', 'BELLO POCCO ORESTES Y ESPOSA', 'CL SAN MIGUEL MZ G6 LT 1 AH CIUDAD DE GOSEN', 'Villa Maria Del Triunfo', 'JHON MUÑOZ', 'CMLO', '25-sep-2015', 'SEPTIEMBRE', NULL),
(73, '1439749.0', 'Conexiones', 'OBJ', 'MARVEN S.R.L', 'AV PEDRO TEJADA MZ M1 LT 19 ZONA 1 PJ PRIMER', 'Villa Maria Del Triunfo', 'JHON MUÑOZ', 'CMLO', '21-oct-2015', 'OCTUBRE', NULL),
(74, '1413804.0', 'Conexiones', 'OBJ', 'HUAMAN CANCHARI FELIX', 'AV SAN JUAN 1136 MZ N LT 6 URB LAS MORAS', 'San Luis', 'JHON MUÑOZ', 'Victor Vasquez Hidalgo', '21-oct-2015', 'OCTUBRE', NULL),
(75, '1438642.0', 'Conexiones', 'OBJ', 'HUACHUHUILLCA VELASQUE FACUNDINA', 'MZ D LT 36 ASOC PROG. DE VIV. RES. LAS AMERIC', 'Ate-Vitarte', 'JHON MUÑOZ', 'Victor Vasquez Hidalgo', '20-oct-2015', 'OCTUBRE', NULL),
(76, '1438051.0', 'Conexiones', 'OBJ', 'GRUPO INMOBILIARIO ACCIONA S.A.C.', 'AV LA ENCALADA 1257 OF 401B URB LIMA POLO AND', 'Santiago De Surco', 'JHON MUÑOZ', 'Piero Amador Salazar', '15-oct-2015', 'OCTUBRE', NULL),
(77, '1431771.0', 'Conexiones', 'OBJ', 'ONPE', 'JR BRIGADIER MATEO PUMACAHUA 1145 1149', 'Jesus Maria', 'JHON MUÑOZ', 'Piero Amador Salazar', '13-oct-2015', 'OCTUBRE', NULL),
(78, '1211471.0', 'Conexiones', 'OBJ', 'DOROTEO ARISTE JESUS', 'UCV 98 LT 31 ZONA F AH HUAYCAN', 'Ate-Vitarte', 'JHON MUÑOZ', 'Javier Rodriguez Lopez', '29-sep-2015', 'SEPTIEMBRE', NULL),
(79, '1376767.0', '#N/A', 'GCI', 'AGRICOLA ISABEL SAC', 'CL . S/N ANEXO LUCUMO', 'Lunahuana', 'JHON MUÑOZ', 'William Yakson Palomino Rodriguez', '09-oct-2015', 'OCTUBRE', NULL),
(80, '1388063.0', '#N/A', 'GCI', 'QUISPE CASTRO MODESTA', 'MZ B LT 11-A SECTOR II AH VILLA EL CARMEN', 'San Vicente De Cañete', 'JHON MUÑOZ', 'JREP', '07-oct-2015', 'OCTUBRE', NULL),
(81, '1424830.0', '#N/A', 'GCI', 'CORDOVA HERRERA CLOTILDE', 'MZ O LT 07 AH NUEVO CERRO AZUL', 'Cerro Azul', 'JHON MUÑOZ', 'JREP', '06-oct-2015', 'OCTUBRE', NULL),
(82, '1430795.0', 'Conexiones', 'OBJ', 'MOLINA FLORES TEODOSIA', 'MZ B LT 3-B URB SARITA COLONIA 2', 'Ate-Vitarte', 'JHON MUÑOZ', 'Victor Vasquez Hidalgo', '03-oct-2015', 'OCTUBRE', NULL),
(83, '1399205.0', '#N/A', 'GCI', 'JIMENEZ TUPAC MARIBEL IRMA', 'MZ A LT 03 INT 03 URB MI PERU', 'San Vicente De Cañete', 'JHON MUÑOZ', 'JREP', '30-sep-2015', 'SEPTIEMBRE', NULL),
(84, '1435811.0', 'Conexiones', 'OBJ', 'CARDENAS PORTOLATINO MARIA LUZ', 'PROL AV PACHACUTEC MZ D LT 23 GRUPO 3 PJ NUEV', 'Villa Maria Del Triunfo', 'JHON MUÑOZ', 'CMLO', '30-sep-2015', 'SEPTIEMBRE', NULL),
(85, '1224487.0', 'Conexiones Cañete', 'GCI', 'ROJAS AROTINCO MARCELINO', 'MZ B LT 06 AH UPIS SR. DE LOS MILAGROS', 'Imperial', 'JHON MUÑOZ', 'Pilar Rojas Pongo', '30-sep-2015', 'SEPTIEMBRE', NULL),
(86, '1453608.0', 'Emergencia SP', 'GCI', 'GUTIERREZ PAULINO PIO ARMANDO', 'KM 36 FTE POZO DE AGUA NUEVO LURIN', 'Lurin', 'JOSE MARCOS', 'DRAP', '05-nov-2015', 'NOVIEMBRE', NULL),
(87, '1453599.0', 'Emergencia SP', 'GCI', 'MUNICIPALIDAD DISTRITAL DE ATE', 'CENTRAL KM 7.1 CON CL HEROES DE LAS 8 HORAS C', 'Ate-Vitarte', 'JOSE MARCOS', 'EDVP', '05-nov-2015', 'NOVIEMBRE', NULL),
(88, '1453380.0', 'Emergencia SP', 'GCI', 'PURCA EDUARDA', 'SECTOR 1 GRUPO 6 MZ A LT 1 V.E.S.', 'Villa El Salvador', 'JOSE MARCOS', 'Manuel Muñoz Ucañan', '05-nov-2015', 'NOVIEMBRE', NULL),
(89, '1453340.0', 'Emergencia SP', 'GCI', '585618 HUAROC ANTENOR', 'SCT. 2 GRP. 19 MZ. B LT. 10 VLL EL SALV', 'Villa El Salvador', 'JOSE MARCOS', 'Manuel Muñoz Ucañan', '05-nov-2015', 'NOVIEMBRE', NULL),
(90, '1453277.0', 'Emergencia SP', 'GCI', 'INVERSIONES BARRA 2 SAC', 'AV. LA CIMA 130 CASA 2', 'La Molina', 'JOSE MARCOS', 'EDVP', '05-nov-2015', 'NOVIEMBRE', NULL),
(91, '1453266.0', 'Emergencia SP', 'GCI', 'LAIME JARA JOSE CARMEN', 'MZ I LT 1 GRUPO 9 SECTOR 3', 'Villa El Salvador', 'JOSE MARCOS', 'EDVP', '05-nov-2015', 'NOVIEMBRE', NULL),
(92, '1452977.0', 'Emergencia SP', 'GCI', 'CUYA HUAMBACHANO CELINDA JOSEFINA', 'MZ E LT 7 ASOC LA MERCED', 'Punta Negra', 'JOSE MARCOS', 'Manuel Muñoz Ucañan', '05-nov-2015', 'NOVIEMBRE', NULL),
(93, '1452956.0', 'Emergencia SP', 'GCI', 'CAMPOS CARAZAS ELIZABETH MIRTHA', 'CALLE S/N MZ N LT 11 SEC3 GR7 PP JJ V SALV', 'Villa El Salvador', 'JOSE MARCOS', 'Manuel Muñoz Ucañan', '05-nov-2015', 'NOVIEMBRE', NULL),
(94, '1452740.0', 'Emergencia MT', 'GCI', '', '', 'Santa Anita', 'JOSE MARCOS', 'Wilman Rodriguez Solis', '05-nov-2015', 'NOVIEMBRE', NULL),
(95, '1452672.0', 'Emergencia SP', 'GCI', 'GARAGONDO VALENCIA ALBERTO', 'STO CRISTO MZ A LT 6-B', 'Santiago De Surco', 'JOSE MARCOS', 'EDVP', '05-nov-2015', 'NOVIEMBRE', NULL),
(96, '1452668.0', 'Emergencia SP', 'GCI', 'GENARO DELGADO PARKER', 'SANTA MARIA DEL MAR 110', 'Santa Maria', 'JOSE MARCOS', 'EDVP', '05-nov-2015', 'NOVIEMBRE', NULL),
(97, '1420207.0', 'Emergencia SP', 'GCI', 'SERVICIO DE TAPAS BT SECTOR 9-10-11-12', 'SERVICIO DE TAPAS BT SECTOR 9-10-11-12', 'Surquillo', 'JOSE MARCOS', 'Alejandro Navarrete Vargas', '05-sep-2015', 'SEPTIEMBRE', NULL),
(98, '1452531.0', 'Emergencia SP', 'GCI', 'CANALES BRUNO MARCO', 'FLORA TRISTAN 313 STA PATRICIA 2ETP', 'La Molina', 'JOSE MARCOS', 'Martin Ciriaco Figueroa', '05-nov-2015', 'NOVIEMBRE', NULL),
(99, '1452112.0', 'Emergencia SP', 'GCI', 'NUÑEZ ENRIQUE', 'CALLE -B MZ D LT 9 LURIGANCHO 28 DE JULIO', 'Lurigancho-Chosica', 'JOSE MARCOS', 'RMAS', '05-nov-2015', 'NOVIEMBRE', NULL),
(100, '1451839.0', 'Emergencia SP', 'GCI', 'VEGA JAUREGUI YOLANDA', 'MZ.B1 LT.28 BAR.2 SEC.1 IV.ETA.PACHACAMA', 'Villa El Salvador', 'JOSE MARCOS', 'Wilman Rodriguez Solis', '05-nov-2015', 'NOVIEMBRE', NULL),
(101, '1452320.0', 'Emergencia SP', 'GCI', 'HIJOS DE APURIMAC ASOC. DE VIV.', 'MZ. M LT. 11 HIJOS DE APURIMAC ATE VITA', 'Ate-Vitarte', 'JOSE MARCOS', 'EDVP', '04-nov-2015', 'NOVIEMBRE', NULL),
(102, '1452680.0', 'Emergencia SP', 'GCI', 'MARCAPIÑA SULCA JULIO ANICETO', 'MZ B LT 11 ASOC ESTRELLA ANDINA', 'Ate-Vitarte', 'JOSE MARCOS', 'DRAP', '31-oct-2015', 'OCTUBRE', NULL),
(103, '1452229.0', 'Emergencia SP', 'GCI', '1199380 PICON BRAVO GUILLERMO JULIO', 'MZ.G1 LT.34 BAR.3 SEC.2 4ETA.PACHACAMAC', 'Villa El Salvador', 'JOSE MARCOS', 'EDVP', '31-oct-2015', 'OCTUBRE', NULL),
(104, '1451026.0', 'Emergencia SP', 'GCI', '', '', 'Ate-Vitarte', 'JOSE MARCOS', 'Santos Rosales Valiente', '31-oct-2015', 'OCTUBRE', NULL),
(105, '1450466.0', 'Emergencia SP', 'GCI', 'KAM FAI S.A.', 'PRIMAVERA 1468 PS 3', 'Santiago De Surco', 'JOSE MARCOS', 'Luis Lucero Varillas', '31-oct-2015', 'OCTUBRE', NULL),
(106, '1447753.0', 'Emergencia AP', 'GCI', '1295732 20 ATENCIÓN REP. DE LUM. SUSTRAIDAS F', '20 ATENCIÓN REP. DE LUM. SUSTRAIDAS FONOLUZ D', 'La Victoria', 'JOSE MARCOS', 'EDVP', '31-oct-2015', 'OCTUBRE', NULL),
(107, '1442740.0', '#N/A', 'GCI', 'CORDOVA BUITRON NANCY ESPERANZA', 'MZ A LT 5-6 CP SANTA FE DE VERACRUZ', 'Cerro Azul', 'JOSE MARCOS', 'Yuri Urcuhuaranga Chavez', '30-oct-2015', 'OCTUBRE', NULL),
(108, '1442724.0', '#N/A', 'GCI', 'MOLLEDA TRUJILLO ALFREDO', 'C.P.HIPOLITO UNANUE MZ.N LT.2', 'San Vicente De Cañete', 'JOSE MARCOS', 'Yuri Urcuhuaranga Chavez', '30-oct-2015', 'OCTUBRE', NULL),
(109, '1450511.0', 'Emergencia SP', 'GCI', 'SANTISTEVAN LUIS', 'RINCONADA BAJA 390(A2 ELHARAS)LA MOLINA', 'La Molina', 'JOSE MARCOS', 'EDVP', '26-oct-2015', 'OCTUBRE', NULL),
(110, '1450232.0', 'Emergencia SP', 'GCI', 'PEREZ HUAMAN NOLBERTO', 'ZONA:II MZ.L1 L:03 A.H.HUAMPANI ALTO', 'Lurigancho-Chosica', 'JOSE MARCOS', 'Manuel Muñoz Ucañan', '26-oct-2015', 'OCTUBRE', NULL),
(111, '1448421.0', 'Emergencia SP', 'GCI', 'ASOCIACION BENEFICA PRO-NIÑO', 'CALLE JOSE ANTONIO 125 URB PARQUE DE MONTERRI', 'La Molina', 'JOSE MARCOS', 'Martin Ciriaco Figueroa', '21-oct-2015', 'OCTUBRE', NULL),
(112, '1447171.0', 'Emergencia SP', 'GCI', 'ENCISO CONDORI ROSA MARIA', 'MZ F LT 10 AH EL AMAUTA ZONA B', 'Ate-Vitarte', 'JOSE MARCOS', 'Luis Lucero Varillas', '21-oct-2015', 'OCTUBRE', NULL),
(113, '1446878.0', 'Emergencia AP', 'GCI', '', '', 'Surquillo', 'JOSE MARCOS', 'EDVP', '21-oct-2015', 'OCTUBRE', NULL),
(114, '1441230.0', 'Emergencia SP', 'GCI', 'TALAVERA DE CASTILLO MARIA LOURDES', 'MZ.30A LT.15 ALTOS PUCUSANA', 'Pucusana', 'JOSE MARCOS', 'Alejandro Navarrete Vargas', '21-oct-2015', 'OCTUBRE', NULL),
(115, '1448505.0', 'Emergencia SP', 'GCI', 'MINISTERIO DE DEFENSA FAP', 'J CHAVEZ 226 SURCO', 'Santiago De Surco', 'JOSE MARCOS', 'Wilman Rodriguez Solis', '19-oct-2015', 'OCTUBRE', NULL),
(116, '1447232.0', 'Emergencia SP', 'GCI', 'PUNTO VISUAL S.A.', 'PANAMERICANA SUR KM 30.5 S/N', 'Lurin', 'JOSE MARCOS', 'EDVP', '19-oct-2015', 'OCTUBRE', NULL),
(117, '1446725.0', 'Emergencia SP', 'GCI', 'CASTRO TAPIA ABEL', 'MZ H LT 1 AH LA LADERA DE NVA ESPERANZA', 'Villa Maria Del Triunfo', 'JOSE MARCOS', 'RMAS', '19-oct-2015', 'OCTUBRE', NULL),
(118, '1433893.0', 'Emergencia AP', 'GCI', 'LEON AQUILINO', 'MANZ E LT 15 P.J.HUASCAR', 'Santa Anita', 'JOSE MARCOS', 'Luis Lucero Varillas', '14-oct-2015', 'OCTUBRE', NULL),
(119, '1446435.0', 'Emergencia SP', 'GCI', 'PALACIOS PEREZ MARIA', 'MZ A LT 10 AH LAS TORRES DE SAN GABRIEL ALTO', 'Villa Maria Del Triunfo', 'JOSE MARCOS', 'Luis Lucero Varillas', '13-oct-2015', 'OCTUBRE', NULL),
(120, '1446280.0', 'Emergencia SP', 'GCI', 'ENTEL PERU S.A.', 'CIRCUITO DE PLAYAS BARRANQUITO', 'Barranco', 'JOSE MARCOS', 'EDVP', '13-oct-2015', 'OCTUBRE', NULL),
(121, '1444520.0', 'Emergencia SP', 'GCI', 'VIVAS CLEMENTE ALEJANDRO', 'LIMA 403 A H S BARTOLME-HUAROCHIRI', 'San Bartolome', 'JOSE MARCOS', 'Luis Lucero Varillas', '13-oct-2015', 'OCTUBRE', NULL),
(122, '1441636.0', 'Emergencia SP', 'GCI', 'GALARZA TAYPE EDGAR CESAR', 'MZ H LT 1 ASOC POP DE VIV SEÑOR DE MURUHUAY', 'Ate-Vitarte', 'JOSE MARCOS', 'EDVP', '12-oct-2015', 'OCTUBRE', NULL),
(123, '1440440.0', 'Conexiones', 'OBJ', 'ALFARO VICENTE JULIO ARTURO', 'CL EL PROGRESO MZ 135 LT 7 ZONA I UCV 135 PJ', 'Ate-Vitarte', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '07-nov-2015', 'NOVIEMBRE', NULL),
(124, '1432326.0', 'Conexiones', 'OBJ', 'SOTO SOTO POMPEYO JACINTO', 'CL PAMPA DE MAJES MZ B LT 9 URB REPORTEROS GR', 'Santiago De Surco', 'JUAN CACHAY', 'Piero Amador Salazar', '09-nov-2015', 'NOVIEMBRE', NULL),
(125, '1431198.0', 'Conexiones', 'OBJ', 'SUCASACA VARGAS CARLOS', 'MZ Z LT 26 BAR 3 SECTOR 2 4TA ETAPA AGR PACHA', 'Villa El Salvador', 'JUAN CACHAY', 'CMLO', '09-nov-2015', 'NOVIEMBRE', NULL),
(126, '1443898.0', 'Conexiones', 'OBJ', 'LUJAN LAURA PAULINO OSCAR', 'MZ LL LT 17 AH UPIS MARIA PARADO DE BELLIDO', 'Ate-Vitarte', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '06-nov-2015', 'NOVIEMBRE', NULL),
(127, '1395720.0', 'Conexiones', 'OBJ', 'MUNICIPALIDAD DE ATE', 'PRQ N° I ZONA 3 SUB ZONA 1 URB SANTA MARTHA', 'Ate-Vitarte', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '06-nov-2015', 'NOVIEMBRE', NULL),
(128, '1443208.0', 'Conexiones', 'OBJ', 'CORREA CHACON ALEJANDRO', 'MZ G LT 3 AH VILLA HUASCATA', 'Chaclacayo', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '06-nov-2015', 'NOVIEMBRE', NULL),
(129, '1442977.0', 'Conexiones', 'OBJ', 'VALERIO MESIAS VICTORIA', 'AV SANTA ROSA DE LIMA MZ B LT 1 ASOC LA RONDA', 'Ricardo Palma', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '06-nov-2015', 'NOVIEMBRE', NULL),
(130, '1447941.0', 'Conexiones', 'OBJ', 'QUIÑONEZ CAPARACHIN PABLO LUMBARTE', 'MZ E LT 03 ASOC DE PROG DE VIV SOL DE LAS VIÑ', 'Ate-Vitarte', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '06-nov-2015', 'NOVIEMBRE', NULL),
(131, '1452406.0', 'Conexiones', 'OBJ', 'TOCTO FERNANDEZ DE CASTRO NEOBEL', 'MZ E LT 7 URB RESIDENCIAL CASA BLANCA', 'Santiago De Surco', 'JUAN CACHAY', 'Piero Amador Salazar', '05-nov-2015', 'NOVIEMBRE', NULL),
(132, '1449301.0', 'Conexiones', 'OBJ', 'FONSECA ESPINOZA FLORENCIO VICTOR', 'MZ 69 LT 12 URB PARCELACION SEMIRUSTICA- CIEN', 'Cieneguilla', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '05-nov-2015', 'NOVIEMBRE', NULL),
(133, '1449016.0', 'Conexiones', 'OBJ', 'CRUZ RAMIREZ EUMELIO', 'MZ X LT 3 ANEXO 9 DE OCTUBRE', 'Asia', 'JUAN CACHAY', 'CMLO', '05-nov-2015', 'NOVIEMBRE', NULL),
(134, '1444364.0', 'Conexiones', 'OBJ', 'ALTAMIRANO MOGOLLON DE LOZADA MARIA LUZ', 'MZ D'' LT 09 BAR 2 SECTOR II AGR PACHACAMAC IV', 'Villa El Salvador', 'JUAN CACHAY', 'CMLO', '05-nov-2015', 'NOVIEMBRE', NULL),
(135, '1443611.0', 'Conexiones', 'OBJ', 'LLANOS GUEVARA ELIZABET', 'MZ E LT 13 URB RESIDENCIAL CASA BLANCA', 'Santiago De Surco', 'JUAN CACHAY', 'Piero Amador Salazar', '05-nov-2015', 'NOVIEMBRE', NULL),
(136, '1451930.0', 'Conexiones', 'OBJ', 'RIOS CRISTOBAL RICARDO ISMAEL', 'CL 2 MZ A LT 19 URB HARAS DE HUAMPANI', 'Lurigancho-Chosica', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '05-nov-2015', 'NOVIEMBRE', NULL),
(137, '1444441.0', 'Conexiones', 'OBJ', 'HERNANDEZ VDA MALCA MARIA PORFIRIA', 'PSJ SANTA CATALINA 124 ZONA PARTE DEL POTRERO', 'Santiago De Surco', 'JUAN CACHAY', 'Piero Amador Salazar', '05-nov-2015', 'NOVIEMBRE', NULL),
(138, '1434960.0', 'Conexiones', 'OBJ', 'GAMBOA PILLACA JHONNY', 'MZ 1 LT 9 A PS 2 CMTE 8 AH VILLA VENTURO', 'Chorrillos', 'JUAN CACHAY', 'Piero Amador Salazar', '05-nov-2015', 'NOVIEMBRE', NULL),
(139, '1443498.0', 'Conexiones', 'OBJ', 'LOPEZ CUADRA CARMEN', 'MZ H LT 12 AH NUEVO AMANECER', 'Chorrillos', 'JUAN CACHAY', 'Piero Amador Salazar', '05-nov-2015', 'NOVIEMBRE', NULL),
(140, '1442769.0', 'Conexiones', 'OBJ', 'LEGUA ALCALA BRENDA CECILIA', 'PROL TUMBES MZ 71A 1 LT 4 A PJ NUEVA ESPERANZ', 'Villa Maria Del Triunfo', 'JUAN CACHAY', 'CMLO', '05-nov-2015', 'NOVIEMBRE', NULL),
(141, '1447172.0', 'Conexiones', 'OBJ', 'MALCA CORREA BALBINA MARIBEL', 'MZ B6 LT 3 AH VILLA ALEJANDRO II', 'Lurin', 'JUAN CACHAY', 'CMLO', '05-nov-2015', 'NOVIEMBRE', NULL),
(142, '1441655.0', 'Conexiones', 'OBJ', 'VERME MOVILIANO MARGARITA', 'AV GRAU 944 INT 33', 'Barranco', 'JUAN CACHAY', 'Piero Amador Salazar', '05-nov-2015', 'NOVIEMBRE', NULL),
(143, '1447135.0', 'Conexiones', 'OBJ', 'VILLANUEVA CARBAJAL MANSUETO OSCAR', 'CL JUAN FANNING 216 PS 5', 'Miraflores', 'JUAN CACHAY', 'Piero Amador Salazar', '05-nov-2015', 'NOVIEMBRE', NULL),
(144, '1440277.0', 'Conexiones', 'OBJ', 'CHAVARRI CASTELLANO RAFAEL ALFONSO', 'CL ZURBARAN 132 134 URB SAN BORJA', 'San Borja', 'JUAN CACHAY', 'Piero Amador Salazar', '05-nov-2015', 'NOVIEMBRE', NULL),
(145, '1439879.0', 'Conexiones', 'OBJ', 'ALBARRAN BUENO MARIA GLADYS', 'AV GUARDIA CIVIL SUR MZ D LT 2 ASOC PROPIETAR', 'Santiago De Surco', 'JUAN CACHAY', 'Piero Amador Salazar', '05-nov-2015', 'NOVIEMBRE', NULL),
(146, '1451686.0', 'Conexiones', 'OBJ', 'VIETTEL PERU SAC', 'JR WASHINGTON 1801- 1807', 'Lima Cercado', 'JUAN CACHAY', 'Piero Amador Salazar', '04-nov-2015', 'NOVIEMBRE', NULL),
(147, '1448699.0', 'Conexiones', 'OBJ', 'ALMENARA VARGAS CLAUDIA', 'CL MANUEL SCORZA 185 191 DPTO C-402 EDIF C', 'Santiago De Surco', 'JUAN CACHAY', 'Piero Amador Salazar', '04-nov-2015', 'NOVIEMBRE', NULL),
(148, '1447406.0', 'Conexiones', 'OBJ', 'PEREYRA MIRANDA VDA DE QUEVEDO ZOILA ESPERANZ', 'JR MARIANO PACHECO 786 MZ K-1 LT 14 URB SANTA', 'La Victoria', 'JUAN CACHAY', 'Piero Amador Salazar', '04-nov-2015', 'NOVIEMBRE', NULL),
(149, '1443792.0', 'Conexiones', 'OBJ', 'LOPEZ LOME PRIMITIVA', 'MZ L LT 3 A 4 ASOC LOS PORTALES DE NIEVERIA', 'Lurigancho-Chosica', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '04-nov-2015', 'NOVIEMBRE', NULL),
(150, '1449623.0', 'Conexiones', 'OBJ', 'CARDENAS SICAÑA JAIME', 'AV LA UNION MZ F-7 LT 3B ASOC CPR HUERTOS DE', 'Pachacamac', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '04-nov-2015', 'NOVIEMBRE', NULL),
(151, '1448620.0', 'Conexiones', 'OBJ', 'CRUZ CONDORI MAURO Y ESPOSA', 'CL 8 PARCEL 166 A SECTOR 24 COM CAMPESINA COL', 'Pachacamac', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '04-nov-2015', 'NOVIEMBRE', NULL),
(152, '1438960.0', 'Conexiones', 'OBJ', 'ÑUFLO OSORIO YON CARLOS RAYMUNDO', 'AV PEDRO SILVA 319 MZ F LT 29 URB SAN JUAN', 'San Juan De Miraflores', 'JUAN CACHAY', 'CMLO', '04-nov-2015', 'NOVIEMBRE', NULL),
(153, '1451956.0', 'Conexiones', 'OBJ', 'MANCILLA LUME ROSALVINA', 'MZ E LT 1B AH VILLA HUASCATA', 'Chaclacayo', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '03-nov-2015', 'NOVIEMBRE', NULL),
(154, '1443247.0', 'Conexiones', 'OBJ', 'CHACON SAUZEDO SANTOS', 'MZ G LT 2 AH VILLA HUASCATA', 'Chaclacayo', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '03-nov-2015', 'NOVIEMBRE', NULL),
(155, '1439271.0', 'Conexiones', 'OBJ', 'RAMIREZ QUISPE JONATAN DAVID', 'MZ K LT 26 URB LA ALAMEDA DE ÑAÑA II', 'Lurigancho-Chosica', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '03-nov-2015', 'NOVIEMBRE', NULL),
(156, '1400021.0', 'Conexiones', 'OBJ', 'CORNEJO ALLCA BETSY ROSALIA', 'MZ R1 LT 38 PARCEL 4 URB SUB PARCELA 2A-1 PRO', 'Lurigancho-Chosica', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '03-nov-2015', 'NOVIEMBRE', NULL),
(157, '1448270.0', 'Conexiones', 'OBJ', 'DE LA CRUZ CANO ULISES RAUL', 'CRR CIENEGUILLLA MZ A LT 40 ASOC VIV LAS CUMB', 'Cieneguilla', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '02-nov-2015', 'NOVIEMBRE', NULL),
(158, '1437754.0', 'Masivos', 'ORION', 'LDS - VERIFICACION DE PREDIO OCT 15', 'MZ A LT 1 AH A', 'San Juan De Miraflores', 'JUAN CACHAY', 'Enrique Quintana Flores', '31-oct-2015', 'OCTUBRE', NULL),
(159, '1431861.0', 'Masivos', 'ALVIMAR', 'LDS-CORRECCIÓN DE LUMINARIAS DE LA SAB 21451', 'CJHAB LAS LADERAS DE PACHACAMAC SECTOR D', 'Pachacamac', 'JUAN CACHAY', 'Jackson Ferro Salazar', '18-sep-2015', 'SEPTIEMBRE', NULL),
(160, '1450729.0', 'Conexiones', 'OBJ', 'BONIFACIO GUTIERREZ SIXTO SERAFIN', 'MZ F LT 11 PS 1 URB EL ROSAL DE SALAMANCA DE', 'Ate-Vitarte', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '30-oct-2015', 'OCTUBRE', NULL),
(161, '1450672.0', 'Conexiones', 'OBJ', 'URPEQUE VELASQUEZ MARIA ROSA', 'MZ F LT 11 PS 2 URB EL ROSAL DE SALAMANCA DE', 'Ate-Vitarte', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '30-oct-2015', 'OCTUBRE', NULL),
(162, '1442112.0', 'Conexiones', 'OBJ', 'INGARUCA RECINES JERSON JOHN', 'AV SEPARADORA INDUSTRIAL MZ K LT 8 URB MIGUEL', 'Ate-Vitarte', 'JUAN CACHAY', 'Victor Vasquez Hidalgo', '30-oct-2015', 'OCTUBRE', NULL),
(163, '1422038.0', 'Conexiones', 'ORION', 'CHEQUEOS MEDICOS Y SERVICIOS ASISTENCIALES SA', 'AV AREQUIPA 1802', 'Lince', 'JUAN CACHAY', 'Jesus Contreras Estela', '27-oct-2015', 'OCTUBRE', NULL),
(164, '1447635.0', 'Conexiones', 'OBJ', 'INMARK PERU SA', 'AV PETIT THOUARS 3506', 'San Isidro', 'JUAN CACHAY', 'Piero Amador Salazar', '19-oct-2015', 'OCTUBRE', NULL),
(165, '1428319.0', 'Conexiones', 'LO SA VIAL', 'STS FITNESS S.A.', 'AV RAUL FERRERO 1250 OF 1', 'La Molina', 'JUAN CACHAY', 'Henry Leon Flores', '19-oct-2015', 'OCTUBRE', NULL),
(166, '1445877.0', 'Conexiones', 'CAM PERU', 'LUZ DEL SUR - YAYA FLORES LIZETH PAOLA', 'MZ B LT 1 DPTO 104 EDIF B URB MATELLINI', 'Chorrillos', 'JUAN CACHAY', 'WALQ', '10-oct-2015', 'OCTUBRE', NULL),
(167, '1385225.0', 'Proyectos MT', 'OBJ', 'PUERTA DE TIERRA S.A.', 'AV REDUCTO 1360 - 1370', 'Miraflores', 'JUAN GARRIAZO', 'Neil Ceras Tovar', '21-ago-2015', 'AGOSTO', NULL),
(168, '1426090.0', 'Proyectos MT', 'PLM', 'G&A INVERSIONES INMOBILIARIAS S.A.C', 'CL EL CEREZO MZ A LT 17 URB CALERA DE LA MERC', 'Surquillo', 'JUAN GARRIAZO', 'Denis Vasco Mallma', '06-nov-2015', 'NOVIEMBRE', NULL),
(169, '1417173.0', 'Proyectos MT', 'OBJ', 'FILM PACK S.A.C.', 'AV CIRCUNVALACION MZ J LT 8 FDO CENTRO POBLAD', 'Lurigancho-Chosica', 'JUAN GARRIAZO', 'Nabil Huamani Huayhua', '14-sep-2015', 'SEPTIEMBRE', NULL),
(170, '1431876.0', 'Proyectos BT', 'SERMESA', 'CAPAJAÑA HUACHALLA RENE', 'MZ A LT 14 AH AMISTAD 8 DE OCTUBRE', 'Villa Maria Del Triunfo', 'JUAN GARRIAZO', 'Tonino Cortez Arteaga', '19-sep-2015', 'SEPTIEMBRE', NULL),
(171, '1421403.0', 'Proyectos MT', 'SERMESA', 'MG INGENIEROS EIRL', 'AV LAS GAVIOTAS 158 URB LA CAMPIÑA', 'Chorrillos', 'JUAN GARRIAZO', 'Juan Soriano Pozo', '23-sep-2015', 'SEPTIEMBRE', NULL),
(172, '1401162.0', 'Proyectos BT', 'LO SA VIAL', 'PADILLA LEON VDA DE REQUENA PAULINA DELIA', 'MZ E LT 40 PS 1 ASOC PRO- VIV. FORTALEZA DE V', 'Ate-Vitarte', 'JUAN GARRIAZO', 'Henry Leon Flores', '21-oct-2015', 'OCTUBRE', NULL),
(173, '1412609.0', 'Proyectos Especiales', 'GCI', 'PEZET 561 S.A.C', 'AV JUAN PEZET 561 URB SAN GABRIEL', 'San Isidro', 'JUAN GARRIAZO', 'Franscisco Moreno Lopez', '29-sep-2015', 'SEPTIEMBRE', NULL),
(174, '1369774.0', 'Proyectos MT', 'SERMESA', 'EXPORTACIONES RODIMAC S.A.C', 'MZ F LT 02 PARCEL SEMI RUSTICA PAPA LEON XIII', 'Chilca', 'JUAN GARRIAZO', 'Jose Paredes Sotelo', '13-oct-2015', 'OCTUBRE', NULL),
(175, '1403580.0', 'Conexiones', 'JORIBA', 'QUISPE QUISPE FELIX', 'MZ I LT 8 GRUPO 16 PARCEL II PRQIND VILLA EL', 'Villa El Salvador', 'JUAN GARRIAZO', 'Freddy Hernandez Lopez', '29-sep-2015', 'SEPTIEMBRE', NULL),
(176, '1399631.0', 'Conexiones', 'OBJ', 'CHAVEZ BARAHONA ANA', 'MZ A LT 1 SECTOR 5 AH HEROES DE SAN JUAN', 'San Juan De Miraflores', 'JUAN GARRIAZO', 'CMLO', '29-sep-2015', 'SEPTIEMBRE', NULL),
(177, '1395802.0', 'Mantenimiento MT', 'PRODIEL', 'RENOVACION DE RED MT Y MANTENIMIENTO', 'HUERTOS DE VILLENA LURIN', 'Lurin', 'LUIS TORRES', 'Jorge Arteaga Melendez', '02-nov-2015', 'NOVIEMBRE', NULL),
(178, '1410039.0', 'Proyectos MT', 'PRODIEL', 'SANZ ZEBALLOS DE CHALCO YRMA', 'CRR CENTRAL KM.9.1 LT 115 LOT DEL FUNDO LA ES', 'Ate-Vitarte', 'LUIS TORRES', 'Felix Romero Baldeon', '14-oct-2015', 'OCTUBRE', NULL),
(179, '1386744.0', 'Proyectos MT', 'COTECON', 'MADEMOLD S.A.C', 'AV PACHACUTEC 7165', 'Villa Maria Del Triunfo', 'OSCAR VASQUEZ', 'Marco Espirilla Caceres', '03-ago-2015', 'AGOSTO', NULL),
(180, '1401183.0', 'Proyectos Especiales', 'LO SA VIAL', 'FILM PACK S.A.C.', 'AV CIRCUNVALACION MZ J LT 8 CP SANTA MARÍA DE', 'Lurigancho-Chosica', 'OSCAR VASQUEZ', 'Edwin Martinez Davila', '31-ago-2015', 'AGOSTO', NULL),
(181, '1416418.0', 'Proyectos MT', 'PLM', 'SOBRECARGA EN LA LLAVE 2 DE LA SED 00589S', 'JR RIO CHIRA URB LA VIÑA', 'San Luis', 'OSCAR VASQUEZ', 'Jesus Contreras Estela', '08-sep-2015', 'SEPTIEMBRE', NULL),
(182, '1401140.0', 'Proyectos MT', 'OBJ', 'ASOCIACION IGLESIA ADVENTISTA DEL SEPTIMO DIA', 'AV NICOLAS AYLLON 200', 'Chaclacayo', 'OSCAR VASQUEZ', 'Bladimiro Quispe Alfaro', '05-nov-2015', 'NOVIEMBRE', NULL),
(183, '1406365.0', 'Proyectos Especiales', 'LO SA VIAL', 'JUNTA DE PROPIETARIOS DE PLAYA TRES ISLAS', 'CRR PANAMERICANA SUR KM 70.5 SUBLT 2', 'San Antonio', 'OSCAR VASQUEZ', 'Edwin Martinez Davila', '15-sep-2015', 'SEPTIEMBRE', NULL),
(184, '1414548.0', 'Proyectos Especiales', 'COTECON', 'ENERSUR S.A .', 'CRR CAMINO A SANTO DOMINGO DE LOS OLLEROS SN', 'Chilca', 'OSCAR VASQUEZ', 'JPAR', '28-oct-2015', 'OCTUBRE', NULL),
(185, '1338048.0', 'Proyectos MT', 'OBJ', 'NEGOCIOS JORDI S.R.L', 'MZ E LT 21B LOT EL CLUB- PRIMERA ETAPA', 'Lurigancho-Chosica', 'OSCAR VASQUEZ', 'Bladimiro Quispe Alfaro', '22-sep-2015', 'SEPTIEMBRE', NULL),
(186, '1430655.0', 'Proyectos Especiales', 'COTECON', 'LUZ DEL SUR - FLORES ROJAS BENJAMIN', 'MZ C LT 22A AH VILLA LIMATAMBO', 'Villa Maria Del Triunfo', 'OSCAR VASQUEZ', 'JPAR', '28-sep-2015', 'SEPTIEMBRE', NULL),
(187, '1408123.0', 'Proyectos MT', 'ORION', 'INMOBILIARIA HABILITA S.A.C.', 'AV COMANDANTE ESPINAR 1136 - 1150 URB CHACARI', 'San Isidro', 'OSCAR VASQUEZ', 'Ricardo Porcel Mesones', '29-sep-2015', 'SEPTIEMBRE', NULL),
(188, '1424709.0', 'Proyectos BT', 'ORION', 'VALENZUELA PAJUELO DE MONTERO TEODOLINDA MONI', 'MZ B LT 1 PS 2 Y 3 URB ASOC DE POBLADORES EL', 'Ate-Vitarte', 'OSCAR VASQUEZ', 'Nabil Huamani Huayhua', '11-oct-2015', 'OCTUBRE', NULL),
(189, '1429262.0', 'Proyectos BT', 'JORIBA', 'VERAMENDI ALMONACID JUANA GENEDINA', 'JR MEXICO 314 - 316 PS 3 URB LOS LAURELES', 'Chorrillos', 'OSCAR VASQUEZ', 'Freddy Hernandez Lopez', '01-oct-2015', 'OCTUBRE', NULL),
(190, '1406693.0', 'Proyectos BT', 'SERMESA', 'ILLATOPA MARTEL MAURO', 'AV LOS VENCEDORES MZ G LT 1 ZONA 1 AH LAS PRA', 'Villa Maria Del Triunfo', 'ROY SALCEDO', 'Juan Soriano Pozo', '04-sep-2015', 'SEPTIEMBRE', NULL),
(191, '1404836.0', 'Proyectos BT', 'SERMESA', 'CORREA CASTRO MARIA LUZ', 'MZ R6 LT 16 INT A VILLA JARDIN 1RA ZONA', 'Villa Maria Del Triunfo', 'ROY SALCEDO', 'Jose Paredes Sotelo', '14-sep-2015', 'SEPTIEMBRE', NULL),
(192, '1415485.0', 'Proyectos BT', 'ALVIMAR', 'BARRIENTOS PACO ESTANISLAO', 'MZ A LT 14 ASOC DE VIVIENDA BUENOS AIRES LA R', 'San Juan De Miraflores', 'ROY SALCEDO', 'Jackson Ferro Salazar', '02-nov-2015', 'NOVIEMBRE', NULL),
(193, '1410845.0', 'Conexiones', 'ALVIMAR', 'ADOBE CONSTRUCCION S.A.C.', 'CL RIBERA NORTE MZ 2 LT 27 INT SSGG URB CASCO', 'San Bartolo', 'ROY SALCEDO', 'Jackson Ferro Salazar', '02-nov-2015', 'NOVIEMBRE', NULL),
(194, '1409539.0', 'Proyectos MT', 'COTECON', 'CUCHO QUINTANILLA JUAN SIMION', 'MZ E2 LT 3 ZONA C-2 URB SAN JUAN', 'San Juan De Miraflores', 'ROY SALCEDO', 'Marco Espirilla Caceres', '22-sep-2015', 'SEPTIEMBRE', NULL),
(195, '1424363.0', 'Proyectos BT', 'ALVIMAR', 'MURRUGARRA MEDINA FRANCISCO', 'MZ F LT 1 AH VALLE SHARON', 'San Juan De Miraflores', 'ROY SALCEDO', 'Jackson Ferro Salazar', '16-oct-2015', 'OCTUBRE', NULL),
(196, '1413611.0', 'Proyectos MT', 'PLM', 'REF. MT ATENCION TELEFÓNICA', 'CL DOS Y CL. B S/N', 'Lurin', 'ROY SALCEDO', 'TEPQ', '16-oct-2015', 'OCTUBRE', NULL),
(197, '1405437.0', 'Mantenimiento BT', 'JORIBA', 'P19-(FT-ADIC-15) CONTROL COMPENSACIONES SED 0', 'AV. CASTRO IGLESIAS CD.5 UNIDAD B', 'San Juan De Miraflores', 'WENDY TORRES', 'Tony Mejia Aguirre', '30-oct-2015', 'OCTUBRE', NULL),
(198, '1448161.0', 'Mantenimiento BT', 'SERMESA', '', 'Num. Mz.', 'Ate-Vitarte', 'WENDY TORRES', 'Jave Peña Cueva', '23-oct-2015', 'OCTUBRE', NULL),
(199, '1424984.0', 'Mantenimiento BT', 'ENERGIA Y ', '', 'Num. Mz.', 'Ate-Vitarte', 'WENDY TORRES', 'Jave Peña Cueva', '15-oct-2015', 'OCTUBRE', NULL),
(200, '1454347.0', 'Emergencia SP', 'GCI', 'CARDENAS GENARO', 'ODRIOZOLA 320 SAN ISIDRO', 'San Isidro', 'YASHIRA CONDORI ', 'Wilman Rodriguez Solis', '09-nov-2015', 'NOVIEMBRE', NULL),
(201, '1453970.0', 'Emergencia SP', 'GCI', 'PAGAZA ORTIZ CIRILO', 'MZ.A LT.7 A.H.VIRGEN DEL ROSARIO', 'Villa Maria Del Triunfo', 'YASHIRA CONDORI ', 'EDVP', '09-nov-2015', 'NOVIEMBRE', NULL),
(202, '1453960.0', 'Emergencia SP', 'GCI', '1366288 CAMPOS BERNALES SOLANGE', 'CAHUIDE 345 A SANTA CLARA', 'Ate-Vitarte', 'YASHIRA CONDORI ', 'Wilman Rodriguez Solis', '09-nov-2015', 'NOVIEMBRE', NULL),
(203, '1452773.0', 'Emergencia AP', 'GCI', 'POSTE: 121012190 CONEXION QUEMADA', 'POSTE: 121012190 CONEXION QUEMADA', 'La Molina', 'YASHIRA CONDORI ', 'Manuel Muñoz Ucañan', '09-nov-2015', 'NOVIEMBRE', NULL),
(204, '1453800.0', 'Emergencia SP', 'GCI', 'YSABEL AUQUI HUAMAN', 'MZ.A,LT.2 COOP.MUSA', 'La Molina', 'YASHIRA CONDORI ', 'Henry Gil Galvez', '05-nov-2015', 'NOVIEMBRE', NULL),
(205, '1453724.0', 'Emergencia SP', 'GCI', 'ANCA QUIHUA BERNARDO', 'MZ.P,LT.3 ASOC. PROP. BELLO HOIRIZONTE', 'Chorrillos', 'YASHIRA CONDORI ', 'Manuel Muñoz Ucañan', '05-nov-2015', 'NOVIEMBRE', NULL),
(206, '1453603.0', 'Emergencia SP', 'GCI', 'TOLEDO HURTADO SILVANA', 'MZ I LT 10 AH 12 DE JUNIO', 'Villa Maria Del Triunfo', 'YASHIRA CONDORI ', 'EDVP', '05-nov-2015', 'NOVIEMBRE', NULL),
(207, '1453364.0', 'Emergencia SP', 'GCI', 'QUIÑONES ROBLES YONER', 'MZ E LT 5 SECTOR L ASOC VIV JARDINES DE HORAC', 'Ate-Vitarte', 'YASHIRA CONDORI ', 'Manuel Muñoz Ucañan', '05-nov-2015', 'NOVIEMBRE', NULL),
(208, '1453351.0', 'Emergencia AP', 'GCI', 'TOTALIZADOR SCB. 6323', 'LAS NAZARENAS 708', 'Santiago De Surco', 'YASHIRA CONDORI ', 'Henry Gil Galvez', '05-nov-2015', 'NOVIEMBRE', NULL),
(209, '1453257.0', 'Emergencia SP', 'GCI', 'ALEJO PARIONA LEONCIO DAMIAN', 'MZ V LT 37 AH SAN COSME SECTOR SERGIO CALLER', 'La Victoria', 'YASHIRA CONDORI ', 'EDVP', '05-nov-2015', 'NOVIEMBRE', NULL),
(210, '1453240.0', 'Emergencia AP', 'GCI', 'CABRERA WALTER', 'CALLE 9 587 S ISIDRO CORPAC', 'San Isidro', 'YASHIRA CONDORI ', 'EDVP', '05-nov-2015', 'NOVIEMBRE', NULL),
(211, '1453220.0', 'Emergencia SP', 'GCI', 'GONZALES SOTO ADAN', 'MZ F LT 14-C URB HUERTOS DE SANTA GENOVEVA', 'Lurin', 'YASHIRA CONDORI ', 'DRAP', '05-nov-2015', 'NOVIEMBRE', NULL),
(212, '1452696.0', 'Emergencia SP', 'GCI', 'VALDIVIEZO MARIA AURORA GOMEZ DE', 'SAN CRISTOBAL 510 -524', 'La Victoria', 'YASHIRA CONDORI ', 'EDVP', '05-nov-2015', 'NOVIEMBRE', NULL),
(213, '1452690.0', 'Emergencia AP', 'GCI', 'INGA SILVA PEDRO', 'MZ.V,LT.2 A.H.M. OLOF PALME', 'Pucusana', 'YASHIRA CONDORI ', 'Manuel Muñoz Ucañan', '05-nov-2015', 'NOVIEMBRE', NULL),
(214, '1452675.0', 'Emergencia AP', 'GCI', '', '', 'San Juan De Miraflores', 'YASHIRA CONDORI ', 'EDVP', '05-nov-2015', 'NOVIEMBRE', NULL),
(215, '1451850.0', 'Emergencia SP', 'GCI', 'PALPA OSCANOA CAROLINA', 'MZ L1 LT 12 ASOC CIV VIV PARIACHI 3RA ETAPA', 'Ate-Vitarte', 'YASHIRA CONDORI ', 'EDVP', '05-nov-2015', 'NOVIEMBRE', NULL),
(216, '1452764.0', 'Emergencia SP', 'GCI', 'VITE PUICÓN JOSÉ MANUEL', 'EL TRIUNFO 693 MZ H6 LT 11 CERCADO', 'Villa Maria Del Triunfo', 'YASHIRA CONDORI ', 'EDVP', '04-nov-2015', 'NOVIEMBRE', NULL),
(217, '1452733.0', 'Emergencia SP', 'GCI', 'ACHA JOSE', 'LOS SAUCES 189 MZ E-3 LT 6 J.C.MARIATEGUI', 'Villa Maria Del Triunfo', 'YASHIRA CONDORI ', 'Martin Ciriaco Figueroa', '04-nov-2015', 'NOVIEMBRE', NULL),
(218, '1452708.0', 'Emergencia SP', 'GCI', 'ABURTO QUISPE FELIX', 'SANTA ROSA NRO 63', 'Santa Cruz De Flores', 'YASHIRA CONDORI ', 'Manuel Muñoz Ucañan', '04-nov-2015', 'NOVIEMBRE', NULL),
(219, '1452717.0', 'Emergencia SP', 'GCI', 'VILLALOBOS DIAZ SENEN', 'MNAZ Z LT 10 V.M.TFO SN GABRIEL ALTO', 'Villa Maria Del Triunfo', 'YASHIRA CONDORI ', 'RMAS', '31-oct-2015', 'OCTUBRE', NULL),
(220, '1438537.0', 'Emergencia MT', 'GCI', 'RODRIGUEZ FLORES OMAR EDUARDO', 'INT.MT(SE.00540 < CABINA.00202)', 'Santiago De Surco', 'YASHIRA CONDORI ', 'Wilman Rodriguez Solis', '15-sep-2015', 'SEPTIEMBRE', NULL),
(221, '1452138.0', 'Emergencia SP', 'GCI', 'VELVES ROJAS', 'CAJAMARCA 141 AH J.C.MARIATEGUI', 'Villa Maria Del Triunfo', 'YASHIRA CONDORI ', 'Luis Lucero Varillas', '31-oct-2015', 'OCTUBRE', NULL),
(222, '1436364.0', 'Emergencia MT', 'GCI', '', '', 'Barranco', 'YASHIRA CONDORI ', 'Wilman Rodriguez Solis', '17-sep-2015', 'SEPTIEMBRE', NULL),
(223, '1449972.0', 'Emergencia SP', 'GCI', 'MEZA QUISPE GERARDO', 'MZ.I-9 LT.5 AHM:P.ALTA SCT.V.S.LUIS SJM', 'San Juan De Miraflores', 'YASHIRA CONDORI ', 'Luis Lucero Varillas', '30-oct-2015', 'OCTUBRE', NULL),
(224, '1449441.0', 'Emergencia SP', 'GCI', 'CADILLO AQUINO ELEODORO MAGNOLIO', 'LAS TORRES 403 (D-9) ATE LOS SAUCES', 'Ate-Vitarte', 'YASHIRA CONDORI ', 'EDVP', '29-oct-2015', 'OCTUBRE', NULL),
(225, '1449425.0', 'Emergencia SP', 'GCI', 'MERLUZZI ARIAS HUMBERTO', 'LAS AMERICAS 568 LA VICTO', 'La Victoria', 'YASHIRA CONDORI ', 'EDVP', '29-oct-2015', 'OCTUBRE', NULL),
(226, '1446360.0', 'Emergencia SP', 'GCI', 'MONTES IGNACIO HONORATO', 'PSJE.TAYACAJA 172 LT.106 7 DE OCTUBRE', 'El Agustino', 'YASHIRA CONDORI ', 'EDVP', '28-oct-2015', 'OCTUBRE', NULL),
(227, '1450568.0', 'Emergencia SP', 'GCI', 'ASCENZO APARICIO JAVIER', 'CALLE 10A 190 MIRAFLORES-MONTAGNE', 'Miraflores', 'YASHIRA CONDORI ', 'EDVP', '26-oct-2015', 'OCTUBRE', NULL),
(228, '1450041.0', 'Emergencia SP', 'GCI', 'ORE SPIGNO JOSE SILVANO Y ESPOSA', 'MZ C SUBLT 4-A URB LAS PRADERAS DE LURIN', 'Lurin', 'YASHIRA CONDORI ', 'Martin Ciriaco Figueroa', '26-oct-2015', 'OCTUBRE', NULL),
(229, '1449696.0', 'Emergencia SP', 'GCI', 'ROSS CARMEN', 'C. DE LA FUENTE 280 LA VICTORIA BALCONC', 'La Victoria', 'YASHIRA CONDORI ', 'Santos Rosales Valiente', '26-oct-2015', 'OCTUBRE', NULL),
(230, '1449512.0', 'Emergencia SP', 'GCI', 'HUARINGA ROJAS JUANA JESUS', 'BOLIVAR MZ C1 LT 6 ZONA G CP TAMBO VIEJO', 'Cieneguilla', 'YASHIRA CONDORI ', 'Manuel Muñoz Ucañan', '26-oct-2015', 'OCTUBRE', NULL),
(231, '1448478.0', 'Emergencia AP', 'GCI', 'VELASQUEZ CABELLO PASCUAL', 'MZ A LT 1 EL AGUSTINO PJ.SR.D.MILAGROS', 'El Agustino', 'YASHIRA CONDORI ', 'Henry Gil Galvez', '26-oct-2015', 'OCTUBRE', NULL),
(232, '1449343.0', 'Emergencia SP', 'GCI', 'TEJADA ROMANI MARIA MARGARITA', 'AV TOMAS MARSANO 2170 - 2174 DPTO 202 URB LOS', 'Miraflores', 'YASHIRA CONDORI ', 'Santos Rosales Valiente', '22-oct-2015', 'OCTUBRE', NULL),
(233, '1449148.0', 'Emergencia SP', 'GCI', 'BARCO PAIVA MARIA ISABEL', 'A WHILAR 190 BARRANCO', 'Barranco', 'YASHIRA CONDORI ', 'Manuel Muñoz Ucañan', '22-oct-2015', 'OCTUBRE', NULL),
(234, '1448543.0', 'Emergencia SP', 'GCI', 'VERGARA BARRENECHEA FELIPE RENE', 'S LORENZO 439 SURQLLO', 'Surquillo', 'YASHIRA CONDORI ', 'Santos Rosales Valiente', '22-oct-2015', 'OCTUBRE', NULL),
(235, '1445427.0', 'Emergencia SP', 'GCI', 'PRODUCTOS TISSUE DEL PERU S.A.', 'NICOLAS AYLLON 2931 INTERIOR ALMACEN URB PUEN', 'El Agustino', 'YASHIRA CONDORI ', 'Wilman Rodriguez Solis', '15-oct-2015', 'OCTUBRE', NULL),
(236, '1361792.0', 'Proyectos Especiales', 'COTECON', 'LUZ DEL SUR - AFECTACIONES MT/BT POZO PV19BIS', 'CRR CENTRAL ESQ. AV. SANTA ROSA', 'Ate-Vitarte', 'YON TORRES', 'Juan Carlos Anaya', '14-ago-2015', 'AGOSTO', NULL),
(237, '1415358.0', 'Proyectos BT', 'LO SA VIAL', 'LUZ DEL SUR // RECLAMO DE CAIDA DE TENSION', 'AV VICTOR MALASQUEZ MZ B-14 LT 1-A SECTOR EL', 'Pachacamac', 'YON TORRES', 'Henry Leon Flores', '08-sep-2015', 'SEPTIEMBRE', NULL),
(238, '1407289.0', 'Transmision', 'GRUPO ACUA', 'LDS - GALERÍA DE CABLES SET SAN JUAN', 'AV PEDRO MIOTTA S/N', 'San Juan De Miraflores', 'YON TORRES', 'Alberto Shuan Lucas', '15-sep-2015', 'SEPTIEMBRE', NULL),
(239, '1428766.0', 'Mantenimiento MT', 'OBJ', 'REFORMA POR DMS - MANTENIMIENTO PREVENTIVO Y', 'MZ C LT 17 ASOC. TRABAJADORES DE CENTROMIN', 'Lurigancho-Chosica', 'YON TORRES', 'Mario Bazan Martel', '28-sep-2015', 'SEPTIEMBRE', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE IF NOT EXISTS `modulo` (
`idmodulo` int(11) NOT NULL,
  `idmodulopadre` int(11) DEFAULT NULL,
  `objeto` varchar(200) DEFAULT NULL,
  `recurso` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `dependencia` bit(1) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `idmodulopadre`, `objeto`, `recurso`, `descripcion`, `dependencia`, `estado`) VALUES
(1, 0, 'Dashboard', 'Dashboard', 'Panel de Control', b'0', b'1'),
(2, 0, 'Mapa', 'Mapa', 'Mapa', b'0', b'1'),
(3, 0, 'Reporte', 'Reporte', 'Reporte', b'0', b'1'),
(4, 0, 'Usuarios', 'Usuarios', 'Usuarios', b'0', b'1'),
(5, 0, 'Modulos', 'Modulos', 'Modulos', b'0', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
`idperfil` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`idperfil`, `nombre`, `estado`) VALUES
(1, 'administrador', b'1'),
(2, 'tecnico', b'1'),
(3, 'contratista', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfilmodulo`
--

CREATE TABLE IF NOT EXISTS `perfilmodulo` (
  `idmodulo` int(11) NOT NULL DEFAULT '0',
  `idperfil` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfilmodulo`
--

INSERT INTO `perfilmodulo` (`idmodulo`, `idperfil`) VALUES
(1, 2),
(1, 3),
(2, 2),
(2, 3),
(3, 3),
(4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfilusuario`
--

CREATE TABLE IF NOT EXISTS `perfilusuario` (
  `idperfil` int(11) NOT NULL DEFAULT '0',
  `idusuario` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfilusuario`
--

INSERT INTO `perfilusuario` (`idperfil`, `idusuario`) VALUES
(1, 1),
(1, 2),
(1, 4),
(1, 7),
(1, 8),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 8),
(3, 1),
(3, 4),
(3, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
`idpersona` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apepat` varchar(100) DEFAULT NULL,
  `apemat` varchar(100) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `nrodoc` varchar(11) DEFAULT NULL,
  `idtipodoc` int(11) DEFAULT NULL,
  `sexo` int(1) DEFAULT NULL,
  `fechanac` date DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `nombre`, `apepat`, `apemat`, `edad`, `nrodoc`, `idtipodoc`, `sexo`, `fechanac`) VALUES
(1, 'Johan', 'Cañari', 'Huamani', 21, '48227010', 1, 4, '1993-11-15'),
(2, 'lelouch', 'lampelouch', 'bi britania', 25, '12345678', 1, 4, NULL),
(3, 'Juan David', 'Cachay', 'Garcia', 26, '87654321', 1, 4, NULL),
(4, 'Naruto', 'Uzumaki', 'Uzumaki', 16, '21346578', 1, 4, NULL),
(7, 'light', 'yagami', 'yagami', 16, '34554321', 1, 4, NULL),
(8, 'ryuzaki', '', '', 24, '98766789', 1, 4, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocodigo`
--

CREATE TABLE IF NOT EXISTS `tipocodigo` (
`idtipocodigo` int(11) NOT NULL,
  `tipocodigo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tipocodigo`
--

INSERT INTO `tipocodigo` (`idtipocodigo`, `tipocodigo`) VALUES
(1, 'tipodocumento'),
(2, 'tipoSexo'),
(3, 'tipoFacultad'),
(4, 'tipoContrato');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`idusuario` int(11) NOT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `passw` varchar(20) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `idpersona` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `usuario`, `passw`, `estado`, `idpersona`) VALUES
(1, 'johanC', '123456', b'1', 1),
(2, 'zero', '123456', b'1', 2),
(3, 'jcachay', '123456', b'1', 3),
(4, 'naruto', '123456', b'1', 4),
(7, 'kira', '123456', b'1', 7),
(8, 'ryuzaki', '123', b'1', 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `codigo`
--
ALTER TABLE `codigo`
 ADD PRIMARY KEY (`idcodigo`);

--
-- Indices de la tabla `distrito`
--
ALTER TABLE `distrito`
 ADD PRIMARY KEY (`iddistrito`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
 ADD PRIMARY KEY (`idlugar`);

--
-- Indices de la tabla `map`
--
ALTER TABLE `map`
 ADD PRIMARY KEY (`idMap`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
 ADD PRIMARY KEY (`idmodulo`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
 ADD PRIMARY KEY (`idperfil`);

--
-- Indices de la tabla `perfilmodulo`
--
ALTER TABLE `perfilmodulo`
 ADD PRIMARY KEY (`idmodulo`,`idperfil`);

--
-- Indices de la tabla `perfilusuario`
--
ALTER TABLE `perfilusuario`
 ADD PRIMARY KEY (`idperfil`,`idusuario`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
 ADD PRIMARY KEY (`idpersona`);

--
-- Indices de la tabla `tipocodigo`
--
ALTER TABLE `tipocodigo`
 ADD PRIMARY KEY (`idtipocodigo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `codigo`
--
ALTER TABLE `codigo`
MODIFY `idcodigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `distrito`
--
ALTER TABLE `distrito`
MODIFY `iddistrito` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `lugar`
--
ALTER TABLE `lugar`
MODIFY `idlugar` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `map`
--
ALTER TABLE `map`
MODIFY `idMap` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
MODIFY `idmodulo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
MODIFY `idperfil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `tipocodigo`
--
ALTER TABLE `tipocodigo`
MODIFY `idtipocodigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
