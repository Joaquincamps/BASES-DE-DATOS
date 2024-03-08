#Función: Implementa una función llamada 
#obtenerPagosTotales que calcule los pagos totales realizados por un cliente específico.
delimiter $$
drop function if exists eje7;$$
create function eje7 (cod int(11))
returns decimal (15,2)
begin 
	declare total int;
	select sum(Cantidad) into total from Pagos where CodigoCliente =cod;
    return total;
end$$