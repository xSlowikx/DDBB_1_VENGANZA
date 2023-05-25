create schema if not exists ejercicio2;
use ejercicio2;

create table if not exists avion (
	nro_avion int auto_increment,
    tipo_avion varchar (50) not null,
    modelo varchar (50) not null,
    constraint pk_avion primary key (nro_avion)
);

create table if not exists vuelo(
	nro_vuelo int auto_increment,
    desde varchar (50) not null,
    hasta varchar (50) not null,
    fecha date not null,
    nro_avion int not null,
    constraint pk_vuelo primary key (nro_vuelo),
    constraint fk_nro_avion foreign key (nro_avion) references avion (nro_avion)
);

create table if not exists pasajero (
	nro_vuelo int,
    documento int,
    nombre varchar (50),
    constraint pk_pasajero primary key (nro_vuelo,documento),
    constraint fk_nro_vuelo foreign key (nro_vuelo) references vuelo (nro_vuelo)
);

#1.Hallar los números de vuelo desde el origen A hasta el destino F.

select nro_vuelo from vuelo
where desde = "A" and hasta = "F";

#2.Hallar los nombres de pasajeros y números de vuelo para aquellos pasajeros que viajan desde A a D.
#3.Hallar los tipos de avión para vuelos que parten desde C.
#4.Listar los distintos tipo y nro. de avión que tienen a H como destino.
#5.Mostrar por cada Avión (número y modelo) la cantidad de vuelos en que se encuentra registrado.
#6.Cuántos pasajeros diferentes han volado en un avión de modelo ‘B-777’
#7.Listar la cantidad promedio de pasajeros transportados por los aviones de la compañía, por tipo de avión.
#8.Hallar los tipos de avión que no son utilizados en algún vuelo que pase por B. 