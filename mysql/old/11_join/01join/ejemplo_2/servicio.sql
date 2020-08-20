CREATE TABLE `servicio` (
  `idservicio` int(11) NOT NULL,
  `empresa_idempresa` int(11) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idservicio`),
  KEY `FK_Servicio_Empresa_idx` (`empresa_idempresa`),
  CONSTRAINT `FK_Servicio_Empresa` FOREIGN KEY (`empresa_idempresa`) REFERENCES `empresa` (`idempresa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
