/*Parte 3: SELECT basico y filtros WHERE*/
use tienda_practica;

/*Ejercicio 1*/
select * from clientes;

/*Ejercicio 2*/
select nombre, precio from productos;

/*Ejercicio 3*/
select * from productos
where precio > 300000;

/*Ejercicio 4*/
select * from clientes
where ciudad = 'Medellín' or ciudad = 'Bogotá';