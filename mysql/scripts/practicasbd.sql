-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 11-11-2015 a las 21:33:58
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `practicasbd`
--
CREATE DATABASE IF NOT EXISTS `practicasbd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `practicasbd`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE IF NOT EXISTS `alumno` (
  `idalumno` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `ingreso` year(4) NOT NULL,
  `egreso` year(4) NOT NULL,
  PRIMARY KEY (`idalumno`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`idalumno`, `nombre`, `ingreso`, `egreso`) VALUES
(1, 'Abi', 2006, 2012);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `colonia` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombre`, `apellido_paterno`, `apellido_materno`, `edad`, `colonia`, `localidad`) VALUES
(1, 'Ana', 'Molina', 'Gomez', 26, 'Aviacion', 'Tlapa'),
(2, 'Lorenzo', 'Ruiz', 'Perez', 19, 'San Antonio', 'Tlapa'),
(3, 'Violeta', 'Navarro', 'Garza', 21, 'Bugambilias', 'Huamuxtitlan'),
(4, 'Jairo', 'Flores', 'Maceda', 28, 'Alameda', 'Chilapa'),
(5, 'Sofia', 'Alba', 'Cabrera', 31, 'Universal', 'Chilpancindo'),
(6, 'Pablo', 'Cruz', 'Cano', 22, 'Zoyatal', 'Chilapa'),
(7, 'Pedro', 'Rojas', 'Solis', 27, 'San Pedro', 'Huamuxtitlan'),
(8, 'Roman', 'Osuna', 'Ruiz', 20, 'Temixco', 'Chipancingo'),
(9, 'Olgalidia', 'Rios', 'Herrera', 27, 'Ajuquiac', 'Tecpan'),
(10, 'Yolanda', 'Guevara', 'Rivera', 23, 'Tepeyac', 'Tlapa'),
(11, 'Jose', 'Fernandez', 'Martinez', 24, 'Progreso', 'Chilapa'),
(12, 'Andrea', 'Santos', 'Perez', 21, 'Valle Dorado', 'Huamuxtitlan'),
(13, 'Beatriz', 'Lopez', 'Salinas', 25, 'Emiliano Zapata', 'Tecpan'),
(14, 'Delia', 'Morales', 'Solano', 24, 'Caltitlan', 'Tlapa'),
(15, 'Irene', 'Arreola', 'De la rosa', 28, 'Texcalco', 'Chilpancingo'),
(16, 'Juan Manuel', 'Torres', 'Alva', 24, 'Arboledas', 'Iguala'),
(17, 'Erendira', 'Juarez', 'Valerio', 29, 'Jacarandas', 'Iguala'),
(18, 'Iris', 'Ledo', 'Galvez', 41, 'Morelos', 'Chilpancingo'),
(19, 'Gabriela', 'Castro', 'Espinoza', 28, 'Progreso', 'Chilapa'),
(20, 'Diana', 'Luna', 'Gutierrez', 35, 'San Diego', 'Tlapa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE IF NOT EXISTS `libro` (
  `titulo` varchar(50) DEFAULT NULL,
  `autor` varchar(50) DEFAULT NULL,
  `editorial` varchar(50) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `año` int(11) DEFAULT NULL,
  `paginas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`titulo`, `autor`, `editorial`, `precio`, `año`, `paginas`) VALUES
('El gran libro de android', 'Jesús tomas Girones', 'Alfaomega', 298, 2014, 466),
('Vive la informática', 'Fidel Sánchez Sandoval', 'Progreso', 190, 2012, 192),
('Java manual de referencia', 'Herbert Schildt', 'McGraw Hill', 749, 2009, 1056),
('Manejo de técnicas de programación', 'Edna Miranda Chávez', 'Pearson', 150, 2015, 238),
('Aprenda SQL Server 2012', 'Francisco Salazar', 'Alfaomega', 248, 2013, 286),
('Bases de datos diseño y gestión', 'Arturo Mora Roja', 'Sintesis', 610, 2014, 200),
('JEE 7 a fondo', 'Pablo Augusto Sznajdleder', 'Alfaomega', 298, 2015, 260),
('Matlab introducción con ejemplos', 'Amos Gilat', 'Reverte', 620, 2014, 344),
('El gran libro de android', 'Jesús Tomas Girones', 'Alfaomega', 278, 2014, 392),
('PHP Manual de referencia', 'Steven Holzner', 'McGraw Hill', 596, 2009, 608),
('Sistemas de bases de datos', 'Paul Beyon Davies', 'Reverte', 1250, 2014, 672),
('Programación en C ejercicios', 'R Martínez Fernández', 'Dextra', 895, 2014, 222),
('Programa juegos con HTML5', 'Francisco JAvier Arce Anguiano', 'Alfaomega', 298, 2015, 312),
('Desarrollo de bases de datos', 'Dolores Cuadra', 'Alfaomega', 298, 2013, 492),
('Fundamentos de bases de datos', 'Andrew J. Oppel', 'McGraw Hill', 595, 2010, 496),
('Java cómo programar', 'Paul J. Deitel', 'Pearson', 452, 2012, 613),
('Python 3 al descubierto', 'Arturo Fernández Montoro', 'Alfaomega', 228, 2013, 262),
('Metodología de la programación', 'Osvaldo Cairo Battistutti', 'Alfaomega', 318, 2012, 448),
('SQL fácil', 'Pere Chardi García', 'Alfaomega', 318, 2014, 383),
('Apps HTML para móviles', 'Damian de Luca', 'Alfaomega', 258, 2014, 128),
('Fundamentos de PHP', 'Vokram Vaswani', 'McGraw Hill', 478, 2010, 468),
('Java para estudiantes', 'Douglas Bell', 'Prentice', 432, 2011, 661),
('Access 2013', 'Rosario Peña Pérez', 'Alfaomega', 198, 2013, 303),
('Microsoft SQL Server 2008', 'Dusan Petkovic', 'McGraw Hill', 695, 2010, 741),
('Domine PHP y MySQL', 'José Lólez Quijado', 'Alfaomega', 398, 2009, 574);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE IF NOT EXISTS `trabajador` (
  `idtrabajador` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `entrada` time NOT NULL,
  `salida` time NOT NULL,
  PRIMARY KEY (`idtrabajador`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`idtrabajador`, `nombre`, `entrada`, `salida`) VALUES
(1, 'Abigahil', '07:10:00', '12:31:00'),
(2, 'She', '08:10:30', '00:01:30'),
(3, 'Her', '10:30:00', '01:30:00'),
(4, 'ELLA', '08:32:45', '11:37:58'),
(5, 'ana', '00:01:30', '01:33:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `apellidos`, `edad`, `telefono`) VALUES
(1, 'Abi', 'Delgado Salmeorn', 28, 7571002850),
(5, 'Luis', 'Suarez Hernandez', 26, 7571063990),
(6, 'Ana', 'Lopez Diaz', 26, 7571009089);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE IF NOT EXISTS `venta` (
  `idventa` int(11) NOT NULL AUTO_INCREMENT,
  `producto` varchar(45) NOT NULL,
  `pedido` date NOT NULL,
  `entrega` date NOT NULL,
  PRIMARY KEY (`idventa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idventa`, `producto`, `pedido`, `entrega`) VALUES
(1, 'Laptop', '2015-05-28', '2015-06-10'),
(2, 'Disco Duro', '2015-11-01', '2015-11-05'),
(3, 'Mouse', '2015-10-15', '2015-10-17');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
