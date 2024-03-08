#Supongamos que deseas crear un procedimiento almacenado que recorra 
#todos los empleados y para cada empleado, muestre su nombre
# así como el nombre completo de su jefe (en caso de tener uno) y su respectivo puesto.

delimiter $$
drop procedure if exists eje1;$$
create procedure eje1()
begin
	declare nom varchar(100);
    declare jefe int;
    declare trabajo varchar(100);
    declare done int default 0;
    declare cur1 cursor for select
    Nombre,CodigoJefe,Puesto from Empleados;
    declare continue handler for not found set done=1;
    open cur1;
    my_loop: loop
    fetch cur1 into nom,jefe,trabajo;
    if done =1 then
    leave my_loop;
    end if;
    select nom,jefe,trabajo; 
    end loop my_loop;
    close cur1;
end$$
call eje1();

