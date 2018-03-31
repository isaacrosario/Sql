/*
count ---> sirve para contar registros

*/


select * from libros where id_libro > 10;

select count(nombre) as cantidad_de_nombres from libros where id_libro > 10;

/* Nota: los NULL no se cuentan */