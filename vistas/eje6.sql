#Vista de Productos y Proveedores:
#Crea una vista que presente los detalles 
#de los productos junto con la información de
 #los proveedores que suministran cada producto, incluyendo el nombre del proveedor y la región.
drop view if exists eje6;
create view eje6 as
select CodigoProducto,Nombre,Proveedor
from Productos p
 where Proveedor in (select Proveedor 
	from Productos pr 
    where pr.CodigoProducto =p.CodigoProducto);

select * from eje6;