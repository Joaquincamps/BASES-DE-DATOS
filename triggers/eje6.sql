#Trigger para mantener actualizado el campo FechaEntrega en la tabla Pedidos:

delimiter $$
drop trigger if exists eje1;$$
create trigger eje1 before insert 
on Pedidos
for each row
begin 
	update Pedidos set FechaEntrega =now() where CodigoPedido=new.CodigoPedido;  
end$$