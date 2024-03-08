 #Antes de actualizar el estado de un pedido en la tabla Pedidos, se activará un trigger
 #que verifique si el nuevo estado es válido (por ejemplo, si solo se permite cambiar de "Pendiente" a "Enviado" o "Entregado")
 delimiter $$
 drop trigger if exists eje1;$$
 create trigger eje1 before update
 on Pedidos
 for each row
 begin

    if NEW.estado != 'Enviado' or  NEW.estado != 'Entregado' then
     SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Solo se permite cambiar a enviado o entregado';
	end if;
 end$$