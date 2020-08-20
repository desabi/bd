SELECT AVG(precio) FROM producto;

SELECT nombre, precio FROM producto WHERE precio > (SELECT avg(precio) FROM producto);

SELECT area, nombre, precio FROM producto WHERE precio > (SELECT avg(precio) FROM producto);

/* ------------------------------------------------- */

SELECT nombre, precio FROM producto WHERE precio < (SELECT avg(precio) FROM producto);

SELECT area, nombre, precio FROM producto WHERE precio < (SELECT avg(precio) FROM producto);