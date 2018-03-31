/*
is null ---> es null
between ---> entre

*/



select * from libros where nombre is null;
select * from libros where precio_venta > 200 and precio_venta < 300
select * from libros where precio_venta between 200 and 300;