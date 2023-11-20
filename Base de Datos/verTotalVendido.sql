CREATE DEFINER=`root`@`localhost` FUNCTION `verTotalVendido`(fechaI date, fechaF date) RETURNS double
BEGIN
declare total double;
    select sum(precio) from Venta where fechaVenta >= fechaI and fechaVenta <= fechaF into total;
    return total;
END