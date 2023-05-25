create schema if not exists ejercicio5;
use ejercicio5;

create table if not exists auto (
	patente varchar (50),
    modelo varchar (50) not null,
    año date not null,
    constraint pk_auto primary key (patente)
);

create table if not exists chofer (
	nro_chofer int auto_increment,
    nombre varchar (50) not null,
    fecha_ingreso date not null,
    telefono int not null,
    constraint pk_chofer primary key (nro_chofer)
);

create table if not exists cliente (
	nro_cliente int auto_increment,
    nombre varchar (50) not null,
    domicilio varchar (50) not null,
    localidad varchar (50) not null,
    constraint pk_cliente primary key (nro_cliente)
);

create table if not exists viaje (
	nro_chofer int,
    nro_cliente int,
    patente varchar (50),
    fecha date,
    km_totales int not null,
    tiempo_espera time not null,
    constraint pk_viaje primary key (nro_chofer, nro_cliente, patente, fecha),
    constraint fk_nro_chofer foreign key (nro_chofer) references chofer (nro_chofer),
    constraint fk_nro_cliente foreign key (nro_cliente) references cliente (nro_cliente),
    constraint fk_patente foreign key (patente) references auto (patente)
);