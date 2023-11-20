CREATE DEFINER=`root`@`localhost` FUNCTION `obtenerNombre`(idProd int) RETURNS varchar(45) CHARSET utf8mb4
BEGIN
	declare nom varchar(45);
	select nombre from Producto where idProducto = idProd  into nom;
	return nom;
END