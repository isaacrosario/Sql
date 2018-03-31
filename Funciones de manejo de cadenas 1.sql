/* Cadena es un conjunto de caracteres */

/*Hola a todos*/

select SUBSTRING('Hola a todos',8,1);
/* 8 es la posicion en la que comienza a contar */
/* 5 es la cantidad que va a contar */

select STR(123); /* para convertir un numero en cadena */

/*Tutoriales Hackro*/

select STUFF('Tutoriales Hackro	',12,6,'Mexico');/*para remplazar cadenas */

select LEN ('Tutoriales Hackro'); /* para saber la longitud de una cadena */

select CHAR (67); /* para saber el valor de un codigo ASCII */

