CREATE DEFINER=`root`@`localhost` TRIGGER `desc_venta_after_insert` AFTER INSERT ON `descripcionventa` FOR EACH ROW Begin
	declare fec date;
    set fec = curdate();
	insert into HistorialProducto (fechaHistorial, idVenta, idProducto, cantidad) values(curdate(), new.idVenta, new.idProducto, new.cantidad);
end