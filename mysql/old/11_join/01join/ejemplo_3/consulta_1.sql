SELECT
cliente.nombre,
pedido.producto
FROM cliente
INNER JOIN pedido
ON cliente.idcliente = pedido.cliente_idcliente;