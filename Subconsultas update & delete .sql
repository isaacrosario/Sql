use empleados

select * from usuarios


update usuarios set tipo_usuario = 'Registrado' where edad = any (select id_usuario from usuarios where edad < 24)

select id_usuario from usuarios where edad > 24

select * from usuarios order by edad

delete usuarios where tipo_usuario = any (select tipo_usuario where edad > 24)

delete usuarios where tipo_usuario = any (select tipo_usuario where tipo_usuario = 'Root')
