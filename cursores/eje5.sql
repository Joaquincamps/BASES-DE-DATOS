#Supongamos que deseas crear un procedimiento almacenado que recorra 
#todos los pedidos y para cada pedido, muestre su código, la fecha de pedido y la cantidad total de productos incluidos en ese pedido.   
delimiter $$
drop procedure if exists eje1;$$
create procedure eje1()
begin
	declare cod int;
    declare fecha date;
    declare cantidad int;
    declare done int default 0;
    declare cur1 cursor for select
    p.CodigoPedido,FechaPedido,count(*) as cantidad
    from DetallePedidos dp,Pedidos p
    where dp.CodigoPedido=p.CodigoPedido
    group by p.CodigoPedido;
    declare continue handler for not found set done=1;
    open cur1;
    my_loop:loop
    fetch cur1 into cod,fecha,cantidad;
		if done =1 then
        leave my_loop;
        end if;
        select cod,fecha,cantidad;
	end loop my_loop;
    close cur1;
end$$
call eje1()