create database kermodei;

use kermodei;

create table empleado (
id_empleado int AUTO_INCREMENT,
nombre varchar(50) NOT NULL,
apellido varchar(50) NOT NULL,
dni int NOT NULL,
domicilio VARCHAR(100),
PRIMARY KEY (id_empleado)
);

CREATE TABLE cliente (
id_cliente int AUTO_INCREMENT, 
nombre varchar(50) NOT NULL,
apellido varchar(50) NOT NULL,
direccion varchar(100) NOT NULL,
telefono int NOT NULL,
PRIMARY KEY (id_cliente)
);
	
CREATE TABLE PRODUCTO (
id_producto int AUTO_INCREMENT,
nombre int NOT NULL,
precio int NOT NULL,
PRIMARY KEY (id_producto)
);

CREATE TABLE VENTA (
id_venta int AUTO_INCREMENT,
id_producto int NOT NULL,
id_cliente INT NOT NULL,
cantidad int NOT NULL,
fecha datetime DEFAULT CURRENT_TIMESTAMP,
total int NOT NULL,
PRIMARY KEY (id_venta),
CONSTRAINT FK_VENTA_PRODUCTO FOREIGN KEY (id_producto) REFERENCES producto (id_producto)
);

CREATE TABLE PEDIDO (
id_pedido int AUTO_INCREMENT,
id_cliente int NOT NULL,
id_producto int NOT NULL,
id_empleado int NOT NULL,
valor int NOT NULL,
PRIMARY KEY (id_pedido),
CONSTRAINT FK_PEDIDO_CLIENTE FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
CONSTRAINT FK_PEDIDO_PRODUCTO FOREIGN KEY (id_producto) REFERENCES PRODUCTO (id_producto),
CONSTRAINT FK_PEDIDO_EMPLEADO FOREIGN KEY (id_empleado) REFERENCES EMPLEADO (id_empleado)
);

