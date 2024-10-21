-- Consultas 

select * from clientes where nombre = 'Juan Perez';

select * from productos where precio != 100;

select * from pedidos where Total > 500;

select * from productos where Stock < 20;

select * from clientes where Fecha_registro < '2024-01-01';

select * from productos where precio between 100 and 500;

select * from pedidos where total not between 200 and 1000;

select * from clientes where ID_cliente in (1, 3, 5);

SELECT * FROM Clientes WHERE ID_Cliente NOT IN (2, 4);
