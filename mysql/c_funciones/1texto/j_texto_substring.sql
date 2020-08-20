use c_datos;

/*USANDO UNA TABLA */
SELECT * FROM empleado;

/* Mostrar solamente la hora y los minutos */
/* 1: donde queremos queinicie */
/* 5: cuantos caracteres queremos que muestre, espacios en blanco, puntos, dos puntos cuentan como caracter */
SELECT SUBSTRING(hora_entrada, 1, 5) FROM empleado;

/* Mostrar el mes y el dia de contratacion */
/* Ingora los primeros 5 caracteres */
/* comienza a partir de la letra 6 */
SELECT SUBSTRING(fecha_contratacion, 6) FROM empleado;
SELECT nombre, SUBSTRING(fecha_contratacion, 6) FROM empleado;

