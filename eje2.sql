delimiter $$
drop trigger if exists eje2;$$
create trigger eje2 before update
on Empleados 
for each row
begin

	if NEW.CodigoJefe != OLD.CodigoJefe and NEW.CodigoOficina != OLD.CodigoOficina then 
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='no se puede cambiar de puesto';
    end if;
end$$