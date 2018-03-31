use Escuela1

select * from Alumnos
select * from Datos	
select * from Carrera


select * from Datos inner join Alumnos on Datos.id_alumno = Alumnos.id_alumno /* este es el inner join */

select * from Alumnos left join Datos on Alumnos.id_alumno = Datos.id_alumno 

/*Nota: Tenemos como tabla principal Alumnos, me muestra los registro aunque no tenga relacion */


select * from Datos left join Alumnos on Alumnos.id_alumno = Datos.id_alumno 
/* Tenemos como tabla principal Datos */


