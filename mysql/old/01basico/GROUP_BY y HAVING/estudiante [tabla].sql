CREATE TABLE `estudiante` (
  `idestudiante` int(11) NOT NULL AUTO_INCREMENT,
  `carrera` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `cuatrimestre` tinyint(4) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `calificacion` decimal(3,1) NOT NULL,
  `edad` tinyint(4) NOT NULL,
  PRIMARY KEY (`idestudiante`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
