use jardin;
delimiter $$
drop procedure if exists PedidosPendientes;$$
create procedure PedidosPendientes()
begin
		 declare cod int;
         declare nom varchar(50);
         declare tel varchar(15);
         declare pendientes int;
         declare done int default 0;
         declare cur1 cursor for select 
         c.CodigoCliente,NombreCliente,Telefono, count(*) as pendientes
         from Clientes c, Pedidos p
         where c.CodigoCliente=p.CodigoCliente and Estado='Pendiente'
		 group by c.CodigoCliente;
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
         open cur1;
			my_loop: loop
            fetch cur1 into cod,nom,tel,pendientes;
            if done =1 then
			leave my_loop;
            end if;
            select cod,nom,tel,pendientes;
            end loop my_loop;
		close cur1;
end$$

call PedidosPendientes();
