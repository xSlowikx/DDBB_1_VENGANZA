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

#1 Listar el nombre y la ciudad de todas las personas que trabajan en la empresa "Banelco".

#2 Listar el nombre, calle y ciudad de todas las personas que trabajan para la empresa "Paulinas" y ganan más de $1500.

#3 Listar el nombre de personas que viven en la misma ciudad en la que se halla la empresa en la que trabajan.

#4 Listar el número y nombre de todas las personas que viven en la misma ciudad y en la misma calle que su supervisor.

#5 Listar el nombre y ciudad de todas las personas que ganan más que cualquier empleado de la empresa "Tecnosur".

#6 Listar las ciudades en las que todos los trabajadores que vienen en ellas ganan más de $1000.

#7 Listar el nombre de los empleados que hayan ingresado en más de 4 empresas en el periodo del 01-01-2000 al 31-03-2004.