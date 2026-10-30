/*Parte 6: JOIN*/
use tienda_practica;

/*Ejercicio 1*/
select productos.nombre, categorias.nombre
from productos
inner join categorias on productos.id_categoria = categorias.id;

/*Ejercicio 2*/
select c.nombre, p.fecha, p.total /*aqui se colocan las tablas con letras (c - p) que mas adelante se le delcaran el alias*/
from clientes c /*esta linea es igual a decir "clientes as c" igua para el ejemplo de abajo (p) */
inner join pedidos p on p.id_cliente = c.id;

/*Ejercicio 3*/
select 
	c.nombre as cliente, 
	pr.nombre as producto, 
	pe.total as total_pedido
from clientes c
inner join pedidos pe on pe.id_cliente = c.id
inner join productos pr on pr.id = pe.id_producto;