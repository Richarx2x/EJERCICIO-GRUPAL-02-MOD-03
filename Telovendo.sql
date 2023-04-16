-- RAMA SIMON IMPORTANTE SUBIR PRIMERO YA QUE AGREGA LAS COLUMNAS NUEVAS

-- CREACION DE COLUMNAS NUEVAS
ALTER TABLE cliente
ADD COLUMN Total Pagado INT NOT NULL DEFAULT '0';

ALTER TABLE vendedor
ADD COLUMN Salario INT NOT NULL DEFAULT '410000';

ALTER TABLE Producto
ADD COLUMN Precio INT NOT NULL DEFAULT '10000';

-- CREACION DE PRODUCTOS NUEVOS SSD

INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('45565', 'Unidad SSD 500GB Sata3 2.5" CS900', 'SSD', 'PNY', '12', '42000')
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('27163', 'Unidad SSD 480GB Sata3 2.5" A400" CS900', 'SSD', 'KINGSTON', '14', '32000')
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('27162', 'Unidad SSD 240GB Sata3 2.5" A400" CS900', 'SSD', 'KINGSTON', '11', '22000')
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('28150', 'Unidad SSD 500GB Sata3 2.5" MX500', 'SSD', 'CRUCIAL', '27', '62000')
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('30966', 'Unidad SSD 240GB Sata3 2.5" BX500', 'SSD', 'CRUCIAL', '36', '21000')

-- CREACION DE PRODUCTOS NUEVOS RAM

INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('33918', 'DDR4 4GB 2666MHz Value RAM', 'RAM', 'CRUCIAL', '33', '22000')
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('43964', 'DDR4 8GB 2666MHz Beast', 'RAM', 'KINGSTON', '28', '30000')
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('37117', 'DDR4 8GB 2666MHz Vengeance LPX', 'RAM', 'CORSAIR', '10', '31000')
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('46613', 'DDR4 8GB 3600MHz Vengeance LPX', 'RAM', 'CORSAIR', '27', '42000')
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('47666', 'DDR5 8GB 4800MHz Value RAM', 'RAM', 'CRUCIAL', '17', '48000');
