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

drop table if exists Producto_Venta;
create table Producto_Venta(
	idProducto int not null,
	idVenta int not null,
    foreign key(idVenta) references Venta(idVenta),
    foreign key(idProducto) references Producto(idProducto)
);
