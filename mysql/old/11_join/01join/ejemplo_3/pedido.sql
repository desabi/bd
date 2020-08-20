CREATE TABLE `pedido` (
  `idpedido` int(11) NOT NULL,
  `cliente_idcliente` int(11) NOT NULL,
  `producto` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(5,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `FK_Pedido_Cliente_idx` (`cliente_idcliente`),
  CONSTRAINT `FK_Pedido_Cliente` FOREIGN KEY (`cliente_idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
