/*
identity?

por defecto el identity comienza en 1 y su incremento es de 1

no es permitido la introduccion del campo
no permite la modificacion
permite la repeticion 
unicamente permite que un campo de la tabla tenga la propiedad 
identity toma el ultimo valor del ultimo registro
se puede activar la opcion de insercion
*/

select * from users2


create table users2

(

id_users int identity,
names varchar(50) not null
)

create table users3

(
id_names int identity,
edad int identity 
)
select * from users2
insert into users3 values ('frank');

select * from users3

insert into users3 values ('Charlie Charson');
insert into users3 values ('Layle Chapoy');
insert into users3 values ('Fitz');
insert into users3 values ('Kyle Millar');
insert into users3 values ('David Wadell');
insert into users3 values ('Richard Brown');
insert into users2 values ('Natasha')

truncate table users3

select IDENT_SEED ('users3'); /*me muestra desde que numero inicio del identity */

select IDENT_INCR ('users3'); /*me devuelve de cuanto es el incremento  */
select * from users



create table users4

(

id_users int identity (56,3),   /* 56 es el numero inicio del identity, 3 es de cuanto fue el incremento*/
names varchar(50) not null
)

select * from users2


insert into users4 values ('Charlie Charson');
insert into users4 values ('Layle Chapoy');
insert into users4 values ('Fitz');
insert into users4 values ('Kyle Millar');
insert into users4 values ('David Wadell');
insert into users4 values ('Richard Brown');
insert into users4 values ('Natasha')

select IDENT_SEED ('users4');
select IDENT_INCR ('users4');


set identity_insert  users4 on; /* para permitir la insercion de datos en identity*/ /*off para desactivarla*/

insert into users4 (id_users,names) values (74,'neville');

select * from users4


create table bob

(
id_users int identity,
names varchar(50) not null
)

select * from bob

insert into bob values ('Natasha')
insert into bob values ('Natasha')
insert into bob values ('Natasha')
insert into bob values ('Natasha')
insert into bob values ('Natasha')
 
 
 delete bob /* delete no elimina el identity*/

 truncate table bob