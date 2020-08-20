-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-01-2016 a las 15:48:21
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimento`
--

CREATE TABLE IF NOT EXISTS `alimento` (
  `idalimento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `precio` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `tiempo_preparacion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idalimento`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `alimento`
--

INSERT INTO `alimento` (`idalimento`, `nombre`, `precio`, `tiempo_preparacion`) VALUES
(1, 'Pescado', '45,50', '15 min'),
(2, 'Chuleta', '50.75', '15 min'),
(3, 'Pechuga', '35.00', '10 min'),
(4, 'Cecina', '30.00', '10 min'),
(5, 'Mole', '60.50', '25 min'),
(6, 'Pollo', '25.00', '20 min'),
(7, 'Ensalada', '20.00', '5 min'),
(8, 'Camarones', '55.50', '20 min');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bebida`
--

CREATE TABLE IF NOT EXISTS `bebida` (
  `idbebida` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`idbebida`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `bebida`
--

INSERT INTO `bebida` (`idbebida`, `nombre`, `precio`) VALUES
(1, 'Agua', 10),
(2, 'Refresco', 15),
(3, 'Cafe', 8.75),
(4, 'Frappe', 25),
(5, 'Cerveza', 30.5),
(6, 'Agua fresca', 20),
(7, 'Jugo', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cocinero`
--

CREATE TABLE IF NOT EXISTS `cocinero` (
  `idcocinero` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `hora_entrada` time NOT NULL,
  `hora_salida` time NOT NULL,
  PRIMARY KEY (`idcocinero`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `cocinero`
--

INSERT INTO `cocinero` (`idcocinero`, `nombre`, `telefono`, `hora_entrada`, `hora_salida`) VALUES
(1, 'Raul', 7571113357, '08:00:00', '14:00:00'),
(2, 'Mayra', 7571029085, '14:00:00', '20:00:00'),
(3, 'Azucena', 7571003090, '08:00:00', '14:00:00'),
(4, 'Luis', 7571123593, '14:00:00', '20:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesero`
--

CREATE TABLE IF NOT EXISTS `mesero` (
  `idmesero` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `hora_entrada` time NOT NULL,
  `hora_salida` time NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_egreso` date DEFAULT NULL,
  PRIMARY KEY (`idmesero`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `mesero`
--

INSERT INTO `mesero` (`idmesero`, `nombre`, `hora_entrada`, `hora_salida`, `fecha_ingreso`, `fecha_egreso`) VALUES
(1, 'Adrian', '14:00:00', '20:00:00', '2014-02-25', '0000-00-00'),
(2, 'Ismale', '08:00:00', '14:00:00', '2015-10-19', '0000-00-00'),
(3, 'Diana', '08:00:00', '14:00:00', '2014-09-15', '0000-00-00'),
(4, 'Daniel', '14:00:00', '20:00:00', '2013-05-28', '0000-00-00'),
(5, 'Eva', '14:00:00', '20:00:00', '2015-01-13', '0000-00-00'),
(6, 'Iris', '08:00:00', '14:00:00', '2013-06-22', '0000-00-00'),
(7, 'Ismael', '14:00:00', '20:00:00', '2014-05-28', '0000-00-00'),
(8, 'Diana', '08:00:00', '14:00:00', '2015-09-17', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postre`
--

CREATE TABLE IF NOT EXISTS `postre` (
  `idpostre` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`idpostre`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `postre`
--

INSERT INTO `postre` (`idpostre`, `nombre`, `precio`) VALUES
(1, 'Gelatina', 8.75),
(2, 'Yogurth', 10.5),
(3, 'Chocolate', 5),
(4, 'Flan', 12.5),
(5, 'Pastel', 20),
(6, 'Helado', 10),
(7, 'Budin', 12.5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
