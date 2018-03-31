select * from Carrera

alter table Carrera
add Cupo_minimo int

alter table Carrera
add Cupo_limitado int

delete Carrera where id_carrera = 4

select * from Carrera

alter table Carrera
add Suma as (Cupo_minimo + 100)

alter table Carrera
add Resta as (Cupo_limitado - 100)


alter table Carrera
drop column Resta, Suma


alter table carrera
drop column cupo_limitado  /* no se puede eliminar si de esta columna dependen otras */