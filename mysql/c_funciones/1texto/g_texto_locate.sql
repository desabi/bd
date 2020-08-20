
/* De manera directa */

/* Funcion LOCATE(): devuelve la posicion de la primera aparicion de la palabra buscada */
SELECT LOCATE("agua", "paraguas");

/* Si no encuentra alguna aparicion, devuelve cero */
SELECT LOCATE("ba", "escuela");

/* devuelve la primer posicion de a */
SELECT LOCATE("a", "zapoteca");

/* ignora las  3 primeras letras, y de ahi empieza a buscar */
/* devuelve la posiscion */
SELECT LOCATE("a", "zapoteca", 3);
