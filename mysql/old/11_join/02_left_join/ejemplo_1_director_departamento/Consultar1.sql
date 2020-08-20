SELECT director.nombre, departamento.nombre 
FROM director 
LEFT JOIN departamento 
ON director.iddepartamento = departamento.iddepartamento
ORDER BY director.nombre;