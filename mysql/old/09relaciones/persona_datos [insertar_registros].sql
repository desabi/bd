
/* INSERTAR PRIMER REGISTRO */

/* 1ro: Insertar datos en la tabla persona */
INSERT INTO persona VALUES (null, "abi", "desa");

/* Ver el id que se genero */
select last_insert_id();

/* 2do: Insertar datos en la tabla direccion */
INSERT INTO datos VALUES (last_insert_id(), 29, 7571002850);


/* INSERTAR SEGUNDO REGISTRO */
INSERT INTO persona VALUES (NULL, "Berna", "desa");
INSERT INTO datos VALUES (last_insert_id(), 27, 7571908762);


/* VER DATOS DE LAS DOS TABLAS */
SELECT persona.*, datos.* FROM persona, datos WHERE persona.idpersona = datos.persona_idpersona;