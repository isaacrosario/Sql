use libreria

select * from libros

/* concatenacion es la union de dos o mas cadenas */ 
select nombre from libros

select 'libros:' +nombre from libros 
select 'Isaac: ' +nombre from libros where id_libro =1 
select 'libros:' +nombre+'/'+nombre from libros 

/*Alias */

select precio_venta as este_es_el_precio_de_venta,precio_compra as este_es_el_precio_de_compra from libros

/* NOTA: El alias es temporal */