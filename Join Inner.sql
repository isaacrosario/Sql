use Escuela1

select * from Datos
select * from Alumnos
select * from Carrera

select * from Datos join Alumnos on Datos.id_alumno = Alumnos.id_carrera

select * from Datos join Alumnos on Datos.id_alumno = Alumnos.id_alumno where id_carrera = 1

/*********************************************************************************************/

select Alumnos.nombre, Datos.mail, Carrera.carrera from Datos Inner join Alumnos on Datos.id_alumno = Alumnos.id_alumno join Carrera on Alumnos.id_carrera = Carrera.id_carrera where Alumnos.id_carrera = 1






