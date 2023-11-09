CREATE PROCEDURE `Filtrar` (categ varchar(30))
BEGIN
select * from producto where categoria=categ;
END
