
/* Obtener los datos de la tabla estudiantes */
SELECT idestudiante, carrera, cuatrimestre, nombre, calificacion, edad FROM estudiante;

/* Obtener la calificacion promedio de todos los estudiantes */
SELECT avg(calificacion) FROM estudiante;

/* Obtener la calificacion promedio de cada carrera */
SELECT AVG(calificacion) FROM estudiante GROUP BY carrera;

SELECT carrera, AVG(calificacion) FROM estudiante GROUP BY carrera;

SELECT carrera, AVG(calificacion) AS 'Promedio General' FROM estudiante GROUP BY carrera;