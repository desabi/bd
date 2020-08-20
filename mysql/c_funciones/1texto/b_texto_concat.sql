
SELECT * FROM cliente;

/* concatenar el nombre y la edad */
SELECT CONCAT(nombre,edad) FROM cliente;

/* concatenar el nombre y la edad con espacios */
SELECT CONCAT(nombre, " ",edad) FROM cliente;

/* Concatenar nombre, telefono y ciudad */
SELECT CONCAT(nombre," ", telefono, " ", ciudad) FROM cliente;

/* Concatenar nombre, telefono y ciudad con espacios */
SELECT CONCAT_WS(" - ", nombre, telefono, ciudad) FROM cliente;

