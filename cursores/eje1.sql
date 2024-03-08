#Crear un cursor que recorra la tabla de empleados y
#muestre el nombre completo de cada empleado 
#concatenando los campos 'Nombre', 'Apellido1' y 'Apellido2', 
#así como su código de oficina y su puesto de trabajo.
use jardin;
delimiter $$
drop procedure if exists eje1;$$
create procedure eje1()
begin
	declare a varchar(100);
    declare b varchar(100);
    declare c varchar(100);
	declare cur1 cursor for 
    
    SELECT CONCAT(Nombre, ' ', Apellido1, ' ', Apellido2) AS NombreCompleto, CodigoOficina,Puesto 
    FROM Empleados;

	open cur1;
    loop 
    fetch cur1 into a,b,c;
    select a,b,c;
    end loop;
    close cur1;
end$$

call eje1();
