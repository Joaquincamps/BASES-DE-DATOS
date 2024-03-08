#Actualizar el stock de productos después de insertar un nuevo detalle de pedido:
use jardin;
delimiter $$
drop trigger if exists eje1;$$
create trigger eje1 after insert  
on DetallePedidos
for each row
begin
	update Productos set CantidadEnStock = CantidadEnStock - new.cantidad where CodigoProducto=new.CodigoProducto;
end$$