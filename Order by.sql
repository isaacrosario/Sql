select titulo from libros
order by titulo;
/* ordena la tabla de forma ascendente */

select precio_venta from libros
order by precio_venta

/* ordena lo0s libro de mayor a menor */

select precio_venta from libros
order by precio_venta asc

/* lo ordena de manera ascendente; esta es la que esta por defecto*/

select precio_venta from libros
order by precio_venta desc

/* lo ordena de manera decendente */

select precio_venta from libros
order by precio_venta desc

select * from libros
order by titulo asc, precio_venta desc