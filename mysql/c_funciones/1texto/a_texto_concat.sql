
/* CONCAT: Sirve para unir dos cadenas */
SELECT CONCAT("ingenieria", "en sistemas", "computacionales");
SELECT CONCAT("7mo", "cuatrimestre");

/* Funcion CONCAT_WS */
/* Sirve para unir textos con un separador */
/* El primer valor sera caracter que va separar a los textos */

/* Separador: - */
/* Resultado: ABI-DS */
SELECT CONCAT_WS("-", "ABI", "DS");

/* Separador: * */
/* Resultado: UNO*DOS*TRES */
SELECT CONCAT_WS("*", "UNO", "DOS", "TRES");

/* Separador: : */
/* Resultado: A:B:C:D */
SELECT CONCAT_WS(":", "A", "B", "C", "D");

SELECT CONCAT_WS(" ", "A", "B", "C", "D");