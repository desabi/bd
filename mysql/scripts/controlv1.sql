-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2017 a las 15:00:23
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `controlv1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE IF NOT EXISTS `alumno` (
  `idalumno` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idalumno`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`idalumno`, `nombre`) VALUES
(1, 'Abi'),
(2, 'Richar'),
(3, 'Wilder');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_has_materia`
--

CREATE TABLE IF NOT EXISTS `alumno_has_materia` (
  `alumno_idalumno` int(11) NOT NULL,
  `materia_idmateria` varchar(50) NOT NULL,
  PRIMARY KEY (`alumno_idalumno`,`materia_idmateria`),
  KEY `fk_alumno_has_materia_materia1_idx` (`materia_idmateria`),
  KEY `fk_alumno_has_materia_alumno_idx` (`alumno_idalumno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumno_has_materia`
--

INSERT INTO `alumno_has_materia` (`alumno_idalumno`, `materia_idmateria`) VALUES
(1, 'ISC 101'),
(1, 'ISC 102'),
(1, 'ISC 103'),
(1, 'ISC 104'),
(1, 'ISC 105'),
(1, 'ISC 106'),
(2, 'ISC 101'),
(2, 'ISC 102'),
(2, 'ISC 103'),
(2, 'ISC 104'),
(2, 'ISC 105'),
(2, 'ISC 106'),
(3, 'ISC 101'),
(3, 'ISC 102'),
(3, 'ISC 103'),
(3, 'ISC 104'),
(3, 'ISC 105'),
(3, 'ISC 106');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
  `idmateria` varchar(50) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idmateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`idmateria`, `nombre`) VALUES
('ISC 101', 'Investigacion'),
('ISC 102', 'Programacion'),
('ISC 103', 'Administracion'),
('ISC 104', 'Matematicas'),
('ISC 105', 'Calculo'),
('ISC 106', 'Etica'),
('ISC 201', 'Comunicacion'),
('ISC 202', 'Contabilidad'),
('ISC 203', 'POO'),
('ISC 204', 'Quimica'),
('ISC 205', 'Cal Int'),
('ISC 206', 'Algebra');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno_has_materia`
--
ALTER TABLE `alumno_has_materia`
  ADD CONSTRAINT `fk_alumno_has_materia_alumno` FOREIGN KEY (`alumno_idalumno`) REFERENCES `alumno` (`idalumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alumno_has_materia_materia1` FOREIGN KEY (`materia_idmateria`) REFERENCES `materia` (`idmateria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
