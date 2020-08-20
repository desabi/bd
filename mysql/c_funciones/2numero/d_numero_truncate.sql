/* FUNCION TRUNCATE */
/* DE MANERA DIRECTA */

USE c_datos;

SELECT * FROM persona;

SELECT estatura, TRUNCATE(estatura, 1) FROM persona;