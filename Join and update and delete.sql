use Escuela1

select * from Alumnos left join Datos on Datos.id_alumno = Alumnos.id_alumno

select * from Alumnos
select * from Datos
select * from Carrera

update Alumnos set nombre = 'Cambio'
from Alumnos left join Carrera                 /* para actualizar */
on Alumnos.id_carrera = carrera.id_carrera
where Carrera.id_carrera = 2

delete Alumnos
from Alumnos left join Carrera                 /* para borrar */
on Alumnos.id_carrera = carrera.id_carrera
where Carrera.id_carrera = 1