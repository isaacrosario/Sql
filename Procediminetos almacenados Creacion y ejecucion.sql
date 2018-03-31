--Video 55 Procedimientos Almacenados [Creacion y ejecucion]
--Create procedure NombreProcedimiento as
--Sentencia

create procedure SoloMujeres as -- Creacion del procedimiento
	select nombre,edad,sexo from usuarios where sexo ='F' --Sentencia del procedimiento

		exec SoloMujeres-- Ejecucion del proceso
				drop proc SoloMujeres




-- Another example


	create procedure InsertarChica as --Creacion del procedimiento
		insert into InsertarChica values('Paulina','Pau','MDZ',20,'F')

			exec InsertarChica
			drop proc InsertarChica

			select * from usuarios


			/* Nota: los procedimientos son como los bucles */
