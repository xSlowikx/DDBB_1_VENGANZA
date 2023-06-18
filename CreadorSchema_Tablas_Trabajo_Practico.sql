create schema if not exists trabajo_practico;
use trabajo_practico;

-- Normalizaciones profesional --
create table if not exists Especialidad (
	id_especialidad int auto_increment,
    descripción varchar (50) not null,
    constraint pk_especialidad primary key (id_especialidad)
    );
    
-- Normalizaciones tratamiento --
create table if not exists Categoria (
	id_categoria int auto_increment,
    nivel varchar (50) not null,
    constraint pk_categoria primary key (id_categoria)
);

create table if not exists Beneficio (
	id_beneficio int auto_increment,
    descripción varchar (50) not null,
    id_categoria int not null,
    constraint pk_beneficio primary key (id_beneficio),
    constraint fk_id_categoria foreign key (id_categoria) references categoria (id_categoria)
);

create table if not exists Efecto_principal (
	id_efecto_principal int auto_increment,
    descripción varchar (50) not null,
    constraint pk_efecto_principal primary key (id_efecto_principal)
);

create table if not exists Contraindicacion (
	id_contraindicacion int auto_increment,
    nombre varchar (50) not null,
    constraint pk_contraindicacion primary key (id_contraindicacion)
);

create table if not exists Centro_salud (
	id_centro_salud int auto_increment,
    descripción varchar (50) not null,
    constraint pk_centro_salud primary key (id_centro_salud)
);
create table if not exists Zona_cuerpo (
	id_zona_cuerpo int auto_increment,
    descripción varchar (50) not null,
    constraint pk_zona_cuerpo primary key (id_zona_cuerpo)
    );
Tipo_tratamiento (id_tipo_tratamiento, descripcion, id_tipo_procedimiento)
	→ Tipo_procedimiento (id_tipo_procedimiento, descripcion)
-- Normalizaciones efecto_adverso --
Gravedad (nivel_gravedad, descripcion)
-- Normalizaciones compuesto_farmacologico --
Tipo_compuesto (id_tipo_compuesto, descripcion)
Fabricante (id_fabricante, nombre, pais_origen)
	→ Pais_origen (id_pais, nombre)
Partida (id_partida)
Lote (id_partida, nro_lote, vencimiento)
Farmaco (cod_barra, nombre, id_origen)
Origen (id_origen, descripcion)