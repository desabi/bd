
SELECT * FROM empleado;

/* mostrar la longitud de cada departamento */
SELECT LENGTH(departamento) FROM empleado;
SELECT departamento, LENGTH(departamento) FROM empleado;
SELECT departamento, LENGTH(departamento) AS "total letras" FROM empleado;

/* mostrar la longitud de los nombres */
SELECT LENGTH(nombre) FROM empleado;
SELECT nombre, LENGTH(nombre) FROM empleado;
SELECT nombre, LENGTH(nombre) AS "total de letras" FROM empleado;

/* Concatenar el nombre y la profesion */
SELECT CONCAT_WS(" ", nombre, profesion) FROM empleado;
SELECT CONCAT_WS(" ", nombre, profesion) AS "datos" FROM empleado;
SELECT LENGTH(CONCAT_WS(" ", nombre, profesion)) FROM empleado; 

/* ejercicio*/
SELECT CONCAT_WS(" ", nombre, profesion), LENGTH(CONCAT_WS(" ", nombre, profesion)) FROM empleado; 
SELECT CONCAT_WS(" ", nombre, profesion) AS "datos", LENGTH(CONCAT_WS(" ", nombre, profesion)) AS "Longitud" FROM empleado; 