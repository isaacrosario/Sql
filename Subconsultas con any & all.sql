use empleados

/*
in : = any
not in : <> all

*/
select * from usuarios where sexo = 'F' and edad = any (select edad from usuarios where sexo = 'M') order by edad
select * from usuarios where sexo = 'F' and edad <> all (select edad from usuarios where sexo = 'M')order by edad

select edad from usuarios where sexo ='F' order by edad
select edad from usuarios where sexo ='M' order by edad 