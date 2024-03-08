#Cada vez que se inserte un nuevo registro en la tabla Pedidos, 
#se activará un trigger que actualice la cantidad de stock de los productos correspondientes en la tabla Productos
use jardin;
delimiter $$
drop trigger if exists eje1;$$
create trigger eje1 after insert 
on DetallePedidos
for each row 
begin
	update Productos set CantidadEnStock = NEW.cantidad where CodigoProducto=NEW.CodigoProducto;
end$$
