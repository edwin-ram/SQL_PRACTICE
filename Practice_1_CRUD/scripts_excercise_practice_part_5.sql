/*Parte 5: GROUP BY y HAVING*/
use tienda_practica;

/*Ejercicio 1*/
select id_categoria, count(*) as total_por_categoria
from productos
group by id_categoria;

/*Ejercicio 2*/
select id_categoria, avg(precio) as promedio_precios
from productos
group by id_categoria;

/*Ejercicio 3*/
select id_categoria, count(*) as total_productos
from productos
group by id_categoria
having count(*) > 2;