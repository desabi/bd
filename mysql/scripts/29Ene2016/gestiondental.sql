-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-01-2016 a las 15:48:40
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `gestiondental`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecedentes`
--

CREATE TABLE IF NOT EXISTS `antecedentes` (
  `idpaciente` int(11) NOT NULL,
  `idpatologia` int(11) NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  KEY `idpaciente` (`idpaciente`,`idpatologia`),
  KEY `idpatologia` (`idpatologia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `antecedentes`
--

INSERT INTO `antecedentes` (`idpaciente`, `idpatologia`, `descripcion`) VALUES
(8, 4, '4 meses.'),
(8, 5, 'Chocolate y café.'),
(3, 2, 'Detectado_en_2013'),
(3, 5, 'Rayos del sol y maní.'),
(5, 1, 'Fase 3.'),
(5, 3, 'Leve'),
(5, 5, 'A los gatos.'),
(2, 4, '7 meses de gestacion'),
(4, 1, 'tipo f4'),
(4, 5, 'felinos'),
(1, 3, 'albeto tiene gastritis'),
(1, 1, 'diabetes de alberto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistente`
--

CREATE TABLE IF NOT EXISTS `asistente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellidopaterno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellidomaterno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `asistente`
--

INSERT INTO `asistente` (`id`, `nombre`, `apellidopaterno`, `apellidomaterno`) VALUES
(1, 'Gabriela', 'Larios', 'Torres'),
(2, 'Ana', 'Gomes', 'Lopes'),
(12, 'Felipe', 'Luna', 'Juarez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE IF NOT EXISTS `direccion` (
  `idpaciente` int(11) NOT NULL,
  `ciudad` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `calle` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `numero` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `colonia` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  KEY `idpaciente` (`idpaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`idpaciente`, `ciudad`, `calle`, `numero`, `colonia`) VALUES
(1, 'Tlapa', 'Pipila', '32', 'Peligro'),
(2, 'Chilapa ', 'Benito Juarez', '55', 'La Joya'),
(3, 'Tlapa de Comonfort', 'Morelos', '43', 'Aviacion'),
(4, 'Chilapa', 'Hidalgo', '23', 'La Joya'),
(5, 'Tlapa de Comonfort', 'Amapolas', '45', 'Aviacion'),
(6, 'Alpoyeca', 'San Juan', '33', 'Vicente Guerrero'),
(7, 'Tlapa', 'Matamoros', '15', 'Centro'),
(8, 'Chilpancingo', 'Pipila', '98', 'Bella Vista'),
(9, 'Chilapa', 'Juan Escutia', '33', 'Los Pinos'),
(10, 'Tlapa de Comonfort', 'Juarez', '123', 'San Diego'),
(11, 'Tlapa de Comonfort', 'Aeropuerto', '44', 'Aviacion'),
(12, 'Tlapa de Comonfort', 'Guerrero', 's/n', 'San Francisco'),
(13, 'Chilapa', '15 de Septiembre', '77', 'Alcozacan'),
(14, 'Tlapa', 'Hidalgo', '43', 'Centro'),
(15, 'Chilpancingo', 'Amapolas', '43', 'Aviacion'),
(20, 'Tlapa de comonfort', 'Hidalgo', '55', 'Centro'),
(21, 'Tlapa', 'Morelos', '54', 'Centro'),
(22, 'Tlapa', 'Morelos', '54', 'Centro'),
(23, 'Tlapa', 'Morelos', '54', 'Centro'),
(24, 'Tlapa', 'Morelos', '54', 'Centro'),
(25, 'Tlapa', 'Morelos', '54', 'Centro'),
(26, 'Tlapa', 'Morelos', '54', 'Centro'),
(27, 'Tlapa', 'Morelos', '54', 'Centro'),
(28, 'Tlapa', 'Morelos', '54', 'Centro'),
(29, 'Chilapa', '15 de Septiembre', '77', 'Alcozacan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamento`
--

CREATE TABLE IF NOT EXISTS `medicamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `concentracion` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `dosis` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `medicamento`
--

INSERT INTO `medicamento` (`id`, `nombre`, `tipo`, `concentracion`, `dosis`) VALUES
(1, 'el torolato', 'Suspensión', '897 Miligramos', 'una cada ocho horas.'),
(4, 'el paracetamol', 'Tabletas', '333 Miligramos', 'se deben tomar cada 3 horas'),
(5, 'albinel', 'Suspensión', '50 Mililitros', 'una inyecccion cada 8 horas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE IF NOT EXISTS `paciente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellidopaterno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellidomaterno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `sexo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `edad` int(3) unsigned NOT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ingreso` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=30 ;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`id`, `nombre`, `apellidopaterno`, `apellidomaterno`, `sexo`, `edad`, `telefono`, `ingreso`) VALUES
(1, 'Alberto', 'Gutierrez', 'Morales', 'Hombre', 35, '7571001234', '29-09-2014'),
(2, 'Ana', 'Dominguez', 'Martinez', 'Mujer', 25, '7571234100', '29-09-2014'),
(3, 'Juan', 'Diaz', 'Sanchez', 'Hombre', 10, '7579916543', '29-09-2014'),
(4, 'Karen', 'Lopez', 'Morales', 'Mujer', 28, '7571231001', '29-09-2014'),
(5, 'Duncan', 'Gomez', 'Bernardino', 'Hombre', 32, '4761234', '29-09-2014'),
(6, 'Hilda', 'Sanchez', 'Flores', 'Mujer', 10, '7571008765', '29-09-2014'),
(7, 'Ricargo', 'Guzman', 'Lopes', 'Hombre', 43, '65542', '01-10-2014'),
(8, 'Karina', 'Morales', 'Reyes', 'Mujer', 26, '7471212301', '01-10-2014'),
(9, 'Ruben', 'Dario', 'Gomez', 'Hombre', 24, '7471023990', '01-10-2014'),
(10, 'Luisa', 'Cruz', 'Moreno', 'Mujer', 14, '7571010123', '01-10-2014'),
(11, 'Manuel', 'Castro', 'Lopez', 'Hombre', 11, '4765532', '01-10-2014'),
(12, 'Abel', 'Chavez', 'Rivera', 'Hombre', 23, '7571063999', '01-10-2014'),
(13, 'Gabriela', 'Corona', 'Ortiz', 'Mujer', 15, '7571093660', '01-10-2014'),
(14, 'Jaime', 'Aguirre', 'Castaño', 'Hombre', 43, '7571113345', '14-10-2014'),
(15, 'Graciela', 'Fernandez', 'Quintana', 'Mujer', 15, 's/n', '14-10-2014'),
(16, 'Anahi', 'Gomes', 'Ortega', 'Mujer', 26, '7571002879', '15-11-2015'),
(17, 'Berna', 'Lopes', 'Herrera', 'Hombre', 22, '7571002879', '15-11-2015'),
(18, 'Felipe', 'Calderon', 'Hinojosa', 'Hombre', 54, '7571008990', '15-11-2015'),
(19, 'Fulano', 'Abundis', 'Romero', 'Hombre', 34, 'SN', '15-11-2015'),
(20, 'Fulana', 'De Tal', 'Gomez', 'Mujer', 12, '4767721', '15-11-2015'),
(21, 'Gerardo', 'Hernandez', 'Lopez', 'Hombre', 32, '7571009876', '15-11-2015'),
(22, 'Gerardo', 'Hernandez', 'Lopez', 'Hombre', 32, '7571009876', '15-11-2015'),
(23, 'Gerardo', 'Hernandez', 'Lopez', 'Hombre', 32, '7571009876', '15-11-2015'),
(24, 'Gerardo', 'Hernandez', 'Lopez', 'Hombre', 32, '7571009876', '15-11-2015'),
(25, 'Gerardo', 'Hernandez', 'Lopez', 'Hombre', 32, '7571009876', '15-11-2015'),
(26, 'Gerardo', 'Hernandez', 'Lopez', 'Hombre', 32, '7571009876', '15-11-2015'),
(27, 'Gerardo', 'Hernandez', 'Lopez', 'Hombre', 32, '7571009876', '15-11-2015'),
(28, 'Gerardo', 'Hernandez', 'Lopez', 'Hombre', 32, '7571009876', '15-11-2015'),
(29, 'Gabriela', 'Corona', 'Ortiz', 'Mujer', 15, '7571093660', '01-10-2014');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patologia`
--

CREATE TABLE IF NOT EXISTS `patologia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `patologia`
--

INSERT INTO `patologia` (`id`, `nombre`) VALUES
(1, 'Diabetes'),
(2, 'Hipertensión'),
(3, 'Gastritis'),
(4, 'Embarazo'),
(5, 'Alergias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsable`
--

CREATE TABLE IF NOT EXISTS `responsable` (
  `idpaciente` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellidopaterno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellidomaterno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `parentesco` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  KEY `idpaciente` (`idpaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `responsable`
--

INSERT INTO `responsable` (`idpaciente`, `nombre`, `apellidopaterno`, `apellidomaterno`, `telefono`, `parentesco`) VALUES
(3, 'Carlos', 'Diaz', 'Luna', '4763398', 'Papa'),
(6, 'Juana', 'Diaz', 'Sanchez', '4765532', 'Madre'),
(8, 'Benito', 'Enrique', 'Flores', '7471212309', 'Tio'),
(10, 'Anahi', 'Moreno', 'Garcia', '7571212321', 'Madre'),
(11, 'Julio', 'Castro', 'Perez', '4765532', 'Padre'),
(1, 'Roberto', 'Gutierrez', 'Hernandez', '7571001133', 'Tio'),
(13, 'Juliana', 'Gomez', 'Ortiz', '7571020987', 'Mama'),
(15, 'Juan', 'Fernandez', 'Quiroga', 's/n', 'PAdre'),
(23, 'Hugo', 'Gome', 'Navarro', '7571027869', 'padre'),
(25, 'Natalia', 'Lopez', 'Suares', '7571239087', 'Tia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellidopaterno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellidomaterno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `contrasena` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellidopaterno`, `apellidomaterno`, `contrasena`) VALUES
(1, 'administrador', 'admin', 'root', '7339f806bdd1e5082151d5394dabfb9d'),
(4, 'Lucia', 'Martinez', 'Juarez', 'e7774c12218a966b62916bc3e33532ae'),
(8, 'Luis', 'Lopez', 'Luna', 'bf083d4ab960620b645557217dd59a49'),
(9, 'Bernabe', 'Delgado', 'Salmeron', 'df634a9910dd999c92fbead38dc1f018');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `antecedentes`
--
ALTER TABLE `antecedentes`
  ADD CONSTRAINT `antecedentes_ibfk_1` FOREIGN KEY (`idpaciente`) REFERENCES `paciente` (`id`),
  ADD CONSTRAINT `antecedentes_ibfk_2` FOREIGN KEY (`idpatologia`) REFERENCES `patologia` (`id`);

--
-- Filtros para la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `direccion_ibfk_1` FOREIGN KEY (`idpaciente`) REFERENCES `paciente` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `responsable`
--
ALTER TABLE `responsable`
  ADD CONSTRAINT `responsable_ibfk_1` FOREIGN KEY (`idpaciente`) REFERENCES `paciente` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
