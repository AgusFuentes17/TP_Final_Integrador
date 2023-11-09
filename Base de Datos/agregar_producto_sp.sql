CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_producto_sp`(Nombre varchar(40), Cantidad double, Precio double, Categoria varchar(30))
BEGIN
insert into producto(nombre, cantidad, precio, categoria) values (Nombre, Cantidad, Precio, Categoria);
END