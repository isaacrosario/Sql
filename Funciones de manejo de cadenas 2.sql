use libreria


select LOWER('TUTORIALES hackro'); /* transformar de minuscula a MAYUSCULA */

select UPPER ('TUTORIALES hackro'); /* transformar de MAYUSCULA a minuscula */

select LTRIM('      TUTORIALES hackro') /* Para eliminar los espacios de la izquierda */

select RTRIM('          TUTORIALES hackro           ') /* Para eliminar los espacios de la derecha */

select REPLACE('Hola a todos saludos desde mexico','mexico','colombia');
/* para remplazar cadenas*/
/* NOTA: No es lo mismo que STUFF */

select REVERSE('anita lava la tina'); /* para invertir las palabras */

select PATINDEX ('%mexico%','Hola a todos saludos desde mexico');
/*me indica la posicion en donde comienza la parabra %mexico%*/


select REPLICATE ('Hola ',2);
/* imprimir una cadena las veces que les pidamos */

select 'Tutoriales'+SPACE(1)+'hackro';
/* crear espacio entre 2 cadenas */