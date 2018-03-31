use Escuela1

select * from Datos inner join Alumnos on Datos.id_alumno =  Alumnos.id_alumno where Alumnos.id_carrera = 13
select * from Datos right join Alumnos on Datos.id_alumno =  Alumnos.id_alumno where Alumnos.id_carrera = 13
select * from Alumnos left join Datos on Datos.id_alumno =  Alumnos.id_alumno where Alumnos.id_carrera = 13


/* Este hace lo opuesto; toma como referencia principal la segunda tabla en este caso "Alumnos" */

/*  Nota: Los lefts and rights se hacen de dos tablas no obstante los inners se hacen con N tabla*/