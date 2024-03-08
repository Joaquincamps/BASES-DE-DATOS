#Trigger para actualizar la cantidad en stock de un producto después de realizar un pedido:
use jardin;
delimiter $$
drop trigger if exists eje1;$$
create trigger eje1 after insert 
on DetallePedidos 
for each row
begin
	update Productos set CantidadEnStock =CantidadEnStock - new.Cantidad where CodigoProducto=new.CodigoProducto;
end$$