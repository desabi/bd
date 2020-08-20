
/* Mostrar los datos de la tabla reporte_ventas */
select idventa, mes, area, total from reporte_ventas;

/* Obtene el total de ventas de Enero, Febrero y Marzo en todos los departamentos */
SELECT SUM(total) FROM ventas;

/* sumar los totales de ventas que obtuvo cada area durante los cuatro meses */
SELECT SUM(total) FROM ventas GROUP BY area;

/* Obtener el nombre y el total de ventas que obtuvo cada area durante los cuatro meses */
SELECT area, SUM(total) FROM reporte_ventas GROUP BY area;

/* Obtener el nombre y el total de ventas que obtuvo cada area durante los cuatro meses */
SELECT area, SUM(total) AS total_ventas FROM reporte_ventas GROUP BY area;

