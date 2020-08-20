use c_datos;

select * from empleado;

select nombre, date_format(fecha_contratacion, "%d %m %Y") from empleado;
select nombre, date_format(fecha_contratacion, "%d/%m/%Y") from empleado;
select nombre, date_format(fecha_contratacion, "%d-%m-%Y") from empleado;

select nombre, date_format(fecha_contratacion, "%W %e de %M del %Y") from empleado;

