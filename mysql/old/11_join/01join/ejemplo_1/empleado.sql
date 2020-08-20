CREATE TABLE `empleado` (
  `idempleado` int(11) NOT NULL,
  `departamento_iddepartamento` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `edad` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idempleado`),
  KEY `KF_Empleado_Departamento_idx` (`departamento_iddepartamento`),
  CONSTRAINT `FK_Empleado_Departamento` FOREIGN KEY (`departamento_iddepartamento`) REFERENCES `departamento` (`iddepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
