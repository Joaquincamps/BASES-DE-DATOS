#Vista para mostrar detalles de pedidos con información de clientes:
#Esta vista mostrará información detallada sobre los pedidos, incluyendo el código del pedido, 
#fecha del pedido, estado, comentarios y datos del cliente correspondiente,
# como nombre del cliente, nombre de contacto, teléfono y dirección
drop view if exists eje2;
create view eje2 as select CodigoPedido,FechaPedido,Estado,Comentarios,NombreCliente,NombreContacto,Telefono,LineaDireccion1
					from Clientes c, Pedidos p
					where c.CodigoCliente=p.CodigoCliente;
select * from eje2;