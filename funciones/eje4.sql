#Contar el número de productos
delimiter $$
drop function if exists eje4;$$
create function eje4 ()
returns int
begin
	declare contador int;
    select count(*) into contador 
    from Productos;
    return contador;
end$$

select eje4() 