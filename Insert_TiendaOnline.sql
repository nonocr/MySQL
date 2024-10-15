use TiendaOnline;

-- 1. Insert para la tabla direcciones 
insert into Direcciones (Calle, Ciudad, Estado, Codigo_postal, Pais)
values('Calle falsa 123', 'Ciudad X', 'Estado Y ', '12345', 'Pais Z');

insert into Direcciones (Calle, Ciudad, Estado, Codigo_postal, Pais)
values('Avenida siempre viva', 'Springfield', 'Illinois ', '54321', 'USA');

insert into Direcciones (Calle, Ciudad, Estado, Codigo_postal, Pais)
values('AV. Del sol 456', 'Madrid', 'Madrid', '28001', 'España');

insert into Direcciones (Calle, Ciudad, Estado, Codigo_postal, Pais)
values('Rua Alegria 789', 'Sao paulo', 'SP', '01000-000', 'Brasil');

insert into Direcciones (Calle, Ciudad, Estado, Codigo_postal, Pais)
values('Calle luna 12', 'Ciudad de Mexico', 'CDMX', '06700', 'Mexico');

select * from direcciones;

-- 2. Insert para la tabla clientes 
insert into Clientes (Nombre, Email, Telefono, Fecha_registro, ID_Direccion)
values('Juan Perez', 'juanperez@gmail.com', '555-1234', '2024-01-10', '1');

insert into Clientes (Nombre, Email, Telefono, Fecha_registro, ID_Direccion)
values('Maria Garcia', 'mariagarcia@gmail.com', '555-5678', '2024-01-11', '2');

insert into Clientes (Nombre, Email, Telefono, Fecha_registro, ID_Direccion)
values('Pedro Lopez', 'pedrolopez@gmail.com', '555-9012', '2024-01-12', '3');

insert into Clientes (Nombre, Email, Telefono, Fecha_registro, ID_Direccion)
values('Ana Gonzalez', 'anagonzalez@gmail.com', '555-3456', '2024-01-13', '4');

insert into Clientes (Nombre, Email, Telefono, Fecha_registro, ID_Direccion)
values('Luis Fernandez', 'luisfernandez@gmail.com', '555-7890', '2024-01-14', '5');

select * from clientes;

-- 3. Insert para la tabla productos
insert into Productos(Nombre, Descripcion, Precio, Stock, Fecha_Agregado)
values ('Laptop HP', 'Laptop HP con 16GB de RAM', 799.99, 20, '2024-01-01');

insert into Productos(Nombre, Descripcion, Precio, Stock, Fecha_Agregado)
values ('Iphone 14', 'Iphone 14 con 128GB de almacenamiento', 999.99, 30, '2024-01-02');

insert into Productos(Nombre, Descripcion, Precio, Stock, Fecha_Agregado)
values ('Samsung galaxy S21', 'Samsung Galaxy con pantalla de 6.5 pulgadas', 699.99, 15, '2024-01-03');

insert into Productos(Nombre, Descripcion, Precio, Stock, Fecha_Agregado)
values ('Televisor LG 55"', 'Televisor LG 4k 55"', 599.99, 10, '2024-01-04');

insert into Productos(Nombre, Descripcion, Precio, Stock, Fecha_Agregado)
values ('Audifonos Sony', 'Audifonos SOny Inalambricos con cancelacion de ruido', 199.99, 50, '2024-01-05');

select * from productos;

-- 4. Insert para la tabla pedidos
INSERT INTO Pedidos (ID_Cliente, Fecha_Pedido, Estado, Total)
VALUES (1, '2024-02-01', 'En proceso', 1599.98);

INSERT INTO Pedidos (ID_Cliente, Fecha_Pedido, Estado, Total)
VALUES (2, '2024-02-02', 'Enviado', 999.99);

INSERT INTO Pedidos (ID_Cliente, Fecha_Pedido, Estado, Total)
VALUES (3, '2024-02-03', 'Entregado', 1399.98);

INSERT INTO Pedidos (ID_Cliente, Fecha_Pedido, Estado, Total)
VALUES (4, '2024-02-04', 'En proceso', 599.99);

INSERT INTO Pedidos (ID_Cliente, Fecha_Pedido, Estado, Total)
VALUES (5, '2024-02-05', 'Enviado', 199.99);

select * from pedidos;

-- 5. Insert para la tabla pedidos_productos

-- Pedido 1 incluye 2 productos
INSERT INTO Pedidos_Productos (ID_Pedido, ID_Producto, Cantdad, Precio_Unitario)
VALUES (1, 1, 1, 799.99);

INSERT INTO Pedidos_Productos (ID_Pedido, ID_Producto, Cantdad, Precio_Unitario)
VALUES (1, 2, 1, 799.99);

-- Pedido 2 incluye 1 producto
INSERT INTO Pedidos_Productos (ID_Pedido, ID_Producto, Cantdad, Precio_Unitario)
VALUES (2, 2, 1, 999.99);

-- Pedido 3 incluye 2 productos
INSERT INTO Pedidos_Productos (ID_Pedido, ID_Producto, Cantdad, Precio_Unitario)
VALUES (3, 2, 1, 699.99);

INSERT INTO Pedidos_Productos (ID_Pedido, ID_Producto, Cantdad, Precio_Unitario)
VALUES (3, 3, 1, 699.99);

-- Pedido 4 incluye 1 producto
INSERT INTO Pedidos_Productos (ID_Pedido, ID_Producto, Cantdad, Precio_Unitario)
VALUES (4, 4, 1, 599.99);

-- Pedido 5 incluye 1 producto
INSERT INTO Pedidos_Productos (ID_Pedido, ID_Producto, Cantdad, Precio_Unitario)
VALUES (5, 5, 1, 199.99);

select * from pedidos_productos;