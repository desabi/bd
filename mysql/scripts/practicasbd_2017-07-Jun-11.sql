-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-07-2017 a las 22:23:14
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `practicasbd`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`idalumno`, `nombre`, `ingreso`, `egreso`) VALUES
(1, 'Abi', 2006, 2012),
(2, 'Elena', 2007, 2013),
(3, 'Gaby', 2007, 2013),
(4, 'Sandra', 2008, 2014),
(5, 'Diego', 2008, 2014),
(6, 'Arturo', 2008, 2014),
(7, 'Blanca', 2009, 2015),
(8, 'Veronica', 2009, 2015),
(9, 'Karla', 2010, 2015),
(10, 'Martin', 2010, 2015),
(11, 'Felipe', 2007, 2010),
(12, 'Lilia', 2007, 2010),
(13, 'Ricardo', 2008, 2011),
(14, 'Oscar', 2009, 2012),
(15, 'Patricia', 2009, 2011);

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
  `idlibro` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `autor` varchar(50) DEFAULT NULL,
  `editorial` varchar(50) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `año` int(11) DEFAULT NULL,
  `paginas` int(11) DEFAULT NULL,
  PRIMARY KEY (`idlibro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`idlibro`, `titulo`, `autor`, `editorial`, `precio`, `año`, `paginas`) VALUES
(1, 'El gran libro de android', 'Jesús tomas Girones', 'Alfaomega', 298, 2014, 466),
(2, 'Vive la informática', 'Fidel Sánchez Sandoval', 'Progreso', 190, 2012, 192),
(3, 'Java manual de referencia', 'Herbert Schildt', 'McGraw Hill', 749, 2009, 1056),
(4, 'Manejo de técnicas de programación', 'Edna Miranda Chávez', 'Pearson', 150, 2015, 238),
(5, 'Aprenda SQL Server 2012', 'Francisco Salazar', 'Alfaomega', 248, 2013, 286),
(6, 'Bases de datos diseño y gestión', 'Arturo Mora Roja', 'Sintesis', 610, 2014, 200),
(7, 'JEE 7 a fondo', 'Pablo Augusto Sznajdleder', 'Alfaomega', 298, 2015, 260),
(8, 'Matlab introducción con ejemplos', 'Amos Gilat', 'Reverte', 620, 2014, 344),
(9, 'El gran libro de android', 'Jesús Tomas Girones', 'Alfaomega', 278, 2014, 392),
(10, 'PHP Manual de referencia', 'Steven Holzner', 'McGraw Hill', 596, 2009, 608),
(11, 'Sistemas de bases de datos', 'Paul Beyon Davies', 'Reverte', 1250, 2014, 672),
(12, 'Programación en C ejercicios', 'R Martínez Fernández', 'Dextra', 895, 2014, 222),
(13, 'Programa juegos con HTML5', 'Francisco JAvier Arce Anguiano', 'Alfaomega', 298, 2015, 312),
(14, 'Desarrollo de bases de datos', 'Dolores Cuadra', 'Alfaomega', 298, 2013, 492),
(15, 'Fundamentos de bases de datos', 'Andrew J. Oppel', 'McGraw Hill', 595, 2010, 496),
(16, 'Java cómo programar', 'Paul J. Deitel', 'Pearson', 452, 2012, 613),
(17, 'Python 3 al descubierto', 'Arturo Fernández Montoro', 'Alfaomega', 228, 2013, 262),
(18, 'Metodología de la programación', 'Osvaldo Cairo Battistutti', 'Alfaomega', 318, 2012, 448),
(19, 'SQL fácil', 'Pere Chardi García', 'Alfaomega', 318, 2014, 383),
(20, 'Apps HTML para móviles', 'Damian de Luca', 'Alfaomega', 258, 2014, 128),
(21, 'Fundamentos de PHP', 'Vokram Vaswani', 'McGraw Hill', 478, 2010, 468),
(22, 'Java para estudiantes', 'Douglas Bell', 'Prentice', 432, 2011, 661),
(23, 'Access 2013', 'Rosario Peña Pérez', 'Alfaomega', 198, 2013, 303),
(24, 'Microsoft SQL Server 2008', 'Dusan Petkovic', 'McGraw Hill', 695, 2010, 741),
(25, 'Domine PHP y MySQL', 'José Lólez Quijado', 'Alfaomega', 398, 2009, 574);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`idtrabajador`, `nombre`, `entrada`, `salida`) VALUES
(1, 'Abigahil', '07:10:00', '12:31:00'),
(2, 'Bianca', '08:10:30', '00:01:30'),
(3, 'Carlos', '10:30:00', '01:30:00'),
(4, 'Daniela', '08:32:45', '11:37:58'),
(5, 'Eduardo', '00:01:30', '01:33:00'),
(6, 'Felipa', '09:30:00', '12:30:00'),
(7, 'Gerardo', '08:30:00', '13:00:00'),
(8, 'Hilda', '10:45:00', '14:45:00'),
(9, 'Javier', '09:05:34', '13:01:10'),
(10, 'Karla', '07:55:00', '12:59:45');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `apellidos`, `edad`, `telefono`) VALUES
(1, 'Abi', 'Delgado Salmeorn', 28, 7571002850),
(2, 'Vianey', 'Salgado Romero', 23, 7571009087),
(3, 'Victor', 'Diaz Ortega', 32, 7571223454),
(4, 'Ruben', 'Flores Luna', 28, 7571000056),
(5, 'Luis', 'Suarez Hernandez', 26, 7571063990),
(6, 'Ana', 'Lopez Diaz', 26, 7571009089),
(7, 'Teodoro', 'Diaz Juarez', 29, 7579008870),
(8, 'Gaby', 'Vargas Lozano', 43, 7571116090),
(9, 'Luis', 'Ortega Luna', 33, 7571229022),
(10, 'Wilder', 'Villa Sanchez', 23, 7572346754),
(11, 'Irene', 'Moreno Vargas', 30, 7571562358),
(12, 'Kenedy', 'Perez Sanchez', 25, 7571127765),
(13, 'Marcos', 'Sanchez Solis', 29, 7571436654),
(14, 'Manuel', 'Herrera Rosendo', 29, 7571002384),
(15, 'Yadira', 'Rojas Villa', 32, 7571273040);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idventa`, `producto`, `pedido`, `entrega`) VALUES
(1, 'Laptop', '2015-05-28', '2015-06-10'),
(2, 'Disco Duro', '2015-11-01', '2015-11-05'),
(3, 'Mouse', '2015-10-15', '2015-10-17'),
(4, 'Memoria USB', '2016-03-21', '2016-03-22'),
(5, 'Audifonos', '2016-05-11', '2016-05-11'),
(6, 'Bocinas', '2016-07-03', '2016-07-03'),
(7, 'Tablet', '2017-01-08', '2017-01-13'),
(8, 'Camara', '2017-04-19', '2017-04-20'),
(9, 'Memoria RAM', '2017-05-07', '2017-05-07'),
(10, 'Procesador', '2017-06-25', '2017-06-30'),
(11, 'Reproductor MP3 ', '2017-06-14', '2017-06-17'),
(12, 'Teclado', '2017-04-04', '2017-04-07');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
