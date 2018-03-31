create view Mujeres as
select * from usuarios where sexo = 'F'

select * from Mujeres order by edad

update Mujeres set tipo_usuario ='Root'
where edad > 25

select * from usuarios order by edad

delete from Mujeres 
 /* si se elimina los registros de una vista tambien se eliminan los de la tabla */

/* Nota: se puede actualizar una tabla atraves de una lista */