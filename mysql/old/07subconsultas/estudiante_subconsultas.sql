/* Seleccionar la edad promedio de los estudiantes */
SELECT AVG(edad) FROM estudiante;

/* Seleccionar el nombre, la carrera y la edad de los alumnos */
/* que tengan una edad mayor a la edad promedio */
SELECT nombre, carrera, edad FROM estudiante WHERE edad < (SELECT AVG(EDAD) FROM estudiante);

/* Seleccionar la calificacion promedio de los estudiantes */
SELECT AVG(calificacion) FROM estudiante;

/* Seleccionar la carrera, nombre y calificacion de los alumnos */
/* que tengan una calificacion mayor a la calificacion promedio */
SELECT carrera, nombre, calificacion FROM estudiante WHERE calificacion > (SELECT AVG(calificacion) FROM estudiante);
