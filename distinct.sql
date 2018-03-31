/*
distinct --->elimina repeticiones temporalmente

*/

select * from usuarios

select distinct nombre from usuarios order by nombre 

select distinct edad from usuarios order by edad /* las que estan repetidas se suman */

select sum(distinct edad) from usuarios /* las que estan repetidas no se suman */