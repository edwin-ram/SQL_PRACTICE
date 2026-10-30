/*Parte 2: UPDATE*/
/*Ejercicio 1*/
use tienda_practica;

update clientes
set ciudad = 'Cali'
where id = 1;

/*Ejercicio 2*/
update productos
set precio = precio + ((precio * 10)/100)
where id_categoria = 1;

/*Ejercicio 3*/
update productos
set precio = 680000, stock = 0
where id = 6;

select * from clientes;
select * from categorias;
select * from productos where id_categoria = 1;
select * from productos where id = 6;
select * from productos;