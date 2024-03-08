#Vista de Pedidos y Clientes:
#Genera una vista que combine información detallada sobre los pedidos realizados, 
#incluyendo la fecha del pedido y el estado, junto con los detalles de los clientes
#que realizaron esos pedidos, incluyendo su información de contacto.
drop view if exists eje5;
create view eje5 as 
select c.CodigoCliente,NombreCliente,Telefono,FechaPedido, Estado
from Pedidos p, Clientes c
where p.CodigoCliente=c.CodigoCliente;

select * from eje5;