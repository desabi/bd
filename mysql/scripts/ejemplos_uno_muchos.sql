-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2017 a las 15:04:25
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ejemplos_uno_muchos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` bigint(10) NOT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombre`, `telefono`) VALUES
(1, 'Abi', 7571251798),
(2, 'Bruno', 7571002850),
(3, 'Carla', 7571063990);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
  `iddepartamento` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`iddepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`iddepartamento`, `nombre`) VALUES
(1, 'Administracion'),
(2, 'Recursos Humanos'),
(3, 'Produccion'),
(4, 'Ventas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE IF NOT EXISTS `empleado` (
  `idempleado` int(11) NOT NULL,
  `departamento_iddepartamento` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `edad` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idempleado`),
  KEY `KF_Empleado_Departamento_idx` (`departamento_iddepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idempleado`, `departamento_iddepartamento`, `nombre`, `edad`) VALUES
(1, 1, 'Ana', '30'),
(2, 1, 'Berna', '35'),
(3, 2, 'Carlos', '42'),
(4, 2, 'Diana', '45'),
(5, 2, 'Eduardo', '53'),
(6, 3, 'Felipa', '55'),
(7, 3, 'Gerardo', '35'),
(8, 3, 'Hugo', '38'),
(9, 3, 'Irene', '29'),
(10, 4, 'Julieta', '35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `idempresa` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idempresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`idempresa`, `nombre`) VALUES
(1, 'Google'),
(2, 'Microsoft');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `idpedido` int(11) NOT NULL,
  `cliente_idcliente` int(11) NOT NULL,
  `producto` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(5,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `FK_Pedido_Cliente_idx` (`cliente_idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `cliente_idcliente`, `producto`, `precio`, `cantidad`) VALUES
(1, 1, 'Memoria USB', '150.00', 3),
(2, 1, 'DVD', '10.00', 5),
(3, 2, 'Lapiz', '7.00', 12),
(4, 2, 'Borrador', '8.00', 4),
(5, 2, 'Marcador', '35.00', 2),
(6, 2, 'Lapicero', '9.00', 1),
(7, 3, 'Agua', '6.00', 2),
(8, 3, 'Refresco', '12.00', 1),
(9, 3, 'Chicle', '3.00', 5),
(10, 3, 'Jugo', '9.00', 6),
(11, 3, 'Galleta', '13.00', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE IF NOT EXISTS `servicio` (
  `idservicio` int(11) NOT NULL,
  `empresa_idempresa` int(11) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idservicio`),
  KEY `FK_Servicio_Empresa_idx` (`empresa_idempresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`idservicio`, `empresa_idempresa`, `descripcion`) VALUES
(1, 1, 'Android'),
(2, 1, 'Mapas'),
(3, 1, 'Youtube'),
(4, 2, 'Windows'),
(5, 2, 'Office');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `FK_Empleado_Departamento` FOREIGN KEY (`departamento_iddepartamento`) REFERENCES `departamento` (`iddepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `FK_Pedido_Cliente` FOREIGN KEY (`cliente_idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `FK_Servicio_Empresa` FOREIGN KEY (`empresa_idempresa`) REFERENCES `empresa` (`idempresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
