drop database if exists Tienda;
create database Tienda;

use Tienda;

drop table if exists Producto;
create table Producto(
	idProducto int primary key auto_increment not null,
	nombre varchar(45) not null,
	cantidad int not null,
	precio double not null,
	categoria varchar(45) not null
);

drop table if exists Venta;
create table Venta(
	idVenta int primary key auto_increment not null,
	fechaVenta date not null
);

drop table if exists HistorialProducto;
create table HistorialProducto(
	idHistorial int primary key auto_increment not null,
	fechaHistorial date not null,
	idVenta int not null,
	idProducto int not null,
    cantidad int not null,
    foreign key(idVenta) references Venta(idVenta),
    foreign key(idProducto) references Producto(idProducto)
);

drop table if exists DescripcionVenta;
create table DescripcionVenta(
	idProducto int not null,
	idVenta int not null,
    cantidad int not null,
    precio double not null,
    foreign key(idVenta) references Venta(idVenta),
    foreign key(idProducto) references Producto(idProducto)
);

<<<<<<< HEAD
insert into Producto(nombre, cantidad, precio, categoria)
=======
insert into producto(nombre, cantidad, precio, categoria)
>>>>>>> dellano
values 	("muslo"  , 2, 5000, "carniceria"),
		("cebolla", 4, 2500, "verduleria"),
        ("coca",    6, 7000, "gaseosa"),
		("kin",     8, 6000, "agua"),
        ("churro", 12, 5000, "panaderia"),
        ("tang",   20, 2000, "jugo");
<<<<<<< HEAD
        
delimiter $$
CREATE PROCEDURE `agregar_producto_sp` (IN nom varchar(45), IN categ varchar(45), IN pre double, IN cant int)
BEGIN
	insert into Producto (nombre, categoria, precio, cantidad) values(nom, categ, pre, cant);
END$$
delimiter ;

delimiter $$
CREATE PROCEDURE `buscar_producto_sp` (IN categ varchar(45))
BEGIN
	select (nombre, categoria, precio, cantidad) from producto where categoria=categ;
END$$
delimiter ;

delimiter $$
CREATE PROCEDURE `eliminar_producto_sp` (IN idProd int)
BEGIN
	delete from producto where id = idProd; 
END$$
delimiter ;

delimiter $$
CREATE PROCEDURE `actualizar_producto_sp` (IN idProd int, IN cant int, IN pre double)
BEGIN
	UPDATE producto
    SET cantidad = cantidad + cant,
    precio = pre
    WHERE id = idProd;
END$$
delimiter ;

delimiter $$
CREATE FUNCTION verTotalVendido(fechaI date, fechaF date) RETURNS double
BEGIN
    select sum(precio) from Venta as total where fechaVenta >= fechaI and fechaVenta <= fechaF;
END$$
delimiter ;

delimiter $$
CREATE FUNCTION verMasVendido() RETURNS varchar(45)
BEGIN
	declare nombreProd varchar(45);
    declare cant int;
    select p.nombre, sum(h.cantidad) as masVendido into nombreProd, cant from HistorialProducto h inner join Producto p on h.idProducto = p.idProducto limit 1;
	return concat('El producto más vendido es: ',nombreProd,', la cantidad de ventas fueron: ',cant);
END$$
delimiter ;

delimiter $$
CREATE FUNCTION obtenerPrecio(idProd int) RETURNS double
BEGIN
	select precio from Producto as pre where id = idProd;
	return pre;
END$$
delimiter ;

delimiter $$
CREATE FUNCTION obtenerNombre(idProd int) RETURNS varchar(45)
BEGIN
	select nombre from Producto as nom where id = idProd;
	return nom;
END$$
delimiter ;

delimiter $$
CREATE PROCEDURE `realizar_venta_sp` (IN fec date)
BEGIN
	insert into Venta (fecha) values(f);
END$$
delimiter ;

delimiter $$
CREATE PROCEDURE `realizar_descripcion_venta_sp` (IN idV int, IN idP int, IN cant int, IN pre double)
BEGIN
declare mensaje varchar(255);
set mensaje = 'No Hay Stock';
if (cantidad - new.cantidad > 0) then
	insert into DescripcionVenta (idVenta, idProducto, cantidad, precio) values(idV, idP, cant, pre);
else
	signal sqlstate '45000';
    set message_text = mensaje;
end if;
END$$
delimiter ;

delimiter $$
CREATE DEFINER = CURRENT_USER TRIGGER Tienda.desc_venta_after_insert after insert ON DescripcionVenta FOR EACH ROW
Begin
	declare fec date;
    set fec = curdate();
	insert into HistorialProducto (fecha, idVenta, idProducto, cantidad) values(fec, new.idVenta, new.idProducto, new.cantidad);
end$$
delimiter ;
=======

set global log_bin_trust_function_creators = 1;
>>>>>>> dellano
