select * from usuarios;

use empleados

/*
count ---> cuenta

sum ---> suma
nota: no se pueden sumar caracteres, cadenas, solo numeros

avg ---> promedio

*/

select count(*) from usuarios;

select sum(id_usuario)from usuarios where sexo ='F' and edad < 18; // se suma la edad de los usuario de sexo femenino


select avg(edad) from usuarios where sexo = 'F' and edad > 17;

select avg(edad) from usuarios 