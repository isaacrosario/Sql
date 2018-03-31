create database biblioteca

use biblioteca

create table Libros

(
id_libro int,
titulo varchar(50),
num_pag int
)







select * from Libros where id_libro = (select id_libro from Libros where titulo = '100 años de soledad')

select * from Libros

select * from Libros where id_libro in (2,4,6) /*  me muestra los campos seleccionados, es decir los que estan dento del parentesis */

select * from Libros where id_libro not in (2,4,6) /* este hace lo contrario */



select * from Libros where id_libro in (select id_libro where  num_pag < 500)









