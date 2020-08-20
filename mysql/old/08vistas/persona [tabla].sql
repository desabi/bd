CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `edad` tinyint(4) NOT NULL,
  `estatura` decimal(3,2) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `correo` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
