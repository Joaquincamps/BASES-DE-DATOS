#Supongamos que deseas crear un procedimiento almacenado que recorra todos 
#los productos y para cada producto, muestre su nombre, la cantidad vendida hasta el momento y el precio total de todas las ventas
delimiter $$
drop procedure if exists eje1;$$
create procedure eje1()
begin
	declare nom varchar(122);
    declare cant int;
    declare suma decimal(15,2);
    declare done int default 0;
    declare cur1 cursor for 
		select Nombre,sum(Cantidad) as cant ,sum(PrecioUnidad*Cantidad) as suma
        from DetallePedidos dp, Productos p
        where dp.CodigoProducto=p.CodigoProducto
        group by Nombre;
	declare continue handler for not found set done =1;
    open cur1;
    my_loop:loop
		fetch cur1 into nom,cant,suma;
        if done =1 then
        leave my_loop;
        end if;
        select nom,cant,suma;
        end loop my_loop;
	close cur1;
end$$
call eje1();