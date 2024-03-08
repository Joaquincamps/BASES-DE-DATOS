create table tablaHistorica (
	ccliente int primary key,
    ncliente varchar(50),
    tlf varchar(50),
    ciudad varchar(50),
    fecha_baja date
);
delimiter $$
drop trigger if exists eje4;$$
create trigger eje4 after delete 
on Clientes
for each row
begin
	insert into tablaHistorica (ccliente,ncliente,tlf,ciudad,fecha_baja) 
    values (OLD.CodigoCliente,OLD.NombreCliente,OLD.Telefono,OLD.Ciudad,now());
end$$