CREATE PROCEDURE `AgregarStock` (nomb varchar(40), cant double)
BEGIN
    UPDATE producto
    SET cantidad = cantidad + cant
    WHERE nombre = nomb;
END
