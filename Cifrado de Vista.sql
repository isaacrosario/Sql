sp_helptext Usuarios_V  /* para saber de donde vino la vista */


create view Vista_E with encryption as
select * from usuarios

select * from Vista_E
sp_helptext Vista_E