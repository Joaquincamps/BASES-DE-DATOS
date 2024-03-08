#"Cuando se inserta un nuevo cliente en la tabla "Clientes", un trigger debe activarse para
# verificar si el límite de crédito asignado al cliente excede cierto umbral predefinido. 
# Si el límite de crédito excede este umbral, se debe enviar una notificación al departamento financiero para su revisión."

delimiter $$
drop trigger if exists eje1;$$
create trigger eje1 before insert 
on Clientes 
for each row
begin
	declare lim decimal(15,2) default 90000.00;
    if NEW.LimiteCredito > lim then
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Se debe notificar al departamento';
    end if;
end$$