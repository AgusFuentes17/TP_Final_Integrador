CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_producto_sp`(IN categ varchar(45))
BEGIN
	select * from producto where categoria=categ;
END