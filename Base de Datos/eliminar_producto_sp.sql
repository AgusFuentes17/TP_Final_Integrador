CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_producto_sp`(Nombre varchar(40))
BEGIN
DELETE FROM producto WHERE nombre=Nombre;
END