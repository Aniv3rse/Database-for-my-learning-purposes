DROP DATABASE IF EXISTS jugueteria;
CREATE DATABASE jugueteria; 
USE jugueteria;

DROP TABLE IF EXISTS jugueteria.clientes;

CREATE TABLE jugueteria.clientes(
    cod_cli  		   CHAR(5) PRIMARY KEY,
    nombre_cli         VARCHAR(20) NOT NULL,
    apellido_cli       VARCHAR(20) NOT NULL,
    telefono_cli       INT(10) NOT NULL,
    direccion_cli      VARCHAR(70) NOT NULL,
    fecha_nac_cli      DATE NOT NULL,
    estado_cli 		   VARCHAR(10) NOT NULL
);

INSERT INTO jugueteria.clientes VALUES('11111','Daniel','Vera','330000000','Av Guadalupe #6877', '1996-09-15', 'Jalisco');
INSERT INTO jugueteria.clientes VALUES('22222','Daniela','Vero','330000001','Av Paz #666', '1969-12-15', 'Jalisco');
INSERT INTO jugueteria.clientes VALUES('33333','Mi Nene','Nene','330000002','Nenes #1234', '2000-02-1', 'Jalisco');
INSERT INTO jugueteria.clientes VALUES('44444','Foraneo','Foraneito','440000001','Av Por ahi #4250', '1999-05-5', 'Sinaloa');
INSERT INTO jugueteria.clientes VALUES('55555','Foranea','Foraneita','880000002','Av Por aqui #6877', '1980-01-1', 'Sonora');
INSERT INTO jugueteria.clientes VALUES('66666','Daniel','Alonso','660000003','Av Revolucion #5000', '1998-12-3', 'Michoacan');
INSERT INTO jugueteria.clientes VALUES('77777','Rodolfo','Rudolf','660000004','Av Revolucion #5000', '1999-4-20', 'Michoacan');
INSERT INTO jugueteria.clientes VALUES('88888','Jesus','Cielo','550000005','Cielo #7777', '2000-12-25', 'Oaxaca');
INSERT INTO jugueteria.clientes VALUES('99999','El Bromas','Alias Joker','990000006','Risas #6969', '1960-05-5', 'DF');
INSERT INTO jugueteria.clientes VALUES('00100','Escuero','Pokemon','110000002','Pokes #07', '1986-01-1', 'Veracruz');

DROP TABLE IF EXISTS jugueteria.empleados;

CREATE TABLE jugueteria.empleados(
    cod_emp  		   CHAR(5) PRIMARY KEY,
    nombre_emp         VARCHAR(20) NOT NULL,
    apellido_emp       VARCHAR(20) NOT NULL,
    telefono_emp       INT(10) NOT NULL,
    direccion_emp      VARCHAR(70) NOT NULL,
    fecha_nac_emp      DATE NOT NULL,
    estado_emp 		   VARCHAR(20) NOT NULL
);

INSERT INTO jugueteria.empleados VALUES('10101','El Kevin','Lel','990000100','Av La del kevin #kevin', '2000-04-3', 'DF');
INSERT INTO jugueteria.empleados VALUES('20202','La Karen','Lol','990000101','Av La de la karen #karen', '2000-3-5', 'DF');
INSERT INTO jugueteria.empleados VALUES('30303','Mi Baibi','Bebe','330001002','Nenes #1234', '2000-02-1', 'Jalisco');
INSERT INTO jugueteria.empleados VALUES('40404','Forastero','Forasterito','440001001','Av Este #4250', '1979-05-5', 'Sinaloa');
INSERT INTO jugueteria.empleados VALUES('50505','Forastera','Forasterita','880001002','Av Oeste #6877', '1970-01-1', 'Sonora');
INSERT INTO jugueteria.empleados VALUES('60606','Salsa','My salsa','660001003','Av Salsa #5000', '1989-8-7', 'Michoacan');
INSERT INTO jugueteria.empleados VALUES('70707','Santa','Claus','660001004','Av Polo Sur #xmas', '1950-12-20', 'Michoacan');
INSERT INTO jugueteria.empleados VALUES('80808','Jessy','Something','550001005','Pokemon #7777', '1970-7-4', 'Oaxaca');
INSERT INTO jugueteria.empleados VALUES('90909','James','Memes','990001006','Pokemon #6969', '1970-02-5', 'DF');
INSERT INTO jugueteria.empleados VALUES('01010','Catgirl','Elon Musk','110001002','Pokes #07', '1956-01-1', 'Veracruz');

DROP TABLE IF EXISTS jugueteria.proveedores;

CREATE TABLE jugueteria.proveedores(
    cod_prov  		 CHAR(5) PRIMARY KEY,
    nombre_prov      VARCHAR(50) NOT NULL,
    telefono_prov    INT(10) NOT NULL,
    direccion_prov   VARCHAR(70) NOT NULL,
    estado_prov      VARCHAR(20) NOT NULL
);

INSERT INTO jugueteria.proveedores VALUES('00001','Emporeo salsa','331000000','Av Guadalupe #7777', 'Jalisco');
INSERT INTO jugueteria.proveedores VALUES('00002','Tacos el guero','332000001','Av Paz #6669', 'Jalisco');
INSERT INTO jugueteria.proveedores VALUES('00003','Tacos el moreno','333000002','Nenes #123', 'Jalisco');
INSERT INTO jugueteria.proveedores VALUES('00004','Tacos el primo','444000001','Av Por ahi #250','Sinaloa');
INSERT INTO jugueteria.proveedores VALUES('00005','El Loco Al','885000002','Av crazy #687', 'Sonora');
INSERT INTO jugueteria.proveedores VALUES('00006','Costgo','666000003','Av Revolucion #5000', 'Michoacan');
INSERT INTO jugueteria.proveedores VALUES('00007','Walbart','667000004','Av Revolucion #5000', 'Michoacan');
INSERT INTO jugueteria.proveedores VALUES('00008','Il Palaicio di ierro','558000005','Av pepona #123', 'Oaxaca');
INSERT INTO jugueteria.proveedores VALUES('00009','Disneyland','999000006','Risas #6969', 'DF');
INSERT INTO jugueteria.proveedores VALUES('00010','The Pokemon Company','110000002','Pokes #07', 'Veracruz');


DROP TABLE IF EXISTS jugueteria.productos;

CREATE TABLE jugueteria.productos(
    cod_prod  		 CHAR(5) PRIMARY KEY,
    nombre_prod      VARCHAR(30) NOT NULL,
    inventario_prod  INT(3) NOT NULL,
    precio_prod      INT(4) NOT NULL,
    proveedor_prod   CHAR(5) NOT NULL REFERENCES jugueteria.proveedores(cod_prov)
);

INSERT INTO jugueteria.productos VALUES('10001','Salsa falsa','39','20', '10001');
INSERT INTO jugueteria.productos VALUES('20002','Taco guero','5','30', '20002');
INSERT INTO jugueteria.productos VALUES('30003','Taco moreno','674','1', '30003');
INSERT INTO jugueteria.productos VALUES('40004','Taco primo','999','4','40004');
INSERT INTO jugueteria.productos VALUES('50005','Figura El Loco Al','6','1000', '50005');
INSERT INTO jugueteria.productos VALUES('60006','Mini Costgo','600','500', '60006');
INSERT INTO jugueteria.productos VALUES('70007','Mini Walbart','200','300', '70007');
INSERT INTO jugueteria.productos VALUES('80008','Pepita di oro','100','9000', '80008');
INSERT INTO jugueteria.productos VALUES('90009','Meeke mause','69','100', '90009');
INSERT INTO jugueteria.productos VALUES('11010','El pikacho','10','50', '11010');

DROP TABLE IF EXISTS jugueteria.venta;

CREATE TABLE jugueteria.venta(
    cod_venta  		   CHAR(6) PRIMARY KEY,
    importe_venta      INT(10) NOT NULL,
    cantidad_venta     INT(3) NOT NULL,
    cliente_venta      CHAR(5) NOT NULL REFERENCES jugueteria.clientes(cod_cli),
    vendedor_venta     CHAR(5) NOT NULL REFERENCES jugueteria.empleados(cod_emp),
    producto_venta     CHAR(5) NOT NULL REFERENCES jugueteria.productos(cod_prod)
);

INSERT INTO jugueteria.venta VALUES('000001','100','5','11111','30303', '10001');
INSERT INTO jugueteria.venta VALUES('000002','90','3','33333','30303', '20002');
INSERT INTO jugueteria.venta VALUES('000003','600','600','77777','80808', '30003');
INSERT INTO jugueteria.venta VALUES('000004','40','10','00100','01010','40004');
INSERT INTO jugueteria.venta VALUES('000005','6000','6','66666','80808', '50005');
INSERT INTO jugueteria.venta VALUES('000006','1000','2','66666','90909', '60006');
INSERT INTO jugueteria.venta VALUES('000007','1200','4','66666','90909', '70007');
INSERT INTO jugueteria.venta VALUES('000008','9000','1','99999','80808', '80008');
INSERT INTO jugueteria.venta VALUES('000009','6000','6','77777','90909', '90009');
INSERT INTO jugueteria.venta VALUES('000010','50','1','11111','90909', '11010');

SELECT All*
FROM jugueteria.venta;