/*Estructura CASE*/

--Case
	--when then
--end
--mostrar contenido	



select id_usuario, nombre, edad =
case edad 
when 17  then 'Menor'
end
/* end por defecto retorna al null */
from usuarios



 --another exmple

select id_usuario, nombre, edad = /* Campo a mostrar*/
case edad /* Campo a evaluar */
when 17  then 'Menor'   
when 18  then 'Mayor 18'
when 19  then 'Mayor 19'
when 20  then 'Mayor 20'
when 21  then 'Mayor 21 '
when 22  then 'Mayor 22'
when 23  then 'Mayor 23'
when 24  then 'Mayor 24'
when 25  then 'Mayor 25'

end
from usuarios -- Tabla de donde provienen los datos







