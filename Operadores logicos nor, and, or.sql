/*

operadores logicos

not ---> != ---> negacion
and ---> && ---> y
or ---> || ---> o

*/

select * from libros where id_libro != 1; 
select * from libros where precio_venta =115 and precio_compra = 95.23
// todas las condiciones unidas por el and tienen que cumplirse

select * from libros where id_libro > = 1 or id_libro = 6;

select * from libros where not id_libro = 1 or nombre = 'Aura';