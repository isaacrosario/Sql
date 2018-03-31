alter table ingreso
add estado varchar(7) not null
go

--Procedimiento para mostrar lo ingresos
alter proc spmostrar_ingreso
as
select top 100 i.idingreso, (t.apellidos+' '+t.nombre) as Trabajador,
p.razon_social as Proveedor, i.fecha,i.tipo_comprobante,
i.serie, i.correlativo, i.estado, 
sum(d.precio_compra*d.stock_inicial) as Total
from detalle_ingreso d inner join ingreso i
on d.idingreso=i.idingreso
inner join proveedor p
on i.idproveedor=p.idproveedor
inner join trabajador t
on i.idtrabajador = t.idtrabajador
group by
i.idingreso,t.apellidos+' '+t.nombre,
p.razon_social, i.fecha,i.tipo_comprobante,
i.serie, i.correlativo, i.estado
order by i.idingreso desc
go

--Mostrar ingresos entre fechas

 create proc spbuscar_ingreso_fecha

 @textobuscar varchar(20),
 @textobuscar2 varchar(20)
 as

 select i.idingreso, (t.apellidos+' '+t.nombre) as Trabajador,
p.razon_social as Proveedor, i.fecha,i.tipo_comprobante,
i.serie, i.correlativo, i.estado, 
sum(d.precio_compra*d.stock_inicial) as Total
from detalle_ingreso d inner join ingreso i
on d.idingreso=i.idingreso
inner join proveedor p
on i.idproveedor=p.idproveedor
inner join trabajador t
on i.idtrabajador = t.idtrabajador
group by
i.idingreso,t.apellidos+' '+t.nombre,
p.razon_social, i.fecha,i.tipo_comprobante,
i.serie, i.correlativo, i.estado
having i.fecha >= @textobuscar and i.fecha<=@textobuscar2
go
--Procedimiento para insertar ingresos

create proc spinsertar_ingresos
@idingreso int=null output,
@idtrabajador int,
@idproveedor int,
@fecha date,
@tipo_comprobante varchar(20),
@serie varchar(4),
@correlativo varchar(7),
@igv decimal(4,2),
@estado varchar(7)
as
insert into ingreso (idtrabajador, idproveedor, fecha, tipo_comprobante, serie, correlativo,igv, estado)
values(@idtrabajador, @idproveedor, @fecha, @tipo_comprobante, @serie, @correlativo, @igv, @estado)
--Obtener el codigo autogenerado
SET @idingreso=@@IDENTITY
go

--Procedimiento para anular ingreso
create proc spanular_ingreso
@idingreso int
as
update ingreso set estado='ANULADO'
where idingreso=@idingreso
go

--Procedimiento para insertar los detalles de ingresos
create proc spinsertar_detalle_ingreso
@iddetalle_ingreso int output,
@idingreso int,
@idarticulos int,
@precio_compra money,
@precio_venta money,
@stock_inicial int,
@stock_actual int,
@fecha_produccion date,
@fecha_vencimiento date
as
insert into detalle_ingreso (iddetalle_ingreso,idingreso,precio_compra,precio_venta,stock_inicial, stock_actual, fecha_produccion, fecha_vencimiento)
values (@iddetalle_ingreso, @idingreso, @precio_compra, @precio_venta, @stock_inicial, @stock_actual, @fecha_produccion, @fecha_vencimiento)
go
--Mostrar Detalles de ingresos
create proc spmostrar_detalle_ingreso
@textobuscar int
as
select d.idarticulo,a.nombre as Articulo, d.precio_compra,
d.precio_venta,d.stock_inicial, d.fecha_produccion,
d.fecha_vencimiento,(d.stock_incial*d.precio_compra)as Subtotal
from mostra_detalle_ingreso d inner join articulo a
on d.idarticulo=a.idarticulo
where d.idingreso=@textobuscar
go
