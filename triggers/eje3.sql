#Restricción de eliminación de oficinas vinculadas a empleados:
use jardin;
delimiter $$
drop trigger if exists eje2;$$
create trigger eje2 before delete
on Empleados for each row
begin
	declare contador int;
	select count(*) into contador from Empleados where CodigoOficina=old.CodigoOficina;
    if contador >1 then 
		delete from Empleados where CodigoOficina=old.CodigoOficina;
	end if;
end$$