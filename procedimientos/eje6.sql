#Procedimiento: Escribe un procedimiento
 #llamado actualizarStock que actualice la columna CantidadEnStock en la tabla Productos después de que se realice una compra.
 use jardin;
 delimiter $$
 drop procedure if exists eje6;$$
 create procedure eje6(in cod varchar(15) , in cant smallint (6))
 begin
	declare prod int;
    declare mensaje varchar(90);
    select count(*) into prod from Productos;
    if prod >0 then
    update Productos set CantidadEnStock= cant where CodigoProducto=cod;
    set mensaje='se actualizara';
    else
	set mensaje ='ya existe';
    end if;
 end;$$