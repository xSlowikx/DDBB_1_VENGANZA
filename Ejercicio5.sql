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

#1 Cuál es el tiempo de espera promedio de los viajes del año 2005?

select avg(tiempo_espera) from viaje
where fecha between "20050101" and "20051231";

select * from viaje;

#2 Listar el nombre de los clientes que hayan viajado en todos los autos.

select nombre from cliente
where not exists (select 1 from auto
					where not exists (
										select 1 from viaje
                                        where cliente.nro_cliente = viaje.nro_cliente
                                        and auto.patente = viaje.patente));

-- Hacer que el cliente 30 viaje en todos los autos --
insert into viaje
	(nro_chofer, nro_cliente, patente, fecha, km_totales, tiempo_espera)
values
    (5,30,'AAA123',"20050531",50, 003500),
    (5,30,'BBB456',"20050531",50, 003500),
    (5,30,'CCC789',"20050531",50, 003500),
    (5,30,'EEE345',"20050531",50, 003500),
    (5,30,'FFF678',"20050531",50, 003500),
    (5,30,'HHH234',"20050531",50, 003500),
    (5,30,'III567',"20050531",50, 003500),
    (5,30,'JJJ890',"20050531",50, 003500),
    (5,30,'KKK123',"20050531",50, 003500),
    (5,30,'ZZZ999',"20050531",50, 003500),
    (5,30,'MMM789',"20050531",50, 003500),
    (5,30,'NNN012',"20050531",50, 003500),
    (5,30,'OOO345',"20050531",50, 003500),
    (5,30,'PPP678',"20050531",50, 003500),
    (5,30,'QQQ901',"20050531",50, 003500),
    (5,30,'RRR234',"20050531",50, 003500),
    (5,30,'SSS567',"20050531",50, 003500),
    (5,30,'TTT890',"20050531",50, 003500);


#3 Listar nombre y teléfono de los choferes que no hayan manejado algún vehículo de modelo posterior al año 2010.

select nombre, telefono
from chofer
where not exists (select 1 from viaje join auto on viaje.patente = auto.patente
					where chofer.nro_chofer = viaje.nro_chofer
                    and auto.modelo > "2010");

#4 Listar los kilómetros realizados en viajes por cada auto (patente y modelo).

select auto.patente, auto.modelo, sum(viaje.km_totales) from auto
join viaje on auto.patente = viaje.patente
group by viaje.patente;

#5 Mostrar el costo promedio de los viajes realizados por cada auto (patente), para viajes de clientes de la localidad de Ramos Mejía.

select auto.patente, avg(costos_viaje.costo)
from auto join (select auto.patente, (viaje.km_totales * 100) as costo
				from auto join viaje on auto.patente = viaje.patente
				join cliente on viaje.nro_cliente = cliente.nro_cliente
				where cliente.localidad = "Ramos Mejia") as costos_viaje
on costos_viaje.patente = auto.patente
group by auto.patente;

-- Insertar viajes para clientes de ramos mejia --

insert into viaje
	(nro_chofer, nro_cliente, patente, fecha, km_totales, tiempo_espera)
values
	(5,6,'AAA123',"20050425",15, 000500),
    (5,7,'BBB456',"20050630",25, 000500),
    (5,18,'CCC789',"20050531",35, 000500),
    (5,16,'EEE345',"20050630",15, 000500),
    (5,6,'FFF678',"20050531",25, 000500),
    (5,7,'HHH234',"20050531",35, 000500),
    (5,18,'III567',"20050427",50, 000500),
    (5,26,'JJJ890',"20050531",50, 000500),
    (5,6,'KKK123',"20050531",50, 000500),
    (5,6,'ZZZ999',"20050531",50, 000500),
    (5,6,'MMM789',"20050531",75, 000500),
    (5,18,'NNN012',"20050501",50, 000500),
    (5,7,'OOO345',"20050501",52, 000500),
    (5,7,'PPP678',"20050501",16, 000500),
    (5,7,'QQQ901',"20050401",28, 000500),
    (5,18,'RRR234',"20050425",50, 000500),
    (5,18,'SSS567',"20050531",50, 000500),
    (5,26,'TTT890',"20050630",50, 000500);

#6 Listar el costo total de los viajes realizados por cada chofer (número y nombre) cuyo nombre comienza con la letra A.

select chofer.nro_chofer, nombre, sum(viaje.km_totales * 100) as recaudacion_total
from chofer join viaje on chofer.nro_chofer = viaje.nro_chofer
where nombre like "a%"
group by chofer.nro_chofer, chofer.nombre;

#7 Mostrar la fecha de ingreso, el nombre del chofer y nombre de cliente, que hayan realizado el viaje más largo de la historia.

select fecha_ingreso Ingreso_Chofer, chofer.nombre Chofer, cliente.nombre Cliente
from chofer join viaje on chofer.nro_chofer = viaje.nro_chofer
join cliente on viaje.nro_cliente = cliente.nro_cliente
where viaje.km_totales = (select max(km_totales) from viaje);