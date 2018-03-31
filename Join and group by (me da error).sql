select * from  Alumnos 
select * from Datos 
select * from Carrera 

select Alumnos.nombre,Carrera.carrera from Datos join Alumnos on Datos.id_alumno = Alumnos.id_alumno join Carrera on Carrera.id_carrera = Carrera.carrera where Datos.edad > 18
group  by Alumnos.nombre,Carrera.carrera

/* me da error */