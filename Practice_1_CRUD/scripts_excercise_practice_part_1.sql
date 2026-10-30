/*Parte 1: INSERT*/
/*Ejercicio 1*/
use tienda_practica;
insert into clientes (nombre,ciudad,correo)
values('Santiago Herrera', 'Barranquilla', 'santiago@email.com');

/*Ejercicio 2*/
insert into productos(nombre, precio, stock, id_categoria)
values
	('Cafetera Imusa',180000,20,3),
	('Plancha Philips',95000,35,3),
	('Ventilador Kalley',210000,18,3);
