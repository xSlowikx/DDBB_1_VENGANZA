-- CREACION Y USO DEL SCHEMA --
create schema if not exists trabajo_practico;
use trabajo_practico;

-- TABLAS PRINCIPALES --
CREATE TABLE IF NOT EXISTS Diagnostico (
    cie10 VARCHAR(5),
    descripción VARCHAR(100) NOT NULL,
    CONSTRAINT pk_diagnostico PRIMARY KEY (cie10)
);

CREATE TABLE IF NOT EXISTS Persona (
    cuil_persona BIGINT,
    nombre VARCHAR(20) NOT NULL,
    apellido VARCHAR(20) NOT NULL,
    edad TINYINT NOT NULL,
    cuil_madre INT UNSIGNED,
    CONSTRAINT pk_persona PRIMARY KEY (cuil_persona),
    CONSTRAINT fk_cuil_madre FOREIGN KEY (cuil_madre) REFERENCES persona (cuil_persona)
);

CREATE TABLE IF NOT EXISTS Paciente (
    cuil_paciente BIGINT,
    nro_paciente BIGINT NOT NULL,
    CONSTRAINT pk_paciente PRIMARY KEY (cuil_paciente),
    CONSTRAINT fk_cuil_paciente FOREIGN KEY (cuil_paciente) REFERENCES persona (cuil_persona)
);

CREATE TABLE IF NOT EXISTS Profesional (
    cuil_profesional BIGINT,
    matricula_provincial VARCHAR(20) NOT NULL,
    matricula_nacional VARCHAR(20) NOT NULL,
    contacto_celular INT NOT NULL,
    contacto_email VARCHAR(50) NOT NULL,
    contacto_cod_post SMALLINT NOT NULL,
    CONSTRAINT pk_profesional PRIMARY KEY (cuil_profesional),
    CONSTRAINT fk_cuil_profesional FOREIGN KEY (cuil_profesional) REFERENCES persona (cuil_persona)
);

create table if not exists Efecto_adverso (
	cod_efecto_adverso int,
    nombre varchar (50) not null,
    nivel_gravedad tinyint not null,
    constraint pk_efecto_adverso primary key (cod_efecto_adverso),
    constraint fk_nivel_gravedad foreign key (nivel_gravedad) references gravedad (nivel_gravedad)
);

create table if not exists Tratamiento (
	id_tratamiento int auto_increment,
	nomenclatura varchar (50),
    id_tipo_tratamiento tinyint not null,
    id_efecto_principal int not null,
    id_centro_salud int not null,
    id_zona_cuerpo tinyint not null,
    cuil_profesional BIGINT,
    cuil_paciente BIGINT not null,
    de_tipo varchar (25) not null,
    constraint pk_tratamiento primary key (id_tratamiento),
    constraint fk_id_tipo_tratamiento foreign key (id_tipo_tratamiento) references tipo_tratamiento (id_tipo_tratamiento),
    constraint fk_id_efecto_principal foreign key (id_efecto_principal) references efecto_principal (id_efecto_principal),
    constraint fk_id_centro_salud foreign key (id_centro_salud) references centro_salud (id_centro_salud),
    constraint fk_id_zona_cuerpo foreign key (id_zona_cuerpo) references zona_cuerpo (id_zona_cuerpo),
    constraint fk_cuil_profesional_tratamiento foreign key (cuil_profesional) references profesional (cuil_profesional),
    constraint fk_cuil_paciente_tratamiento foreign key (cuil_paciente) references paciente (cuil_paciente)
);

create table if not exists Practica_diagnostica (
	id_tratamiento int,
    confirmacion_dpresuntivo boolean default 0,
    constraint pk_practica_diagnostica primary key (id_tratamiento),
    constraint fk_id_tratamiento foreign key (id_tratamiento) references tratamiento (id_tratamiento)
);

create table if not exists Practica_quirurgica (
	id_tratamiento int,
    resultado boolean not null,
    constraint pk_practica_quirurgica primary key (id_tratamiento),
    constraint fk_id_tratamiento2 foreign key (id_tratamiento) references tratamiento (id_tratamiento)
    );

create table if not exists Compuesto_farmacologico (
	id_tratamiento int,
    id_tipo_compuesto int not null,
    id_fabricante smallint not null,
    id_partida int not null,
    nro_lote int not null,
    constraint pk_compuesto_farmacologico primary key (id_tratamiento),
    constraint fk_id_tratamiento_compuesto foreign key (id_tratamiento) references tratamiento (id_tratamiento),
    constraint fk_id_tipo_compuesto foreign key (id_tipo_compuesto) references tipo_compuesto(id_tipo_compuesto),
    constraint fk_id_fabricante foreign key (id_fabricante) references fabricante (id_fabricante),
    constraint fk_id_partida_compuesto foreign key (id_partida) references lote (id_partida),
    constraint fk_nro_lote_compuesto foreign key (nro_lote) references lote (nro_lote)
);

-- TABLAS DE RELACIONES N:N --
create table if not exists Antecedente (
	cuil_persona BIGINT,
    cie10 varchar (5),
    fecha date,
    constraint pk_antecedente primary key (cuil_persona, cie10, fecha),
    constraint fk_cuil_persona_antecedente foreign key (cuil_persona) references persona (cuil_persona),
    constraint fk_cie10 foreign key (cie10) references diagnostico (cie10)
);
create table if not exists Especializacion (
	cuil_profesional int unsigned,
    id_especialidad int,
    constraint pk_especializacion primary key (cuil_profesional, id_especialidad),
    constraint fk_cuil_profesional_especializacion foreign key (cuil_profesional) references profesional (cuil_profesional),
    constraint fk_id_especialidad foreign key (id_especialidad) references especialidad (id_especialidad)
);

create table if not exists Produce (
	id_tratamiento int,
    cod_efecto_adverso int,
    fecha date,
    constraint pk_produce primary key (id_tratamiento, cod_efecto_adverso, fecha),
    constraint fk_id_tratamiento_produce foreign key (id_tratamiento) references tratamiento (id_tratamiento),
    constraint fk_cod_efecto_adverso foreign key (cod_efecto_adverso) references efecto_adverso (cod_efecto_adverso)
);

create table if not exists Se_espera (
	id_tratamiento int,
    id_beneficio int,
    constraint pk_se_espera primary key (id_tratamiento, id_beneficio),
    constraint fk_id_tratamiento_se_espera foreign key (id_tratamiento) references tratamiento (id_tratamiento),
    constraint fk_id_beneficio_se_espera foreign key (id_beneficio) references beneficio (id_beneficio)
);

create table if not exists Se_recomienda (
	id_tratamiento int,
    id_contraindicacion tinyint,
    constraint pk_se_recomienda primary key (id_tratamiento, id_contraindicacion),
    constraint fk_id_tratamiento_se_recomienda foreign key (id_tratamiento) references tratamiento (id_tratamiento),
    constraint fk_id_contraindicacion foreign key (id_contraindicacion) references contraindicacion (id_contraindicacion)
);

create table if not exists Composicion (
	id_compuesto_farmacologico int,
    cod_barra_farmaco int,
    cantidad tinyint not null,
    constraint composicion primary key (id_compuesto_farmacologico, cod_barra_farmaco),
    constraint fk_id_compuesto_farmacologico foreign key (id_compuesto_farmacologico) references compuesto_farmacologico (id_tratamiento),
    constraint fk_cod_barra_farmaco foreign key (cod_barra_farmaco) references farmaco (cod_barra_farmaco)
);


-- NORMALIZACIONES PROFESIONAL --
create table if not exists Especialidad (
	id_especialidad int auto_increment,
    descripción varchar (50) not null,
    constraint pk_especialidad primary key (id_especialidad)
    );
    
-- NORMALIZACIONES TRATAMIENTO --
create table if not exists Categoria (
	id_categoria tinyint auto_increment,
    nivel varchar (50) not null,
    constraint pk_categoria primary key (id_categoria)
);

create table if not exists Beneficio (
	id_beneficio int auto_increment,
    descripción varchar (50) not null,
    id_categoria tinyint not null,
    constraint pk_beneficio primary key (id_beneficio),
    constraint fk_id_categoria foreign key (id_categoria) references categoria (id_categoria)
);

create table if not exists Efecto_principal (
	id_efecto_principal int auto_increment,
    descripción varchar (50) not null,
    constraint pk_efecto_principal primary key (id_efecto_principal)
);

create table if not exists Contraindicacion (
	id_contraindicacion tinyint auto_increment,
    nombre varchar (50) not null,
    constraint pk_contraindicacion primary key (id_contraindicacion)
);

create table if not exists Centro_salud (
	id_centro_salud int auto_increment,
    nombre varchar (50) not null,
    constraint pk_centro_salud primary key (id_centro_salud)
);

create table if not exists Zona_cuerpo (
	id_zona_cuerpo tinyint auto_increment,
    descripción varchar (50) not null,
    constraint pk_zona_cuerpo primary key (id_zona_cuerpo)
    );

create table if not exists Tipo_procedimiento (
	id_tipo_procedimiento tinyint auto_increment,
    descripcion varchar (50) not null,
    constraint pk_tipo_procedimiento primary key (id_tipo_procedimiento)
);    

create table if not exists Tipo_tratamiento (
	id_tipo_tratamiento tinyint auto_increment,
    descripcion varchar (50),
    id_tipo_procedimiento tinyint not null,
    constraint pk_tipo_tratamiento primary key (id_tipo_tratamiento),
    constraint fk_id_tipo_procedimiento foreign key (id_tipo_procedimiento) references tipo_procedimiento (id_tipo_procedimiento)
);

-- NORMALIZACIONES EFECTO_ADVERSO --
create table if not exists Gravedad (
	nivel_gravedad tinyint auto_increment,
	descripcion varchar (50) not null,
    constraint pk_gravedad primary key (nivel_gravedad)
);

-- NORMALIZACIONES COMPUESTO FARMACOLOGICO --
create table if not exists Tipo_compuesto (
	id_tipo_compuesto int auto_increment,
    descripcion varchar (50) not null,
    constraint pk_tipo_compuesto primary key (id_tipo_compuesto)
);

create table if not exists Pais_origen (
	id_pais int auto_increment,
	nombre varchar (50) not null,
    constraint pais_origen primary key (id_pais)
);

create table if not exists Fabricante (
	id_fabricante smallint auto_increment,
	nombre varchar (50) not null,
	pais_origen int not null,
    constraint pk_fabricante primary key (id_fabricante),
    constraint fk_pais_origen foreign key (pais_origen) references pais_origen (id_pais)
);

alter table fabricante auto_increment = 1000;

create table if not exists Partida (
	id_partida int auto_increment,
    constraint pk_partida primary key (id_partida)
);

create table if not exists Lote (
	id_partida int,
	nro_lote int,
    vencimiento date not null,
    constraint pk_lote primary key (id_partida, nro_lote),
    constraint fk_id_partida foreign key (id_partida) references partida (id_partida)
);

create table if not exists Origen (
	id_origen tinyint auto_increment,
	descripcion varchar (50) not null,
    constraint pk_origen primary key (id_origen)
);

create table if not exists Farmaco (
	cod_barra_farmaco int auto_increment,
	nombre varchar (50) not null,
	id_origen tinyint not null,
    constraint pk_farmaco primary key (cod_barra_farmaco),
    constraint fk_id_origen foreign key (id_origen) references origen (id_origen)
);