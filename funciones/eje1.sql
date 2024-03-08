#Obtener la lista de productos más vendidos:
USE jardin;

DELIMITER $$
DROP FUNCTION IF EXISTS eje1;
$$
CREATE FUNCTION eje1()
RETURNS VARCHAR(50)
BEGIN
    DECLARE nom VARCHAR(50);
    SELECT Nombre INTO nom FROM Empleados WHERE Nombre LIKE 'L%' limit 1;
    RETURN nom;
END$$
DELIMITER ;

SELECT eje1();
