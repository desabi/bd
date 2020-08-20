CREATE TABLE `reporte_ventas` (
  `idventa` int(11) NOT NULL AUTO_INCREMENT,
  `mes` varchar(45) CHARACTER SET utf8 NOT NULL,
  `area` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`idventa`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

