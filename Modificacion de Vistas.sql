use empleados



select * from copy
create view copy with encryption as select * from usuarios

alter view copy as select * from usuarios /* para desencriptar una vista */

sp_helptext copy

alter view copy as select * from usuarios where edad < 20 /* simple modificacion */
