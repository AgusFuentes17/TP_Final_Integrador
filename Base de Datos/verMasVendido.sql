CREATE DEFINER=`root`@`localhost` FUNCTION `verMasVendido`() RETURNS varchar(100) CHARSET utf8mb4
BEGIN
	declare nombreProd varchar(45);
    declare cant int;
    declare prod varchar(100);
    select p.nombre, sum(h.cantidad) as masVendido into nombreProd, cant from HistorialProducto h inner join Producto p on h.idProducto = p.idProducto group by nombreProd limit 1;
	select concat('El producto más vendido es: ',nombreProd,', la cantidad de ventas fueron: ',cant) into prod;
    return prod;
END