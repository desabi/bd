
/*
  tabla1 = departamento
  tabla2 = empleado
*/

SELECT 
departamento.iddepartamento, departamento.nombre,       				    /* tabla 1 */
empleado.idempleado, empleado.nombre, empleado.edad      					/* tabla 2 */
FROM departamento															/* tabla 1*/
INNER JOIN empleado															/* tabla 2 */
ON departamento.iddepartamento = empleado.departamento_iddepartamento; 		/* tabla1.campo = tabla2.campo */

