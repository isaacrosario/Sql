/*use empleados*/

/*select * from usuarios */

create view Usuarios_V as  /* Nota: la vista no puede llamarse igual que la tabla de usuario u otra existente */

select nombre from usuarios  /* Esto es lo que se le mostrará al programador */


select count(nombre) from Usuarios_V

select nombre from Usuarios_V 

delete usuarios where nombre = 'tatiana'

