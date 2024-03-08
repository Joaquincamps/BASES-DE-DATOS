use jardin;
#Vista para mostrar información general de los empleados:
#Esta vista mostrará 
#el código del empleado, nombre completo, extensión telefónica, correo electrónico, nombre de la oficina donde trabajan y el puesto que ocupan
drop view if exists eje1;
create view eje1 as select concat(Nombre,Apellido1,Apellido2) as NombreCompleto, Email,CodigoOficina,Puesto
						from Empleados;
select * from  eje1;