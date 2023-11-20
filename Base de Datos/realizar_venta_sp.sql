CREATE DEFINER=`root`@`localhost` PROCEDURE `realizar_venta_sp`(IN fec date)
BEGIN
	insert into Venta (fechaVenta) values(fec);
END