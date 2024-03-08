use jardin;
delimiter $$
drop function if exists DameLinea;$$
create function DameLinea (codPe int, codPr int)
returns int
begin
	declare linea int;
    select NumeroLinea into linea
    from DetallePedidos
    where CodigoPedido=codPe and CodigoProducto=codPr;
    if linea = 0 then 
		return linea;
	else 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='El producto no figura en el pedido';
	end if;
end$$