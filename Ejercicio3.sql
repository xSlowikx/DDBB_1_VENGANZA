create schema if not exists ejercicio3;
use ejercicio3;

CREATE TABLE if not exists Proveedor (
  id_proveedor INT auto_increment,
  nombre VARCHAR(50) not null,
  cuit int not null,
  constraint pk_proveedor primary key (id_proveedor)
);

CREATE TABLE if not exists Cliente (
  id_cliente INT auto_increment,
  nombre VARCHAR(50) not null,
  constraint pk_cliente primary key (id_cliente)
);

CREATE TABLE if not exists Vendedor (
  id_empleado INT auto_increment,
  nombre VARCHAR(50) not null,
  apellido VARCHAR(50) not null,
  dni int not null,
  constraint pk_vendedor primary key (id_empleado)
);

CREATE TABLE Producto (
  id_producto INT auto_increment,
  descripcion VARCHAR(50) not null,
  estado VARCHAR(50) not null,
  id_proveedor INT not null,
  CONSTRAINT pk_producto PRIMARY KEY (id_producto),
  CONSTRAINT fk_id_proveedor FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor)
);

CREATE TABLE Venta (
  nro_factura INT,
  id_cliente INT NOT NULL,
  fecha DATE NOT NULL,
  id_vendedor INT NOT NULL,
  CONSTRAINT pk_venta PRIMARY KEY (nro_factura),
  CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
  CONSTRAINT fk_id_vendedor FOREIGN KEY (id_vendedor) REFERENCES Vendedor(id_empleado)
);

CREATE TABLE Detalle_Venta (
  nro_factura INT,
  nro_detalle INT NOT NULL,
  id_producto INT NOT NULL,
  cantidad INT NOT NULL,
  precio_unitario DECIMAL(7, 2) NOT NULL,
  CONSTRAINT pk_detalle_venta PRIMARY KEY (nro_factura, nro_detalle),
  CONSTRAINT fk_id_nro_factura FOREIGN KEY (nro_factura) REFERENCES Venta(nro_factura),
  CONSTRAINT fk_id_producto FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);

#1 Listar la cantidad de productos que tiene la empresa.

select count(id_producto) from producto;

#2 Listar la descripción de productos en estado 'en stock' que tiene la empresa.

select descripcion from producto
where estado = "en stock";

#3 Listar los productos que nunca fueron vendidos.
#4 Listar la cantidad total de unidades que fueron vendidas de cada producto (descripción).
#5 Listar el nombre de cada vendedor y la cantidad de ventas realizadas en el año 2015.
#6 Listar el monto total vendido por cada cliente (nombre).
#7 Listar la descripción de aquellos productos en estado 'en stock' que se hayan vendido en el mes de Enero de 2015.