create schema if not exists ejercicio4;
use ejercicio4;

create table if not exists persona (
	nro_persona int auto_increment,
    nombre varchar (50) not null,
    calle varchar (50) not null,
    ciudad varchar (50) not null,
    nro_supervisor int,
    constraint pk_persona primary key (nro_persona),
    constraint fk_nro_supervisor foreign key (nro_supervisor) references persona (nro_persona)
);

create table if not exists empresa (
	nro_empresa int auto_increment,
    razon_social varchar(50) not null,
    calle varchar (50) not null,
    ciudad varchar (50) not null,
    constraint pk_empresa primary key (nro_empresa)
);

create table if not exists trabaja (
	nro_persona int,
    nro_empresa int,
    salario decimal (7,2) not null,
    fecha_ingreso date not null,
    constraint pk_trabaja primary key (nro_persona,nro_empresa),
    constraint fk_nro_persona foreign key (nro_persona) references persona (nro_persona),
    constraint fk_nro_empresa foreign key (nro_empresa) references empresa (nro_empresa)
);

