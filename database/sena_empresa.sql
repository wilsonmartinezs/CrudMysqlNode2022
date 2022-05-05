-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-05-2022 a las 02:49:16
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sena_empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `pk_id_compra` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `fk_Usuario` bigint(12) DEFAULT NULL,
  `fk_producto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`pk_id_compra`, `fecha`, `Cantidad`, `fk_Usuario`, `fk_producto`) VALUES
(1, '2019-01-01', 1, 1007388140, 1),
(2, '2020-04-03', 2, 1007388140, 2),
(3, '2019-01-01', 2, 100426973, 3),
(4, '2019-02-05', 1, 100426973, 4),
(5, '2019-02-13', 1, 119355841, 5),
(6, '2019-04-24', 2, 1002337863, 6),
(7, '2019-06-12', 3, 1002337863, 7),
(8, '2019-02-19', 2, 1004248797, 8),
(9, '2020-03-19', 1, 1004248797, 1),
(10, '2019-03-20', 6, 1004269672, 1),
(11, '2019-01-31', 2, 1004402263, 1),
(12, '2020-03-19', 1, 1004402263, 2),
(13, '2019-06-19', 1, 1004402263, 2),
(14, '2019-04-09', 2, 1004402263, 2),
(15, '2019-07-10', 6, 1004418839, 3),
(16, '2019-03-12', 3, 1004418839, 3),
(17, '2020-08-18', 2, 1004492751, 3),
(18, '2019-10-16', 4, 1004492751, 4),
(19, '2019-12-31', 2, 1004492751, 4),
(20, '2019-09-18', 1, 1004492751, 4),
(21, '2019-05-22', 2, 1004492861, 5),
(22, '2019-06-17', 5, 1004492861, 5),
(23, '2019-08-21', 4, 1006410046, 5),
(24, '2019-03-19', 2, 1006410046, 6),
(25, '2019-04-24', 1, 1006410046, 6),
(26, '2019-11-12', 1, 1006410046, 6),
(27, '2019-09-02', 5, 1007269672, 7),
(28, '2020-01-23', 2, 1007269672, 7),
(29, '2019-11-20', 1, 1007269672, 7),
(30, '2021-05-29', 2, 1007269672, 8),
(31, '2019-10-14', 2, 1007269672, 8),
(32, '2021-11-01', 3, 1007308252, 8),
(33, '2019-04-16', 5, 1007308252, 1),
(34, '2019-02-20', 2, 1007308344, 1),
(35, '2019-05-01', 4, 1007308344, 1),
(36, '2019-07-18', 2, 1007308354, 2),
(37, '2019-08-15', 3, 1007308354, 2),
(38, '2019-05-01', 5, 1007308354, 2),
(39, '2019-04-30', 6, 1007308354, 3),
(40, '2019-09-12', 3, 1007388140, 3),
(41, '2019-03-01', 2, 1007402493, 3),
(42, '2019-10-01', 1, 1007402493, 4),
(43, '2019-10-01', 4, 1007411660, 4),
(44, '2019-04-01', 2, 1007411660, 4),
(45, '2019-01-30', 1, 1007411891, 5),
(46, '2019-02-22', 2, 1007411891, 5),
(47, '2019-01-29', 1, 1007411891, 5),
(48, '2019-09-24', 3, 1007503181, 6),
(49, '2019-10-21', 2, 1007503181, 6),
(50, '2019-01-01', 1, 1007521042, 6),
(51, '2019-05-21', 5, 1007521042, 7),
(52, '2021-05-01', 4, 1007808266, 7),
(53, '2019-12-01', 6, 1007808266, 7),
(54, '2021-04-16', 3, 1007897832, 8),
(55, '2019-05-14', 2, 1007897832, 8),
(56, '2019-05-01', 3, 1081733897, 8),
(57, '2020-04-23', 1, 1081733897, 1),
(58, '2019-05-01', 4, 1081733897, 1),
(59, '2020-05-21', 3, 1081733897, 1),
(60, '2021-02-27', 2, 1081733897, 2),
(61, '2019-11-20', 4, 1083929667, 2),
(62, '2019-09-01', 5, 1083929667, 2),
(63, '2020-10-31', 1, 1083929667, 3),
(64, '2021-01-22', 3, 1006410046, 3),
(65, '2021-05-22', 5, 96361787, 2),
(66, '2021-04-15', 2, 96361787, 7),
(67, '2022-04-20', 10, 96361787, 1),
(68, '2022-04-20', 10, 96361787, 1),
(70, '2022-04-24', 1, 96361787, 1),
(71, '2022-04-24', 1, 96361787, 1),
(72, '2022-04-25', 0, 96361787, 1),
(73, '2022-04-25', 10, 96361787, 1),
(74, '2022-04-25', 9, 96361787, 1),
(75, '2022-04-25', 9, 96361787, 1),
(76, '2022-04-25', 5, 96361787, 1),
(77, '2022-04-25', 1, 96361787, 1),
(78, '2022-04-25', 1, 96361787, 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `compras_clientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `compras_clientes` (
`Nombre` varchar(50)
,`nombre_pdto` varchar(50)
,`cantidad` decimal(32,0)
,`total` decimal(42,2)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Pk_id_pdto` int(11) NOT NULL,
  `Nombre_Pdto` varchar(50) DEFAULT NULL,
  `Descripcion_Pdto` varchar(50) DEFAULT NULL,
  `Valor_Pdto` decimal(10,2) DEFAULT NULL,
  `Stock` int(11) DEFAULT NULL,
  `imagen` varchar(100) NOT NULL,
  `fk_UP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Pk_id_pdto`, `Nombre_Pdto`, `Descripcion_Pdto`, `Valor_Pdto`, `Stock`, `imagen`, `fk_UP`) VALUES
(1, 'yogurth', 'yogurth con frutas ', '500.00', 93, 'yogur.jpg', 1),
(2, 'Chorizo', 'Chorizo de cerdo', '1000.00', 500, 'chorizos.jpg', 1),
(3, 'Avena', 'Avena en vaso', '2000.00', 700, 'avena.jpg', 1),
(4, 'Cilantro', 'Hortalizas y verduras x Manojo', '500.00', 300, 'cilantro.jpg', 1),
(5, 'Cebolla', 'Cebolla Larga X Libra', '800.00', 100, 'cebolla.jpg', 1),
(6, 'Tomate', 'Tomate Cerry X Libra', '1500.00', 200, 'tomate.jpg', 1),
(7, 'Almuerzos', 'Almuerzos especiales', '5000.00', 500, '', 3),
(8, 'Cachama', 'Cachama Roja X Libra', '4500.00', 300, '', 4),
(11, 'Chorizo', 'Chorizo de pollo', NULL, 200, '', 1),
(12, 'Chorizo', 'Chorizo de pollo', NULL, 50, '', 1),
(13, 'Chorizo', 'Chorizo de pollo', NULL, 50, '', 1),
(17, 'papa', 'Papa criolla', '500.00', 300, 'papa.png', 1),
(19, 'Platano', 'Platano mediano', NULL, 300, 'platano.jpg', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades_productivas`
--

CREATE TABLE `unidades_productivas` (
  `pk_Codigo_UP` int(11) NOT NULL,
  `Nombre_UP` varchar(50) DEFAULT NULL,
  `Descripcion_UP` varchar(80) DEFAULT NULL,
  `Sede` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `unidades_productivas`
--

INSERT INTO `unidades_productivas` (`pk_Codigo_UP`, `Nombre_UP`, `Descripcion_UP`, `Sede`) VALUES
(1, 'Agricola', 'Produccion de productos organicos', 'Yamboro'),
(2, 'Agroindustira', 'Proceso de productos lácteos y cárnicos', 'Yamboro'),
(3, 'Gastronomía', 'Venta de almuerzos especiales', 'Yamboro'),
(4, 'Pecuaria', NULL, 'Yamboro'),
(5, 'Escuela Nacional de la Calidad del Café', NULL, 'Yamboro'),
(6, 'Ambiental – Recursos Naturales', NULL, 'Yamboro'),
(7, 'Empresa de Servicios Públicos', NULL, 'Yamboro'),
(8, 'Moda – Comercio y Servicios', NULL, 'Centro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `pk_identificacion` bigint(12) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Telefono` varchar(12) DEFAULT NULL,
  `Tipo_Usuario` enum('Instructor','Aprendiz','Administrativo','Invitado') DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`pk_identificacion`, `Nombre`, `Direccion`, `Telefono`, `Tipo_Usuario`, `login`, `password`) VALUES
(2323, '123132', 'undefined', 'undefined', NULL, NULL, NULL),
(96361787, 'WILSON', '', '', 'Administrativo', '123', '123'),
(100426973, 'ELIAN CANDIL', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(119355841, 'LINA TATIANA SAMBONI', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1002337863, 'JERSON SMITH', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1004248797, 'LEIDY DAYANA INCHIMA', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1004269672, 'NATALIA ROJAS ROJAS', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1004402263, 'MANUEL CAMILO OME', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1004418839, 'OSWALDO SAMBONI BOLAÑOS', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1004492751, 'DANA ARTUNDUAGA', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1004492861, 'LAURA VANESSA', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1006410046, 'FERNANDO SARREAS', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1007269672, 'ARMANDO CUELLAR', 'NULL', 'NULL', 'Aprendiz', '1234', '1234'),
(1007308252, 'JHONARY LOSADA', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1007308344, 'JERSON STERLING', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1007308354, 'DIEGO ALEGANDRO LOPEZ', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1007388140, 'KAREN DANIELA ROJAS', '', '', 'Aprendiz', NULL, NULL),
(1007402493, 'OLIVER MORA', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1007411660, 'LUIS FELIPE ALVAREZ RIVERA', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1007411891, 'VICTOR MOSES', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1007503181, 'FELIPE BARRERA FIGUEROA', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1007521042, 'CRISTIAN ANDRES YELA', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1007808266, 'SEBASTIAN ORTIZ', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1007897832, 'LEIDY JOHANNA DE LA CRUZ', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1081733897, 'NICOLAS CLAROS', 'NULL', 'NULL', 'Aprendiz', NULL, NULL),
(1083929667, 'LUIS ATAHUALPA', 'NULL', 'NULL', 'Aprendiz', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura para la vista `compras_clientes`
--
DROP TABLE IF EXISTS `compras_clientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `compras_clientes`  AS SELECT `usuarios`.`Nombre` AS `Nombre`, `productos`.`Nombre_Pdto` AS `nombre_pdto`, sum(`compras`.`Cantidad`) AS `cantidad`, sum(`compras`.`Cantidad` * `productos`.`Valor_Pdto`) AS `total` FROM ((`usuarios` join `compras` on(`compras`.`fk_Usuario` = `usuarios`.`pk_identificacion`)) join `productos` on(`productos`.`Pk_id_pdto` = `compras`.`fk_producto`)) GROUP BY `usuarios`.`Nombre`, `productos`.`Nombre_Pdto` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`pk_id_compra`),
  ADD KEY `compra_producto` (`fk_producto`),
  ADD KEY `usuario_compra` (`fk_Usuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Pk_id_pdto`),
  ADD KEY `Up_producto` (`fk_UP`);

--
-- Indices de la tabla `unidades_productivas`
--
ALTER TABLE `unidades_productivas`
  ADD PRIMARY KEY (`pk_Codigo_UP`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`pk_identificacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `pk_id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `Pk_id_pdto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compra_producto` FOREIGN KEY (`fk_producto`) REFERENCES `productos` (`Pk_id_pdto`),
  ADD CONSTRAINT `usuario_compra` FOREIGN KEY (`fk_Usuario`) REFERENCES `usuarios` (`pk_identificacion`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `Up_producto` FOREIGN KEY (`fk_UP`) REFERENCES `unidades_productivas` (`pk_Codigo_UP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
