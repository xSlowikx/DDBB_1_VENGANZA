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

#CLASE DE CONSULTAS DE AGREGACION

# ** CONSIDERACION GENERAL: LOS SELECT ACTUAN SOBRE LA TABLA TEMPORAL AGRUPADA, SI BIEN EL MOTOR HACE COSAS RARAS SI LE MANDO EN EL SELECT COSAS QUE NO ESTAN EN EL GROUP BY, EXCEPTUANDO --
#-- LAS FUNCIONES DE AGREGACION, POR OTRO LADO, SE DEBE UTILIZAR EN EL SELECT UNICAMENTE COSAS DECLARADAS EN EL "GROUP BY", TODO LO QUE ESTE EN EL SELECT CAE AL GROUP BY, AUNQUE NO --
#-- NECESARIAMENTE TODO LO QUE ESTE EN EL GROUP BY TIENE QUE IR AL SELECT **

#Ejercicio 1
select count(*) from empleado;

#Ejercicio 2
#Ejercicio 3

#Ejercicio 4
select * from empleado;

select nombre, cod_esp, min(sueldo) from empleado
group by cod_esp;

#Ejercicio 5

select cod_esp, min(sueldo) sueldo_minimo from empleado
group by cod_esp
having sueldo_minimo > 3000;

#Ejercicio 6
select cod_esp, min(sueldo) from empleado
group by cod_esp
having count(*) > 1;


#Ejercicio 7

select especialidad.cod_esp, especialidad.descripcion, count(*)
from empleado join especialidad on empleado.cod_esp = especialidad.cod_esp
group by especialidad.cod_esp, especialidad.descripcion;

#Ejercicio 8
select nro_jefe, count(*) from empleado
group by nro_jefe
having nro_jefe is not null;

#Ejercicio 9
select e2.nombre, e1.nro_jefe, count(*) from empleado e1 join empleado e2 on e1.nro_jefe = e2.nro
group by e2.nro_jefe, e2.nombre;

#Ejercicio 10

select count(distinct nro_jefe) as cantidad_jefes from empleado;

#CONSULTAS DE MODIFICACION DE TABLAS, INSERT (DENUEVO), UPDATE Y DELETE

#SINTAXIS UPDATE: UPDATE tabla SET campo1 = x, campo2= y, campo3= z, WHERE condicion;
#Modificar codigo de especialidad del empleado 5 a la numero 3

UPDATE empleado
SET cod_esp = 3
WHERE nro = 5;

#Incrementar en $1000 el sueldo de todos los empleados
update empleado set sueldo = sueldo + 1000
where nro is not null;

#SUBCONSULTAS - INTRODUCCION

#Ejercicio 1 - Listar los nombres de los empleados que trabajan en algun area que termina con la letra S
#Normalmente para evitar repetidos y que los registros esten bien identificados, es una idea realizar la agrupacion con group by

select * from empleado join trabaja
on empleado.nro = trabaja.nro_emp
join area
on trabaja.cod_area = area.cod_area
where area.descripcion like "%s"
group by empleado.nro, empleado.nombre;

#MISMO RESULTADO, PERO UTILIZANDO UNA SUBCONSULTA
#PARA UTILIZAR IN || NOT IN, NUESTRA SUBCONSULTA TIENE QUE DEVOLVER UN SOLO CAMPO Y EL TIPO DE DATO DEL CAMPO TIENE QUE SER COMPATIBLE PARA LA COMPARACION PREVIA, VAMOS A --
# -- REALIZARNOS LA PREGUNTA, "EL VALOR QUE ESTOY BUSCANDO, PERTENECE AL RESULTADO O, ESTÁ EN EL CONJUNTO QUE ME DEVUELVE EL 'IN'?????

select empleado.nro, empleado.nombre from empleado
where empleado.nro in (
	select trabaja.nro_emp from trabaja
    join area on trabaja.cod_area = area.cod_area
    where descripcion like "%s"
    );
    

#SUBCONSULTAS CON EL PREDICADO "EXISTS" || "NOT EXISTS", PARA SU USO, ESTO DEVUELVE VERDADERO O FALSO, SI ES VERDADERO LO MUESTRA, SI NO ES VERDADERO NO LO MUESTRA --
# -- SI EL RESULTADO DE LA SUBCONSULTA ES ALMENOS 1 REGISTRO, SE TOMA COMO VERDADERO Y SE CONTRASTA CONTRA EL SELECT PRINCIPAL Y EL FROM, ES FALSO CUANDO NO DEVUELVE NADA --
# -- LA SUBCONSULTA
#PARA EL USO DEL EXISTS, DEBEMOS TENER EN CUENTA AGREGAR UNA CONDICION EXTRA DENTRO DE LA SUBCONSULTA, YA QUE SINO ES PROBABLE QUE SIEMPRE DEVUELVA TRUE, Y TAMBIEN PARA OPTIMIZAR --
# -- LAS CONSULTAS, PODEMOS PONER "SELECT 1" YA QUE NO IMPORTA QUE DEVUELVE EL EXISTS, SINO QUE SI ES TRUE O FALSE DADO QUE SE BASA EN LA CANTIDAD DE REGISTROS DEVUELTOS

select empleado.nro, empleado.nombre from empleado
where exists (
	select trabaja.nro_emp from trabaja
    join area on trabaja.cod_area = area.cod_area
    where descripcion like "%s"
    and empleado.nro = trabaja.nro_emp
    );
    
#Ejercicio 2 - Listar los nombres de los empleados que ganan el sueldo maximo
#SUBCONSULTA COMO VALOR -- PARA ESTE CASO, ESTO VA A ESTAR DEVOLVIENDO UN VALOR, POR LO CUAL LA COMPARACION TIENE QUE REALIZARSE CON LA PALABRA "ES", POR LO CUAL DEBEMOS --
#-- ESTAR CONSCIENTES AL UTILIZAR EL "=", ESTE TIPO DE SUBCONSULTA DEBE DEVOLVER UN UNICO REGISTRO O SE ROMPE TODO
select * from empleado
where empleado.sueldo = (
	select max(empleado2.sueldo) from empleado empleado2
    );
    
#Ejercicio 3 - indicar la descripcion de aquellas areas sin empleados
#USO DEL NOT EXISTS, TENEMOS QUE PEDIRLE "1 REGISTRO QUE NO CUMPLA CON LA CONDICION QUE LE ESTOY BRINDANDO A LA SUBCONSULTA", NUEVAMENTE AL SER UN "EXISTS" HAY QUE LINKEAR --
#-- LA CONSULTA INTERIOR CON LA CONSULTA EXTERIOR
select * from area
where not exists (
	select 1 from trabaja 
    where trabaja.cod_area = area.cod_area);

#TAMBIEN PODEMOS REALIZARLO CON UN "NOT IN" QUE AL TRABAJAR COMO CONJUNTO, TEORICAMENTE NO APARECERIA COMO REPETIDO O, SI LO ESTA, EL RESULTADO ES EL MISMO
select * from area
where area.cod_area not in (
	select cod_area
    from trabaja);
    
select * from area left join trabaja on trabaja.cod_area = area.cod_area
where trabaja.cod_area is null;

#Ejercicio 4 (DIVISION) - Listar el nombre de los empleados que trabajan en todas las areas de la empresa
#PRIMERA APROXIMACION, UTILIZAR UN COUNT Y AGRUPACIONES
select empleado.nro, empleado.nombre from empleado join trabaja on empleado.nro = trabaja.nro_emp
group by empleado.nro, empleado.nombre
having count(trabaja.nro_emp) = (select count(*) from area);

#SEGUNDA APROXIMACION, USANDO SUBCONSULTAS A TRAVES DEL "NOT EXISTS"
select * from empleado
where not exists (
	select 1 from area
    where not exists (select 1 from trabaja
						where trabaja.nro_emp = empleado.nro
                        and trabaja.cod_area = area.cod_area
    ));
    
select * from area where not exists (select 1 from trabaja where trabaja.cod_area = area.cod_area);

#OPERACIONES DE CONJUNTO 

#UNION: ESTA OPERACION JUSTAMENTE SIMBOLIZA LA UNION ENTRE DOS CONJUNTOS, Y LO QUE HACE ES JUNTAR LOS REGISTROS DE DOS TABLAS, OMITIENDO LA REPETICION DE LOS REGISTROS QUE --
#-- APARECEN EN AMBAS
#UNION ALL: TODO CON TODO

select nro, nombre from empleado union all (select * from area);