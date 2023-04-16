-- CREAMOS BASE DE DATOS
CREATE DATABASE Telovendo;

-- EJECUTAMOS BASE DE DATOS
USE Telovendo;

-- CREAMOS TABLAS:
CREATE TABLE cliente (
  codigo VARCHAR(20) NOT NULL UNIQUE,
  nombres VARCHAR(255) NOT NULL,
  apellidos VARCHAR(255) NOT NULL,
  telefono BIGINT,
  direccion VARCHAR(255),
  comuna VARCHAR(100),
  correo_electronico VARCHAR(255),
  fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE producto (
  SKU VARCHAR(255) NOT NULL UNIQUE,
  nombre VARCHAR(255) NOT NULL,
  categoria VARCHAR(255),
  productor VARCHAR(255),
  cantidad_en_stock INT
);
CREATE TABLE vendedor (
  RUN VARCHAR(255) NOT NULL UNIQUE,
  nombre VARCHAR(255) NOT NULL,
  apellidos VARCHAR(255) NOT NULL,
  fecha_nacimiento DATE,
  seccion ENUM('ventas', 'marketing', 'administracion', 'jefatura') NOT NULL
);
-- B) Se agrega la columna Salario con un monto Default de 410.000
ALTER TABLE vendedor
ADD COLUMN Salario INT NOT NULL DEFAULT '410000';

-- CREACIÓN DE USUARIO Y PERMISOS
CREATE USER 'admintienda'@'localhost' IDENTIFIED BY 'admintienda';
GRANT ALL PRIVILEGES ON Telovendo.* TO 'admintienda'@'localhost';

-- TABLA PRODUCTOS INFO: 
-- IMPRESORAS
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('45647', 'Impresora EcoTank L121', 'Impresoras', 'Epson', '6')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('38706', 'Impresora EcoTank M1180', 'Impresoras', 'Epson', '30')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('21660', 'Impresosra EcoTank L805', 'Impresoras', 'Epson', '20')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('45387', 'TM-T20IIIL-001 Serial', 'Impresoras', 'Epson', '40')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('46134', 'Impresora Led Color HL-L3270CDW', 'Impresoras', 'Brother', '9')
;
-- MONITORES
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('48357', 'Monitor Gamer 27" UltraGear', 'Monitores', 'LG', '20')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('48356', 'Monitor Gamer 28" Odyssey G7', 'Monitores', 'Samsung', '5')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('48343', 'Monitor 34" Curvo, WQHD', 'Monitores', 'Samsung', '15')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('48342', 'Monitor 27" Full HD', 'Monitores', 'Samsung', '60')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('48019', 'Monitor Gamer 27", Full HD', 'Monitores', 'MSI', '32')
;

-- MOUSE
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('47902', 'Mouse HP 150 Wireless Black', 'Mouse', 'HP', '10')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('14853', 'Mouse Sculpt Ergonomic Wireless', 'Mouse', 'Microsoft', '19')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('21504', 'Mouse For Life Wireless Negro', 'Mouse', 'Kensington', '24')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('20906', 'Mouse DX-110 Óptico USB Negro', 'Mouse', 'Genius', '27')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('21653', 'Mouse USB Retráctil Micro Traveler v2', 'Mouse', 'Genius', '15')
;

-- TORRE
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('47122', 'Desktop Gamer Blue Demon Intel i3-10100F 8GB 1TB NVIDIA PH-GTX 1650 4GB', 'Torre', 'Gear', '8')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('34978', 'Desktop Intel Celeron J4005 4GB 1TB', 'Torre', 'Gear', '16')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('37545', 'Desktop Intel Core i5-10400 8GB 1TB DVDRW', 'Torre', 'Gear', '7')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('46294', 'Desktop Gamer AMD Ryzen 5 5600X 16GB 1TB + 480GB SSD NVIDIA RTX 2060 12GB', 'Torre', 'Gear', '18')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('47144', 'Desktop Gamer AMD Ryzen 5 5600X 8GB 1TB NVIDIA GTX1660S', 'Torre', 'Gear', '4')
;

-- TABLA VENDEDOR INFO: 
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('23345678-9', 'Ricardo', 'Pérez González', '1990-05-15', 'ventas')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('18458206-6', 'Mauricio', 'Morales Veas', '1994-03-17', 'jefatura')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('9876543-9', 'Jose', 'González Pérez', '1997-07-22', 'administracion')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('1234567-2', 'Pablo', 'Pérez Pereira', '1991-02-15', 'ventas')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('22345678-1', 'Karem', 'Ortiz Vergara', '1993-05-27', 'ventas')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('8765432-1', 'Jason', 'Kruger González', '1960-05-22', 'jefatura')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('7654321-9', 'Ignacia', 'Pérez González', '1977-02-10', 'marketing')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('16543789-0', 'Lala', 'Lolo Guerra', '1988-12-11', 'marketing')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('1234567-9', 'Camila', 'Vergara Plaza', '1977-09-10', 'ventas')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('22345678-9', 'Juan', 'González Pérez', '1999-05-19', 'ventas')
;
-- D) 10 vendedores más agregados con la nueva columna
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('23345678-0', 'Rodrigo', 'Pérez González', '1990-06-15', 'ventas', 510000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('18458209-6', 'Ignacio', 'Morales Veas', '1992-03-17', 'jefatura', 520000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('10876543-9', 'Luis', 'González Pérez', '1990-07-22', 'administracion', 530000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('1254567-2', 'Pedro', 'Pérez Pereira', '1998-02-15', 'ventas', 643000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('22745668-1', 'Karola', 'Ortiz Vergara', '1980-05-27', 'ventas', 750000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('8778432-6', 'Jackson', 'Pérez González', '1967-05-22', 'jefatura', 890000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('8954321-2', 'Francisca', 'González González', '1967-03-10', 'marketing', 650000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('19543989-4', 'Alvara', 'Flores Guerra', '1985-12-11', 'marketing', 760000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('1234598-9', 'Camilo', 'Plaza Plaza', '1970-09-10', 'ventas', 890334)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('22545678-0', 'Ricardo', 'Plaza Pérez', '1998-05-12', 'ventas', 19540345)
;

-- TABLA CLIENTE INFO: 
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000001', 'Magdalena Pilar','Montecino Leal' , 4000400,'los campos 57','Casablanca',' magda@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000002', 'Luis Alberto','Martinez Roa' , 56970809090,'avenida los pinos 7','Casablanca',' lluis@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000003', 'Maria Luisa','Mantilla Loa' , 5697080708,'aromo 67','Llay-llay',' maria@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000004', 'Marcos ','gonzalez Gonzalez' , 4000400,'calle las mantillas 100','Casablanca',' mamarcos@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000005', 'Mónica','Lara de Roca' , 4000400,'las pataguas 87','Olmue',' mmomoni@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000006', 'Gonzalo Miguel','Matinez Ramo' , 4000400,'rio choa 9090','Casablanca',' gonza@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000007', 'Orlando','Montecino Perez' , 56978545403,'avenida principal 78','Quillota',' orlandoO@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000008', 'Roberto Francisco','Roa Loreto' , 56978980699,'los aromos 900','Quillota',' robFrco@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000009', 'Paola Flor','Amada del Rio' , 568978564545,'calle fuego 1343','Olmue',' delRio@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000010', 'Paolo ','Zarate Navarrete' , 56980809765,' rocas grande 230','Llay.llay',' zarate@gmail.com',now());

-- G) Seleccionar los vendedores que tienen un salario superior al promedio
SELECT nombre, apellidos, salario
FROM vendedor
WHERE salario > (SELECT AVG(salario) FROM vendedor);

-- J) Seleccionar los vendedores que tienen un salario inferior al promedio
SELECT nombre, apellidos, salario
FROM vendedor
WHERE salario < (SELECT AVG(salario) FROM vendedor);

-- L) Seleccione el nombre y el apellido de los vendedores que tienen un salario superior al promedio.

SELECT nombre, apellidos
FROM vendedor
WHERE salario > (SELECT AVG(salario) FROM vendedor);


SELECT * FROM vendedor;
SELECT * FROM cliente;
SELECT * FROM producto;
/*
SELECT * FROM vendedor;

-- Evaluamos tabla
SELECT * FROM cliente;
*/