select * from Carrera

select * from Carrera where Carrera.id_carrera = (select id_carrera from Carrera where id_carrera = 3)

