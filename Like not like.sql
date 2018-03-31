/*

like --->
not like 

*/


select * from libros where nombre like '%de%';  /* buscar libros que tengan esa palabra*/
 
 select * from libros where not nombre like '%de%' /* buscar libros que no tengan esa palabra*/
 
 select * from libros where nombre like 'el%' /* buscar los libros que empiezen con la parabra el */

 select * from libros where nombre like '%da' /* buscar los libros que terminene con la palabra da */

select * from libros where nombre like '%_ura%';
/* el _ me sirve como comodin para buscar palabras dilematicas */


