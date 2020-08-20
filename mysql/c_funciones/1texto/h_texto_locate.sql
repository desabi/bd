use c_datos;

SELECT * FROM empleado;

/* Buscar la posicion de la letra a de cada departamento */
SELECT departamento, LOCATE("a", departamento) FROM empleado;

/* Buscar la posicion de la letra i en cada nombre */
SELECT nombre, LOCATE("i", nombre) FROM empleado;

/* Busca la posicion de los correos gmail */
SELECT correo, LOCATE("@gmail", correo) FROM empleado;

