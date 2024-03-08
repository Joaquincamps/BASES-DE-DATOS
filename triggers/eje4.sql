#Registro de pagos realizados por clientes:
#Este trigger registrará automáticamente 
#los pagos realizados por los clientes en la tabla Pagos después de insertar un nuevo pedido
use jardin;
delimiter $$
drop trigger if exists eje3;$$
create trigger eje3 after insert
on Pedidos
for each row 
begin
	insert into Pagos (CodigoCliente,FormaPago,IDTransaccion,FechaPago,Cantidad)
		values (new.CodigoCliente, new.FormaPago, new.IDTransaccion,new.FechaPago,new.Cantidad);
end$$