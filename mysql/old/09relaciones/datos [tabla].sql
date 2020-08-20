CREATE TABLE `datos` (
  `persona_idpersona` int(11) NOT NULL,
  `edad` tinyint(4) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  KEY `fk_persona_datos_idx` (`persona_idpersona`),
  CONSTRAINT `fk_persona_datos` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
