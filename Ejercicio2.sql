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

#nro_vuelo
select * from vuelo
where desde = "A" and hasta = "F";

#2.Hallar los nombres de pasajeros y números de vuelo para aquellos pasajeros que viajan desde A a D.

#pasajero.nro_vuelo, pasajero.nombre
select * from pasajero
join vuelo on pasajero.nro_vuelo = vuelo.nro_vuelo
where desde = "A" and hasta = "D";

#3.Hallar los tipos de avión para vuelos que parten desde C.

#avion.tipo_avion
select * from vuelo
join avion on vuelo.nro_avion = avion.nro_avion
where desde = "C";

#4.Listar los distintos tipo y nro. de avión que tienen a H como destino.

#distinct avion.nro_avion, avion.tipo_avion
select * from vuelo
join avion on vuelo.nro_avion = avion.nro_avion
where hasta = "H";
#group by tipo_avion

#5.Mostrar por cada Avión (número y modelo) la cantidad de vuelos en que se encuentra registrado.

#Si cambio el select por avion.nro_avion, avion.modelo resuelvo la consulta con lo requerido
select *, count(avion.nro_avion) as cantidad_vuelos from vuelo
join avion on vuelo.nro_avion = avion.nro_avion
group by avion.nro_avion;
#order by vuelo.nro_vuelo


#6.Cuántos pasajeros diferentes han volado en un avión de modelo ‘B-777’

#Si reemplazo el * por pasajero.documento, sintesizo la informacion y solamente vere el documento y la cantidad de vuelos que tomo
select *, count(pasajero.documento) as vuelos_tomados from pasajero
join vuelo on pasajero.nro_vuelo = vuelo.nro_vuelo
join avion on vuelo.nro_avion = avion.nro_avion
where avion.modelo like "%777%"
group by pasajero.documento;

#7.Listar la cantidad promedio de pasajeros transportados por los aviones de la compañía, por tipo de avión.

select avion.nro_avion, avg(cantpasajeros)
from avion
join
(
	select vuelo.nro_vuelo, vuelo.nro_avion, count(documento) as cantpasajeros
    from vuelo
    join pasajero on pasajero.nro_vuelo = vuelo.nro_vuelo
    group by vuelo.nro_vuelo, vuelo.nro_avion
    ) cant on cant.nro_avion = avion.nro_avion
group by avion.tipo_avion;

select avion.tipo_avion, avg(pasajeros_xvuelo.cantidad)
from (select vuelo.nro_avion as nroavion, count(documento) as cantidad
	from pasajero
    join vuelo on pasajero.nro_vuelo = vuelo.nro_vuelo
	group by vuelo.nro_vuelo, vuelo.nro_avion) as pasajeros_xvuelo
join avion on pasajeros_xvuelo.nroavion = avion.nro_avion
group by avion.tipo_avion;


#8.Hallar los tipos de avión que no son utilizados en algún vuelo que pase por B. 

select distinct tipo_avion from avion
where not exists (select 1 from vuelo
					where desde = "B" or hasta = "B"
                    and vuelo.nro_avion = avion.nro_avion);