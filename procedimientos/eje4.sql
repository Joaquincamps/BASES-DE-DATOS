#Procedimiento para generar un reporte de productos en stock bajo:
delimiter $$
drop procedure if exists eje4;$$
create procedure eje4()
begin
	select CodigoProducto, CantidadEnStock
    from Productos 
    where CantidadEnStock <=20;
end;$$

call eje4();