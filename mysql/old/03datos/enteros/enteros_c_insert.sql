
/* Insertar datos */
INSERT INTO enteros_c VALUES(8300600, 32700);

/* Mostrat los datos */
SELECT entero_medio, entero_pequeno FROM enteros_c;

/* Insertar un numero negativo en el primer valor */
/* No lo aceptara por que lo definimos como unsigned */
INSERT INTO enteros_c VALUES (-120, 2700);

/* Insertar datos que sean aceptados */
INSERT INTO enteros_c VALUES (12345, 195);

/* Mostrar los datos */
SELECT entero_medio, entero_pequeno FROM enteros_c;

INSERT INTO enteros_c VALUES (54321, 876);

/* Mostrar los datos */ 
SELECT entero_medio, entero_pequeno FROM enteros_c;