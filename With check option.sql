/*
with check option
*/

create view copy as
select * from usuarios
where sexo = 'M'
with check option


select * from copy




/* con esta opcion si borro la vista se borra todo los registros en la vista; sin embargo en la tabla se borran los 'M' con with check option */