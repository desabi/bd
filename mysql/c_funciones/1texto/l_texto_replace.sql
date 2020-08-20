USE c_datos;

SELECT * FROM empleado;

SELECT correo, REPLACE(correo, "hotmail.com", "outlook.com") FROM empleado;