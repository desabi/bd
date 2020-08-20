-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2017 a las 15:04:50
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `insertar_en_varias_tablas`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar`(IN `persona_nombre` VARCHAR(45), IN `informacion_edad` INT, IN `informacion_estatura` DECIMAL(3,2), IN `direccion_estado` VARCHAR(45), IN `direccion_ciudad` VARCHAR(45))
BEGIN
DECLARE idgenerado INT UNSIGNED DEFAULT 0;
INSERT INTO persona VALUES (NULL, persona_nombre);
SET idgenerado = last_insert_id();
INSERT INTO informacion VALUES (informacion_edad, informacion_estatura, idgenerado);
INSERT INTO direccion VALUES (direccion_estado, direccion_ciudad, idgenerado);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_persona_e_informacion`(IN `p_persona_nombre` VARCHAR(45), IN `p_informacion_edad` INT, IN `p_informacion_estatura` DECIMAL(3,2))
BEGIN
DECLARE idGenerado INT UNSIGNED DEFAULT 0;
INSERT INTO persona VALUES (NULL, p_persona_nombre);
set idGenerado = last_insert_id();
INSERT INTO informacion VALUES (p_informacion_edad, p_informacion_estatura, idGenerado);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listarAlumnoInformacion`()
BEGIN
SELECT persona.idpersona, persona.nombre, informacion.edad, informacion.estatura, informacion.idpersona
FROM persona
JOIN informacion
ON persona.idpersona = informacion.idpersona ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listarPersona`()
BEGIN
SELECT idpersona, nombre from persona;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE IF NOT EXISTS `direccion` (
  `estado` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `idpersona` int(11) NOT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`estado`, `ciudad`, `idpersona`) VALUES
('Guerrero', 'Acapulco', 6),
('Queretaro', 'CiudadABC', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacion`
--

CREATE TABLE IF NOT EXISTS `informacion` (
  `edad` varchar(45) NOT NULL,
  `estatura` decimal(3,2) NOT NULL,
  `idpersona` int(11) NOT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `informacion`
--

INSERT INTO `informacion` (`edad`, `estatura`, `idpersona`) VALUES
('30', '1.62', 3),
('23', '1.60', 4),
('24', '1.65', 5),
('24', '1.65', 6),
('33', '1.72', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `idpersona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `nombre`) VALUES
(1, 'Abi'),
(2, 'Abi'),
(3, 'Abi'),
(4, 'Wider'),
(5, 'Richard'),
(6, 'Sara'),
(7, 'Fulano');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `fk_direccion_persona` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `informacion`
--
ALTER TABLE `informacion`
  ADD CONSTRAINT `fk_informacion_persona` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
