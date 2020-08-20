use c_datos;

select * from empleado;

/*extraer la hora de entrada */
select nombre, hora_entrada, hour(hora_entrada) from empleado;

/*extraer los minutos */
select nombre, hora_entrada, minute(hora_entrada) from empleado;

/*extraer los segundos */
select nombre, hora_entrada, second(hora_entrada) from empleado;