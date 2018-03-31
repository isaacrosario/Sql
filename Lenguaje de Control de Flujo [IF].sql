use empleados
select * from usuarios

if exists (select * from usuarios where edad <= 8) -- Condicional
select * from usuarios where edad <= 8
else --Si no cumplió

select 'No hay menores de 8 años' --Sentencia resultado

--another example

if exists (select * from usuarios where edad <= 18)
select * from usuarios where edad <= 18
else 

select 'No hay menores de 8 años' 

select * from usuarios