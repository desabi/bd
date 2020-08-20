/* ROUND */
/* DE MANERA DIRECTA */

SELECT ROUND(9.2);
SELECT ROUND(9.5);

SELECT ROUND(8.46);
SELECT ROUND(8.53);

/* Redondear en base al ultimo numero */
/* .46 sube a .50, por que se basa en el 6 */
SELECT ROUND(8.46, 1);

/* Redondear en base al ultimo numero */
/* .53 no sube a .60, por que se basa en el 3 */
SELECT ROUND(7.53, 1);

/* Redondear en base al ultimo numero */
/* .57 sube a .60, por que se basa en el 7 */
SELECT ROUND(7.57, 1);