use empleados
select * from usuarios

if exists (select * from usuarios where edad <= 8) -- Condicional
select * from usuarios where edad <= 8
else --Si no cumpli�

select 'No hay menores de 8 a�os' --Sentencia resultado

--another example

if exists (select * from usuarios where edad <= 18)
select * from usuarios where edad <= 18
else 

select 'No hay menores de 8 a�os' 

select * from usuarios