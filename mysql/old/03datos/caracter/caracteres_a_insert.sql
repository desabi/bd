
/* Insertar datos aceptados */
INSERT INTO caracteres_a VALUES ('abcde', "ijxyz");

/* Mostrar los datos */
SELECT caracter, caracter_variable FROM caracteres_a;

/* Insertar datos que sobrepasen el limite indicado del primer campo */
INSERT INTO caracteres_a VALUES ('ferrocarril', "asdfg");

/* el primer dato lo recorta, lo inserta incompleto */
/* el segundo dato lo inserta correctamente por que no sobre pasamos el limite */

/* Solamente va insertar: ferro y asdfg */

/* Insertar datos que sobre pase el limite indicado del segundo campo */
INSERT INTO caracteres_a VALUES ('xyz', "murcielago");

/* Recorta el segundo datos, lo inserta incompleto */
/* El primer dato se inserta correctamente por que no sobre pasamos el limite */

/* Solamente va insertar: xyz y murci */