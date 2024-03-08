#Dividir la suma total por el número de productos:
delimiter $$
drop function if exists eje5;$$
create function eje5 ()
returns decimal(15,2)
begin
	declare contador int;
    declare suma decimal(15,2);
    declare total decimal (15,2);
    select count(*) into contador
    from Productos;
    select sum(PrecioVenta) into suma
    from Productos;
    set total= suma / contador;
	return total;
end$$

select eje4();