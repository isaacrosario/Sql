--Video 53 variables 
--declare @nombreVariable TipoDato
--set @nombreVariable = valor

use empleados
select * from  usuarios

declare @Variable_sexo varchar(20) --Declaracion de la variable
declare @Variable_edad int --Declaracion de la variable
set @Variable_sexo = 'M' --Asignacion de valor
set @Variable_edad = 18 --asignacion de valor
select * from usuarios where sexo = @Variable_sexo and edad >= @Variable_edad --Uso de la variable


--Another example

declare @sumatoria_Hombres int
declare @sumatoria_Mujeres int
	set @sumatoria_Hombres = (select SUM(edad) from usuarios where sexo = 'M')
	set @sumatoria_Mujeres = (select SUM(edad) from usuarios where sexo = 'F')
IF @sumatoria_Hombres > @sumatoria_mujeres
begin
	select 'La sumatoria de los hombres es:'
	select @sumatoria_Hombres	
	end
else

	begin
		select 'La sumatoria de las mujeres es:'
		select @sumatoria_Mujeres
	end








