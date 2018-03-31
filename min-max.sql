use empleados
select * from usuarios

select min(edad) from usuarios /* obtiene la edad minima */

select min(edad) from usuarios where sexo = 'M'; /* obtiene la edad maxima */

select max(edad) from usuarios where sexo = 'F';

select min(nombre) from usuarios; /* obtiene el nombre mas cercano a la A */
select max(nombre) from usuarios; /* obtiene el nombre mas cercano a la Z */

select nombre from usuarios order by nombre ;

select count(edad) as edades from usuarios 