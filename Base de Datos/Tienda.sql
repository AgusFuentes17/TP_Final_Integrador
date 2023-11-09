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
    foreign key(idVenta) references Venta(idVenta),
    foreign key(idProducto) references Producto(idProducto)
);

drop table if exists DescripcionVenta;
create table DescripcionVenta(
	idProducto int not null,
	idVenta int not null,
    cant int not null,
    precio double not null,
    foreign key(idVenta) references Venta(idVenta),
    foreign key(idProducto) references Producto(idProducto)
);

insert into Producto(nombre, cantidad, precio, categoria)
values 	("muslo"  , 2, 5000, "carniceria"),
		("cebolla", 4, 2500, "verduleria"),
        ("coca",    6, 7000, "gaseosa"),
		("kin",     8, 6000, "agua"),
        ("churro", 12, 5000, "panaderia"),
        ("tang",   20, 2000, "jugo");