-- Crear la base de datos 
create database TiendaOnline;

-- Usar la base de datos
use TiendaOnline;

-- Crear la tabla Direcciones ( Relacion 1:1 con Clientes)
create table Direcciones (
ID_direccion int auto_increment primary key,   
Calle varchar(255) not null,
Ciudad varchar(100) not null,
Estado varchar(100) not null,
Codigo_postal varchar(10) not null,
Pais varchar(100) not null
);

-- Crear la tabla Clientes (con relacion 1:1 con Direciones)
create table Clientes (
ID_cliente int auto_increment primary key,
Nombre varchar (100) not null,
Email varchar (100) not null unique,
Telefono varchar(15),
Fecha_registro date,
ID_direccion int unique, 
foreign key (ID_direccion) references Direcciones(ID_direccion) 
);

-- Crear la tabla Productos 
create table Productos (
ID_Producto int auto_increment primary key,
Nombre varchar (100) not null,
Descripcion text,
Precio decimal(10, 2),
Stock int not null,
Fecha_Agregado date
);

-- Crear la tabla Pedidos ( con relacion 1:N con Clientes)
create table Pedidos (
ID_Pedido int auto_increment primary key,
ID_cliente int,
Fecha_pedido date not null,
Estado varchar(50),
Total decimal(10, 2),
foreign key (ID_cliente) references Clientes(ID_cliente) 
);

-- Crear la tabla intermedia Pedidos_productos (relacion N:M entre pedidos y productos)
create table Pedidos_Productos (
ID_Pedido int,
ID_Producto int,
Cantdad int not null,
Precio_unitario decimal(10, 2),
primary key (ID_Pedido, ID_producto),
foreign key (ID_Pedido) references Pedidos(ID_Pedido), 
foreign key (ID_Producto) references Productos(ID_Producto) 
);