#Procedimiento para calcular el total de ventas por cliente:
delimiter $$ 
drop procedure if exists eje3;$$
create procedure eje3()
begin
	select c.CodigoCliente ,sum( cantidad* PrecioUnidad) as total
    from Clientes c, Pedidos p, DetallePedidos dp
    where c.CodigoCliente=p.CodigoCliente and  p.CodigoPedido=dp.CodigoPedido
    group by CodigoCliente;
end$$


call eje3();