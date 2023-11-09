CREATE DEFINER=`root`@`localhost` PROCEDURE `ver_total_vendido_sp`(IN fechaI date, IN fechaF date)
BEGIN
	select sum(producto.precio) from venta where fechaVenta >= fechaI && fechaVenta <= fechaF ;
END