/*
wher ===> filtros individuales
having --->filtro por grupo de registro
*/


use empleados

select nombre,AVG(edad) from usuarios where sexo ='F'
group by nombre
having avg(edad) > 20
 