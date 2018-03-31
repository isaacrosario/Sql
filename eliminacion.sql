/*

delete ---> elimina registro
drop---> elimina la estructura
truncate---> eliminar los registros (reset)
*/

select * from users
delete from users where id = 6
truncate table prueba
select * from prueba
drop table prueba

