select alumno.nombre, materia.nombre
from alumno, materia right join alumno_has_materia
on alumno_has_materia.materia_idmateria = materia.idmateria
where alumno_has_materia.alumno_idalumno = 1;