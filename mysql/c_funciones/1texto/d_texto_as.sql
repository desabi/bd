
/* CON LOS DATOS DE UNA TABLA */
SELECT * FROM cliente;

/* Concatenar el nombre la ciudad y la colonia como mi direccion */
SELECT CONCAT_WS(" ", nombre, ciudad, colonia) FROM cliente;
SELECT CONCAT_WS(" ", nombre, ciudad, colonia) AS "direccion del cliente" FROM cliente ;

SELECT CONCAT_WS(" ","el nombre:" ,nombre,"la ciudad:" ,ciudad, "la colonia", colonia) AS "direccion del cliente" FROM cliente ;