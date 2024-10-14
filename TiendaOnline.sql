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