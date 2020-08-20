
/* Seleccionar los precios del area de software */
SELECT precio FROM producto WHERE area='Software';

/* Mostrar los productos de la tabla producto */
/* Que cuesten mas caro que el precio maximo de los productos del area software */
SELECT area, nombre, precio FROM producto WHERE precio > ALL (SELECT precio FROM producto WHERE area="Software");

/* Mostrar los productos de la tabla producto */
/* Que cuenten mas caro que cualquier precio de los productos del area de software */
SELECT area, nombre, precio FROM producto WHERE precio > ANY (SELECT precio FROM producto WHERE area="Software");