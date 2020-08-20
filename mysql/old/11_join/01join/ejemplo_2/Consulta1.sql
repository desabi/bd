SELECT
empresa.idempresa, empresa.nombre,
servicio.empresa_idempresa, servicio.idservicio, servicio.descripcion
FROM empresa
INNER JOIN servicio
ON empresa.idempresa = servicio.empresa_idempresa;