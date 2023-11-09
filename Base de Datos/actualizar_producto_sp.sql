CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_producto_sp`(id double, cant double, prec double)
BEGIN
UPDATE producto
SET cantidad = cant, precio = prec
WHERE idProducto = id;
END