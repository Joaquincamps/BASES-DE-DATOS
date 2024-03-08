#Procedimiento para buscar empleados por nombre:
delimiter $$
drop procedure if exists eje2;$$
create procedure eje2 (in nom varchar(50))
begin
	select * from Empleados where Nombre=nom;
end$$
call eje2 ('Felipe');