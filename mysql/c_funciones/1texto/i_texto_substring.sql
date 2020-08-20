/* DE MANERA DIRECTA */

/* SUBSTRING(): extra una parte del texto */

/* Extraer la palabra puerto de aereopuerto */
/* ignorar las 5 primeras letras, comenzar a partir de la 6ta letra */
SELECT SUBSTRING("aereopuerto", 6);

/* Extraer la palabra movil de automovil */
/* ignorar las primeras 4 letras, comenzar a partir de la 5ta letra */
SELECT SUBSTRING("automovil", 5);

/* de izquierda a derecha */
SELECT SUBSTRING("cumpleaños", -4);

SELECT SUBSTRING("girasol", -3);

/* DOS PARAMETROS */
/* el 1ro: donde queremos que inicie*/
/* 2l 2do: cuantas letras */
SELECT SUBSTRING("www.facebook.com", 5, 8);

SELECT SUBSTRING("apasionado", 2, 6);



