#Procedimiento para insertar una nueva oficina:
use jardin;
delimiter $$
drop procedure if exists eje1;$$
create procedure eje1 (in cod varchar(10),in ciu varchar(30),pa varchar(50),reg varchar(50)
						, cp varchar(10), tel varchar(20), dir1  varchar(50),dir2 varchar(50))
begin

		insert into Oficinas (CodigoOficina,Ciudad,Pais,Region,CodigoPostal,Telefono,LineaDireccion1,
        LineaDireccion2) values (cod,ciu,pa,reg,cp,tel,dir1,dir2);
	
end$$