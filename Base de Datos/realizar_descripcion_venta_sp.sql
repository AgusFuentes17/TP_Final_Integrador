CREATE DEFINER=`root`@`localhost` PROCEDURE `realizar_descripcion_venta_sp`(IN idV int, IN idP int, IN cant int, IN pre double)
BEGIN
declare mensaje varchar(255);

if (cantidad - new.cantidad > 0) then
	insert into DescripcionVenta (idVenta, idProducto, cantidad, precio) values(idV, idP, cant, pre);
    update producto set cantidad = producto.cantidad - new.cantidad where idProducto = idP;
else
	set mensaje = 'No Hay Stock';
end if;
END