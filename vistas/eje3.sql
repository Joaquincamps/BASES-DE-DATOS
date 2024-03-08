#Vista para mostrar detalles de pedidos con información de productos:
#Esta vista proporcionará información detallada sobre los pedidos, 
#incluyendo el código del pedido, fecha del pedido, estado y comentarios, 
#junto con detalles de los productos incluidos en cada pedido, 
#como código del producto, nombre, cantidad y precio unitario
drop view if exists eje3;
create view eje3 as 
select p.CodigoPedido, FechaPedido,Estado,Comentarios, CodigoProducto,Cantidad,PrecioUnidad
from Pedidos p, DetallePedidos dp
where p.CodigoPedido=dp.CodigoPedido;

select * from eje3;