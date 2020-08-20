
/*ROUND CON TABLA*/

USE c_datos;

SELECT * FROM persona;

/* REDONDEAR LAS ESTATURAS*/
SELECT estatura, ROUND(estatura) FROM persona;

SELECT estatura, ROUND(estatura, 1) FROM persona;