#Función para obtener el promedio de precios de venta de productos en una gama:
use jardin;
delimiter $$
drop function if exists eje3;$$
create function eje3(gam varchar(50))
returns decimal(15,2)
begin
	declare total decimal(15,2);
    declare contador int;
    declare promedio int;
    select sum(PrecioVenta) into total 
    from Productos 
    where Gama=gam;
    select count(*) into contador
    from Productos 
    where Gama=gam;
    
    set promedio=total/contador;
    return promedio;
end$$

select eje3('Aromáticas')