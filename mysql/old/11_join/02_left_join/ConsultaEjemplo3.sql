SELECT cliente.idcliente, cliente.nombre, pedido.idpedido, pedido.total, pedido.fecha
FROM cliente
LEFT JOIN pedido
ON cliente.idcliente = pedido.idcliente
ORDER BY cliente.idcliente;