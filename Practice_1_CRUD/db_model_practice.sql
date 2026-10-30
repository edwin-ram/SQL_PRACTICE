CREATE DATABASE IF NOT EXISTS tienda_practica;
USE tienda_practica;

CREATE TABLE categorias (
    id      INT          NOT NULL AUTO_INCREMENT,
    nombre  VARCHAR(80)  NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE productos (
    id           INT           NOT NULL AUTO_INCREMENT,
    nombre       VARCHAR(100)  NOT NULL,
    precio       DECIMAL(10,2) NOT NULL,
    stock        INT           DEFAULT 0,
    id_categoria INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

CREATE TABLE clientes (
    id      INT          NOT NULL AUTO_INCREMENT,
    nombre  VARCHAR(100) NOT NULL,
    ciudad  VARCHAR(80),
    correo  VARCHAR(150),
    PRIMARY KEY (id)
);

CREATE TABLE pedidos (
    id          INT           NOT NULL AUTO_INCREMENT,
    fecha       DATE          NOT NULL,
    total       DECIMAL(10,2),
    id_cliente  INT,
    id_producto INT,
    cantidad    INT           DEFAULT 1,
    PRIMARY KEY (id),
    FOREIGN KEY (id_cliente)  REFERENCES clientes(id),
    FOREIGN KEY (id_producto) REFERENCES productos(id)
);

-- Datos de prueba
INSERT INTO categorias (nombre) VALUES
('Electrónica'), ('Ropa'), ('Hogar'), ('Deportes');

INSERT INTO productos (nombre, precio, stock, id_categoria) VALUES
('Laptop Lenovo',   2800000, 10, 1),
('Audífonos Sony',   350000, 25, 1),
('Camiseta Nike',     80000, 50, 2),
('Pantalón Levi',    150000, 30, 2),
('Licuadora Oster',  220000, 15, 3),
('Silla Gamer',      750000, 8,  4),
('Tenis Adidas',     320000,  20, 4),
('Tablet Samsung',  1200000, 12, 1);

INSERT INTO clientes (nombre, ciudad, correo) VALUES
('Juan Pérez',    'Medellín',  'juan@email.com'),
('María López',   'Bogotá',    'maria@email.com'),
('Carlos Gómez',  'Cali',      'carlos@email.com'),
('Ana Ramírez',   'Medellín',  'ana@email.com'),
('Pedro Suárez',  'Bogotá',    'pedro@email.com'),
('Laura Torres',  'Cartagena', 'laura@email.com');

INSERT INTO pedidos (fecha, total, id_cliente, id_producto, cantidad) VALUES
('2024-01-10', 2800000, 1, 1, 1),
('2024-01-15',  350000, 2, 2, 1),
('2024-02-01',  160000, 3, 3, 2),
('2024-02-14',  750000, 4, 6, 1),
('2024-02-20', 1200000, 1, 8, 1),
('2024-03-05',  320000, 5, 7, 1),
('2024-03-10',  440000, 6, 2, 2),
('2024-03-22',  220000, 2, 5, 1),
('2024-04-01', 2800000, 3, 1, 1),
('2024-04-15',  150000, 4, 4, 1);