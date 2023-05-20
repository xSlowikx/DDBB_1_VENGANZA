create schema if not exists ejercicio1;
use ejercicio1;

create table if not exists almacen (
	nro int auto_increment,
    nombre varchar (50) not null,
    responsable varchar (50) not null,
    constraint pk_almacen primary key (nro)
);

create table if not exists articulo (
	cod_art int,
    descripcion varchar (50) not null,
    precio decimal (7,2) not null,
    constraint pk_articulo primary key (cod_art)
);

create table if not exists material (
	cod_mat int,
    descripcion varchar (50) not null,
    constraint pk_material primary key (cod_mat)
);

alter table material change column cod_mat cod_mat int auto_increment;

create table if not exists ciudad(
	cod_ciu int auto_increment,
    nombre varchar (50) not null,
    constraint pk_ciudad primary key (cod_ciu)
);

create table if not exists proveedor (
	cod_prov int AUTO_INCREMENT,
    nombre varchar (50) not null,
    domicilio varchar (50) not null,
    cod_ciu int not null,
    fecha_alta date not null,
    constraint pk_proveedor primary key (cod_prov),
    constraint fk_cod_ciu foreign key (cod_ciu) references ciudad (cod_ciu)
);

create table if not exists contiene(
	nro_almacen int,
    cod_art int,
    constraint pk_contiene primary key (nro_almacen,cod_art),
    constraint fk_nro_almacen foreign key (nro_almacen) references almacen (nro),
    constraint fk_cod_art foreign key (cod_art) references articulo (cod_art)
);

create table if not exists compuesto_por (
	cod_art int,
    cod_mat int,
    constraint pk_compuesto_por primary key (cod_art,cod_mat),
    constraint fk_cod_art_cp foreign key (cod_art) references articulo (cod_art),
    constraint fk_cod_mat foreign key (cod_mat) references material (cod_mat)
);

create table if not exists provisto_por (
	cod_mat int,
    cod_prov int,
    constraint pk_provisto_por primary key (cod_mat,cod_prov),
    constraint fk_cod_mat_pp foreign key (cod_mat) references material (cod_mat),
    constraint fk_cod_prov foreign key (cod_prov) references proveedor (cod_prov)
);

#Ejercicio 1 - consulta 1
select cod_art from articulo
where precio between 100 and 1000
and descripcion like "A%";

#Ejercicio 1 - consulta 2
select * from proveedor;

#Ejercicio 1 - consulta 3
select descripcion from material
where cod_mat in (1,3,6,9,18);

#Ejercicio 1 - consulta 4
select cod_prov, nombre from proveedor
where domicilio like "Suipacha%" 
and fecha_alta between "20010101" and "20011231";

#Ejercicio 1 - consulta 5 IMPLEMENTACION DE JOIN (AUN NO VISTO A 20-05-2023)

#Ejercicio 1 - consulta 6
