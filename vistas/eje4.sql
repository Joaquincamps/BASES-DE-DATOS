#Vista para mostrar detalles de oficinas con información de los empleados que trabajan en ellas:
#Esta vista proporcionará detalles de las oficinas, incluyendo el código de la oficina, ciudad, país y teléfono,
# junto con información de los empleados que trabajan en cada oficina, como código del empleado, nombre completo y puesto.
drop view if exists eje4;
create view eje4 as 
select e.CodigoOficina , Ciudad,Pais,Telefono,CodigoEmpleado,concat(Nombre,Apellido1,Apellido2) as NombreCompleto
from Oficinas o , Empleados e
where o.CodigoOficina=e.CodigoOficina;
select * from eje4