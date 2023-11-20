CREATE DEFINER=`root`@`localhost` FUNCTION `obtenerPrecio`(idProd int) RETURNS double
BEGIN
	declare pre double;
	select precio from Producto where idProducto = idProd into pre;
	return pre;
END