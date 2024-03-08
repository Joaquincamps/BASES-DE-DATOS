#"Crear un cursor que recorra la tabla de clientes y muestre el 
#nombre completo del contacto concatenando los campos 'NombreContacto' y 'ApellidoContacto', 
#así como el país y el límite de crédito de cada cliente."
delimiter $$
drop procedure if exists eje2;$$
create procedure eje2()
begin
	declare NombreCompleto varchar(100);
    declare Country varchar(100);
    declare Lim decimal(15,2);
    declare cur1 cursor for select concat (NombreContacto,ApellidoContacto) 
    as NombreCompleto, Pais,LimiteCredito from Clientes;
    open cur1;
		loop
        fetch cur1 into NombreCompleto,Country,Lim;
        select NombreCompleto,Country,Lim;
        end loop;
    close cur1;
end$$
call eje2();
