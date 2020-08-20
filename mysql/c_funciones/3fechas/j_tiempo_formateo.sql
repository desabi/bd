
/*mostrar la hora*/
select time_format("8:00", "%h");
select time_format("8:00", "%h %i");
select time_format("8:00", "%h:%i");

/*mostrar si es PM o AM*/
select time_format("16:00", "%h:%i %p");
select time_format("16:00", "%r");