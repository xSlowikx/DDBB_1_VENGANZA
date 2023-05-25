use ddbb_clase;

create table if not exists especialidad (
	cod_esp int AUTO_INCREMENT,
    descripcion varchar (50) not null,
    constraint pk_especialidad primary key (cod_esp)
);

create table if not EXISTS area (
	cod_area varchar (2),
    descripcion varchar (50) not null,
    constraint pk_area primary key (cod_area)
);

create table if not exists empleado (
	nro int AUTO_INCREMENT,
	nombre varchar (50) not null,
    cod_esp int not null,
    nro_jefe int,
    sueldo float not null,
    f_ingreso date not null,
    constraint pk_empleado primary key (nro),
    constraint fk_cod_esp foreign key (cod_esp) references especialidad (cod_esp),
    constraint fk_jefe foreign key (nro_jefe) references empleado (nro)
);

create table if not exists trabaja (
	nro_emp int,
    cod_area varchar (2),
    constraint pk_trabaja primary key (nro_emp,cod_area),
    constraint fk_nro_emp foreign key (nro_emp) references empleado (nro),
    constraint fk_cod_area foreign key (cod_area) references area (cod_area)
);

ALTER TABLE empleado auto_increment = 1000;

DELETE from especialidad;

#Ejercicio 7
select nro,nombre from empleado
where sueldo < 8000 and nombre = "pedro";

#Ejercicio 8 -- USO DEL [NOT] BETWEEN
select nombre from empleado
where f_ingreso not between '2008-01-01' and '2008-12-31';

#Ejercicio 9 -- USO DEL IS [NOT] NULL
select nombre from empleado
where nro_jefe is null;

#Ejercicio 10 -- USO DEL LIKE, "%" PARA OCURRENCIAS MULTIPLES
#"_" PARA OCURRENCIAS SIMPLES
select nombre, sueldo from empleado
where nombre like "j%";

#Ejercicio 11 -- USO DEL [NOT] IN (PERTENENCIA DE CONJUNTOS)
select nombre, sueldo from empleado
where nro in (1001,1002,5,7,9);

#Ejercicio 12 -- USO DEL DISTINCT (EVITA REPETICIONES DE UN MISMO CAMPO EN EL SELECT)
select distinct nro_jefe from empleado
where nro_jefe is not null;

#PRACTICA INSERT INTO
insert into empleado (nombre,cod_esp,sueldo,f_ingreso) values ("Hector",2,5000,"2020-01-01");
select * from empleado;
insert into empleado (nombre,cod_esp,sueldo,f_ingreso) values ("Josejose","2","100000","2020-01-01");

#Ejercicio 1 - 23/05/2023
select empleado.nombre, especialidad.descripcion from empleado, especialidad
where empleado.cod_esp = especialidad.cod_esp;

#JOIN (INNER) junta las tablas donde se cumple la condicion de junta en ambas tablas.
#tablax JOIN tablax2 ON condicion de junta
select empleado.nombre, especialidad.descripcion
from empleado join especialidad
ON empleado.cod_esp = especialidad.cod_esp;

#Ejercicio 2 - 23/05/2023
select empleado.nombre, area.descripcion from
empleado join trabaja
on empleado.nro = trabaja.nro_emp
join area on trabaja.cod_area = area.cod_area
where trabaja.cod_area = "A1";

#Ejercicio 3 - 23/05/2023
select em1.nombre, em1.nro_jefe, em2.nombreempleadoempleado
from empleado em1 join empleado em2
on em1.nro_jefe = em2.nro;

#Ejercicio 4 - 23/05/2023
#JOIN (LEFT) junta las tablas, respetando la primer tabla y completa con nulos de la segunda si no hay registros de la primer tabla que cumplan la condicion
select em1.nombre, em1.nro_jefe, em2.nombre
from empleado em1 left join empleado em2
on em1.nro_jefe = em2.nro;

#Ejercicio 5 - 23/05/2023

select empleado.nombre, area.descripcion from
empleado join trabaja on empleado.nro = trabaja.nro_emp
join area on trabaja.cod_area = area.cod_area
where area.descripcion = "Area 1"
and empleado.sueldo > 5000;

select empleado.nombre, area.descripcion from
empleado join trabaja on empleado.nro = trabaja.nro_emp
join area on trabaja.cod_area = area.cod_area;

select * from trabaja;

#RIGHT JOIN, lo contrario a left join, respeta la tabla de la derecha

#NATURAL JOIN, joinea por los campos que tengan el mismo nombre, basicamente no requiere un ON y los combina por el mismo nombre

#