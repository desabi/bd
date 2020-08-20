SELECT idpersona, nombre, edad, correo, estado, ciudad FROM persona
INNER JOIN direccion ON idpersona = direccion.persona_idpersona;