
/*obtener el nombre del mes*/
select date_format("2017-06-15", "%M");

/*cambiar el formato de las fechas a español de mexico */
/* con ejecutarlo una vez basta*/
SET lc_time_names = 'es_MX';

/*obtener el nombre del mes*/
select date_format("2017-06-15", "%M");

/*OBTENER el NOMBRE DEL MES y el año*/
select date_format("2017-06-15", "%M %Y");
select date_format("2017-06-15", "%M %Y");

/* obtener el dia, nombre del mes y año*/
select date_format("2017-06-15", "%e %M %Y");

/* obtener el nombre del dia, nombre del mes y año*/
select date_format("2017-06-15", "%W %M %Y");
select date_format("2017-06-15", "%W %e %M %Y");
select date_format("2017-06-15", "%W %e de %M del %Y");
