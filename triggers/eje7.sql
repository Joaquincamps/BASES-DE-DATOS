#Trigger para calcular el total de un pedido y actualizar el límite de crédito del cliente:

delimiter $$
drop trigger if exists eje1;$$
create trigger eje1 after insert  
on Pedidos
for each row
begin
	declare total decimal (15,2);
	select sum(Cantidad * PrecioUnidad) into total from DetallesPedidos where CodigoPedido=new.CodigoPedido;
    update Clientes set LimiteCredito = LimiteCredito - total where CodigoCliente = new.CodigoCliente;
end$$