#Procedimiento: Escribe un procedimiento llamado 
#actualizarEstadoPago que actualice el estado de un pago basado en la fecha de pago.
delimiter $$
drop procedure if exists eje7;$$
create procedure eje7(in fech date, in estado varchar(40))
begin
	update Pagos set FormaPago = estado where FechaPago = date;
end$$