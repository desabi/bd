CREATE VIEW persona_direccion_vista 
AS
SELECT idpersona, nombre, edad, correo, estado, ciudad FROM persona
INNER JOIN direccion ON idpersona = direccion.persona_idpersona;