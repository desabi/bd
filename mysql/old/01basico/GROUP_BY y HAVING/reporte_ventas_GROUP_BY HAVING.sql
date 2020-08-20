
/* TRABAJAR CON LA SUMA TOTAL DE LAS VENTAS */

/* Obtener el total de ventas de cada area */
SELECT area, SUM(total) FROM reporte_ventas GROUP BY area;

/* Areas que vendieron mas de 200 */
SELECT area, SUM(total) FROM reporte_ventas GROUP BY area HAVING SUM(total) > 200;

/* Areas que vendieron mas de 300 */
SELECT area, SUM(total) FROM reporte_ventas GROUP BY area HAVING SUM(total) > 300;



/* TRABAJAR CON EL PROMEDIO DE VENTAS */

/* Obtener el promedio de ventas de cada area */
SELECT area, AVG(total) FROM reporte_ventas GROUP BY area;

/* Areas que tienen un promedio de ventas mayor a  */
SELECT area, AVG(total) FROM reporte_ventas GROUP BY area HAVING AVG(total) < 100;