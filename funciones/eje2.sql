#Obtener el nombre del empleado que realizó un pedido específico:
delimiter $$
drop function if exists eje2;$$
create function eje2(cod int(11))
returns varchar(50)
begin
	declare nom varchar(50);
	select Nombre into nom 
    from Empleados e, Clientes c, Pedidos p
    where e.CodigoEmpleado=c.CodigoEmpleadoRepVentas and c.CodigoCliente=cod limit 1;
    return nom;
end$$

select eje2(31)