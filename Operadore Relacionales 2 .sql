	select nombre from libros
	select precio_venta from libros

	/*sacar las ganancias de cada libros*/
	
	select precio_venta - precio_compra from libros where id_libro = 1

	select * from libros

	/*presupuesto*/

select nombre,precio_venta * 10 from libros where nombre ='Programación en Java'  

/*actualizacion*/

update libros set precio_venta = precio_venta + (precio_venta * 0.1) where id_libro = 1

select precio_venta from libro where no