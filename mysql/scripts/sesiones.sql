-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-05-2016 a las 18:08:40
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sesiones`
--
CREATE DATABASE IF NOT EXISTS `sesiones` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sesiones`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada`
--

CREATE TABLE IF NOT EXISTS `entrada` (
  `identrada` int(11) NOT NULL AUTO_INCREMENT,
  `hora` time NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  PRIMARY KEY (`identrada`,`usuario_idusuario`),
  KEY `fk_entrada_usuario_idx` (`usuario_idusuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `entrada`
--

INSERT INTO `entrada` (`identrada`, `hora`, `fecha`, `usuario_idusuario`) VALUES
(1, '09:58:55', '15-3-2016', 1),
(2, '10:16:09', '15-3-2016', 2),
(3, '13:38:27', '30-3-2016', 1),
(4, '13:40:06', '30-3-2016', 2),
(5, '13:44:53', '30-3-2016', 1),
(6, '13:46:02', '30-3-2016', 1),
(7, '13:46:56', '30-3-2016', 3),
(8, '13:52:20', '30-3-2016', 2),
(9, '14:01:49', '30-3-2016', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida`
--

CREATE TABLE IF NOT EXISTS `salida` (
  `idsalida` int(11) NOT NULL AUTO_INCREMENT,
  `hora` time NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  PRIMARY KEY (`idsalida`,`usuario_idusuario`),
  KEY `fk_salida_usuario1_idx` (`usuario_idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `contrasena`) VALUES
(1, 'abi', 'raiz'),
(2, 'jorge', 'ab12'),
(3, 'invitado', 'abc');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD CONSTRAINT `fk_entrada_usuario` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `salida`
--
ALTER TABLE `salida`
  ADD CONSTRAINT `fk_salida_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
