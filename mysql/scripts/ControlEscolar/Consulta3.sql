SELECT alumno.idalumno, alumno.nombre, materia.idmateria, materia.nombre 
FROM alumno_has_materia
INNER JOIN alumno
ON alumno_has_materia.alumno_idalumno = alumno.idalumno
INNER JOIN materia
ON alumno_has_materia.materia_idmateria = materia.idmateria
WHERE alumno.idalumno = 3;