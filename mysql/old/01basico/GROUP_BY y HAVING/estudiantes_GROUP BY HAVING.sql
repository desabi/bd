
/* Mostrar el promedio general de cada carrera */
SELECT carrera, AVG(calificacion) FROM estudiante GROUP BY carrera;

/* Mostrar las carreras que tienen un promedio mayor a 8 */
SELECT carrera, AVG(calificacion) FROM estudiante GROUP BY carrera HAVING AVG(calificacion) > 8;

/* Mostrar las carreras que tienen un promedio menor a 8*/
SELECT carrera, AVG(calificacion) FROM estudiante GROUP BY carrera HAVING AVG(calificacion) < 8;