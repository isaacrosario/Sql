/*
COUNT --->cuenta
SUM --->suma
max --->maximo
min --->minimo




*/



select * from libros
select COUNT(titulo) from libros where precio_venta > 200  /*vuenta cuantos registros hay */
select SUM(precio_venta) from libros   /* para realizar sumas */
select MAX(precio_compra) from libros  /* para ver el maximo de un numero*/
select MIN(precio_compra) from libros  /* para ver el minimo de un numero*/
 