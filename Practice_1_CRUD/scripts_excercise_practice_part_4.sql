/*Parte 4: ORDER BY, LIMIT y agregaciones*/
use tienda_practica;

/*Ejercicio 1*/
select * from productos
order by precio desc;

/*Ejercicio 2*/
select * from clientes
order by nombre
limit 3;

/*Ejercicio 3*/
select count(*) as total_productos from productos;

/*Ejercicio 4*/
select
	avg(precio) as precio_promedio,
	max(precio) as precio_mas_alto,
	min(precio) as precio_mas_bajo
from productos;

