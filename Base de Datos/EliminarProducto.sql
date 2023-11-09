CREATE PROCEDURE `EliminarProducto` (nombre1 varchar(40))
BEGIN
delete from producto where nombre=nombre1; 
END