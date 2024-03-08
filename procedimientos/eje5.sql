#Procedimiento para Registrar un Nuevo Pago:
#Este procedimiento registra un nuevo pago
 #realizado por un cliente, actualizando la tabla de Pagos con la información proporcionada.
 delimiter $$
drop procedure if exists eje5;$$
create procedure eje5(in codC int(11), in pago varchar(40), in id varchar(50), in fecha date ,in cant decimal (15,2))
begin
	declare cli int;
    declare mensaje varchar(90);
    select count(*) into cli from Pagos;
    if cli > 0 then 
    insert into Pagos (CodigoCliente,FormaPago,IDTransaccion,FechaPago,Cantidad) values (codC , pago,id ,  fecha ,cant);
	set mensaje ='Pago realizado';
    else 
		set mensaje ='cliente ya existe';
	end if;
end$$