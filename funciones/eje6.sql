#Función: Crea una función llamada calcularPrecioTotal 
#que tome CodigoProducto y Cantidad como parámetros de entrada y devuelva el precio total del producto.
delimiter $$
drop function if exists eje7;$$
create function eje7(cod varchar(15) , cant smallint(6))
returns decimal (15,2)
begin 
	declare total decimal (15,2);
    select PrecioVenta into total from Productos where CodigoProducto=cod;
    set total= total * cant;
    return total;
end$$