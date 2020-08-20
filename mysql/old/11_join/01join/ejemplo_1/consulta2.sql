SELECT
departamento.nombre,
empleado.nombre
FROM departamento
INNER JOIN empleado
ON departamento.iddepartamento = empleado.departamento_iddepartamento;