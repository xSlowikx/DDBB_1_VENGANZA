CREATE DATABASE ModeloParcial2;
USE ModeloParcial2;

CREATE TABLE BICICLETA (
	id INT PRIMARY KEY, 
    rodado INT NOT NULL, 
    marca VARCHAR(20) NULL);
CREATE TABLE CASCO (
	idBici INT REFERENCES BICICLETA(id), 
    nro_casco INT NOT NULL, 
    talle VARCHAR(3) NOT NULL,
    PRIMARY KEY(idBici, nro_casco));

CREATE TABLE ACCESORIO (
	cod INT PRIMARY KEY, 
    nombre VARCHAR(50) NOT NULL, 
    personalizado VARCHAR(50) NULL);

CREATE TABLE ESTACION (
	cod INT PRIMARY KEY, 
    nombre VARCHAR(50) NOT NULL, 
    horario VARCHAR(10) NOT NULL, 
    ubicación VARCHAR(50) NOT NULL);
    
CREATE TABLE VECINO (
	tipodoc VARCHAR(3), 
    nro_doc INT,
    nombre VARCHAR(50) NOT NULL, 
    direccion VARCHAR(50) NULL, 
    foto BLOB NULL,
    PRIMARY KEY(tipodoc, nro_doc));

CREATE TABLE TIENE (
	idBici INT REFERENCES BICICLETA(id), 
    codAcc INT REFERENCES ACCESORIO(codAcc),
    PRIMARY KEY(idBici, codAcc));
    
CREATE TABLE OPERACION (
	id INT PRIMARY KEY AUTO_INCREMENT, 
    fecha_hora DATETIME NOT NULL, 
    codEstacion INT NOT NULL REFERENCES ESTACION(cod), 
    idBici INT NOT NULL REFERENCES BICICLETA(id), 
    tipo CHAR(1) NOT NULL, 
    tipodoc VARCHAR(3) NOT NULL, 
    nrodoc INT NOT NULL,
    CONSTRAINT FK_Operacion_Vecino FOREIGN KEY (tipodoc, nrodoc) REFERENCES VECINO(tipodoc, nro_doc));

-- ALTER TABLE OPERACION DROP
-- CONSTRAINT FK_Operacion_Vecino
/*
BICICLETA (id, rodado, marca) PK=id
ACCESORIO (cod, nombre, personalizado) PK=cod
ESTACION (cod, nombre, horario, ubicación) PK=cod
VECINO (tipodoc, nro_doc, nombre, direccion, foto) PK=(tipodoc, nrodoc)
TIENE (idBici, codAcc) PK=(idBici, codAcc)
OPERACION (id, fecha_hora, codEstacion, idBici, tipo, tipodoc, nrodoc) PK=id
Lista de Claves Foráneas
CASCO.idBici --> BICICLETA.id
TIENE.idBici --> BICICLETA.id
TIENE.codAcc --> ACCESORIO.cod
OPERACION.CodEstacion --> ESTACION.cod
OPERACION.IdBici --> BICICLETA.id
OPERACION.tipodoc + nrodoc --> VECINO.tipodoc + nrodoc
*/
/* 1. DDL */
-- Construir la tabla OPERACION en el modelo físico y las necesarias para ésta, en AnsiSQL.
-- CREATE TABLE BICICLETA, VECINO, ESTACION, OPERACION

/* 2. ABM */
-- a. Insertar dos registros para una tabla a elección, que tengan más de 2 campos.
INSERT INTO VECINO
	(tipodoc, nro_doc, nombre, direccion)
VALUES
	('DNI', 33459054, 'Juan Sebastian Quevedo', 'Florencio Varela 1903'),
    ('DNI', 13245678, 'Eliana Pardeux', 'Florencio Varela 1903');
    
insert into bicicleta
	(id, rodado, marca)
values
	(1, 29, "Raleigh"),
	(2, 26, "Vairo");
    
insert into bicicleta
	(id, rodado, marca)
values
	(3, 29, "SLP"),
	(4, 26, "CLIMBEX"),
    (5, 29, "FIREBIRD");
    
insert into casco
	(idBici, nro_casco, talle)
values
	(1, 1, 'XXL'),
	(1, 2, 'L'),
    (2, 3, 'M'),
    (2, 4, 'L');
    
insert into casco
	(idBici, nro_casco, talle)
values
	-- (3, 1, 'XXL'),
	(4, 2, 'L'),
    (5, 5, 'M'),
    (5, 4, 'L'),
    (5, 3, 'M'),
    (5, 6, 'M');
    
 insert into accesorio
	(cod, nombre, personalizado)
values
	(1, "Asiento para niño", "MXV-500"),
    (2, "Asiento para adultos", "MGQ-544");
    
 insert into accesorio
	(cod, nombre, personalizado)
values
	(3, "Carrito de compras", "AAS-558"),
    (4, "Linterna frontal", "ASD-135"),
    (5, "Luces de giro" ,"AAD-514");
    
insert into tiene
	(idBici, codAcc)
values
	(1, 1);
    
insert into tiene
	(idBici, codAcc)
values
	(1, 3),
    (1,5),
    (2,2),
    (2,4),
    (2,5),
    (3,5),
    (4,1),
    (5,3),
    (5,2),
    (1,4),
    (2,3);
    
insert into tiene
	(idBici, codAcc)
values
	(1, 2);

insert into estacion
	(cod, nombre, horario, ubicación)
values
	(1, "Estacion 1", "Mañana", "San justo"),
    (2, "Estacion 2", "Tarde", "San petersburgo"),
    (3, "Estacion 3", "Noche", "La Plata");
    
insert into vecino
	(tipodoc, nro_doc, nombre, direccion)
values
	("DNI",44548546,"Jorge Avidal","asdasd"),
    ("DNI",44544519,"Laura Succini","asdsad1"),
    ("DNI",445487949,"Roberto Mazo","123123as"),
    ("DNI",44549849,"Hernesto Mejunte","asda5"),
    ("DNI",44546899,"Sandra Petruzo","asda6"),
    ("DNI",44587649,"Ignacio Lafuente","ydf7"),
    ("DNI",44532649,"Tupac Amaru","asdsa1"),
    ("DNI",44514649,"Toro Sentado","askdjask79");
    
insert into operacion
	(fecha_hora, codEstacion, idBici, tipo, tipodoc, nrodoc)
values
	("20230501",1,1,"R","DNI",44548546),
    ("20230618",1,1,"R","DNI",445487949),
    ("20230601",1,1,"R","DNI",44546899),
    ("20230819",1,1,"R","DNI",44549849),
    ("20230501",1,1,"D","DNI",44548546),
    ("20230618",1,1,"D","DNI",445487949),
    ("20230601",1,1,"D","DNI",44546899),
    ("20231109",1,1,"R","DNI",44546899),
    ("20231111",1,1,"R","DNI",445487949),
    ("20230514",1,1,"D","DNI",44514649);
    
insert into operacion
	(fecha_hora, codEstacion, idBici, tipo, tipodoc, nrodoc)
values
	("20230715",2,2,"R","DNI",44546899),
    ("20230715",2,2,"D","DNI",44546899),
	("20230801",3,5,"R","DNI",44546899),
    ("20230801",3,5,"D","DNI",44546899),
    ("20231215",1,3,"R","DNI",44546899);

insert into operacion
	(fecha_hora, codEstacion, idBici, tipo, tipodoc, nrodoc)
values
("20231215",1,3,"D","DNI",44546899);

-- b. Eliminar todos los cascos del rango de bicicletas con id=101 a id=123, que sean talle P.
delete from casco
where idBici between 101 and 123
and talle like 'p';

DELETE FROM BICICLETA
WHERE id BETWEEN 101 AND 123 AND talle LIKE 'P';

-- c. Actualizar todos los accesorios que contengan personalizado ‘MVK-’ a ‘ECO RRR’.
UPDATE ACCESORIO
SET personalizado = 'ECO RRR'
WHERE perzonalizado LIKE '%MVK-%';

/* 3. DML */
-- a. Listar las bicis que tienen asiento para niño y cuántos cascos tienen asociados.

select bicicleta.id, count(casco.nro_casco) as cantidad_cascos from casco join bicicleta
on casco.idBici = bicicleta.id
where exists (select 1 from tiene join accesorio
				on tiene.codAcc = accesorio.cod
                where accesorio.nombre like 'asiento para niño'
				and bicicleta.id = tiene.idBici)
group by bicicleta.id;

-- b. Mostrar código y rodado de las bicicletas que tienen todos los accesorios.

select id, rodado from bicicleta
where not exists (select 1 from accesorio
					where not exists (
										select 1 from tiene
                                        where tiene.idBici = bicicleta.id
                                        and tiene.codAcc = accesorio.cod));

-- c. ¿Cuál es la cantidad de operaciones en el primer trimestre del año?

select count(*) from operacion
where fecha_hora between '20230401' and '20230701';

-- d. ¿Cuál es la cantidad de bicis no devueltas en el último mes, en el día a día? ¿Y desde que empezó a funcionar el sistema? Se puede suponer que arrancó el 1/04/2022.

select count(*) as "Cantidad de bicis no devueltas en el dia a dia" from operacion a
where tipo = "R"
and not exists (select 1 from operacion b
				where tipo = "D"
                and a.idBici = b.idBici
                and a.codEstacion = b.codEstacion
                and a.tipodoc = b.tipodoc
                and a.nrodoc = b.nrodoc
                and date(a.fecha_hora) = date(b.fecha_hora));

-- e. ¿Cuáles son las bicis con más cantidad de accesorios?

select bicicleta.id from bicicleta
where exists (
	select 1 from (
		select cod_bici, max(tiene_x_accesorios) as cantidad_maxima_usados
		from (
			select tiene.idBici as cod_bici, count(*) as tiene_x_accesorios
			from tiene
			group by
			tiene.idBici) as cantidad_accesorios) as bicis_maximas
where bicis_maximas.cod_bici = bicicleta.id);

-- Preparacion de la tabla intermedia --
select
	tiene.idBici as cod_bici, count(*) as tiene_x_accesorios
		from
			tiene
		group by
			tiene.idBici;

-- f. Listar nombre y ubicación de las estaciones preferidas de los vecinos, entendiendo preferidas como las que concentran más préstamos.

-- Basicamente, lo que defini para esta consulta es que, las estaciones que concentran mas prestamos son aquellas que tienen mas prestamos que el promedio de prestamos global --

select estacion.nombre, estacion.ubicación, count(*) as cantidad_usos from estacion
join operacion on estacion.cod = operacion.codEstacion
where operacion.tipo = "R"
group by operacion.codEstacion
having count(*) > (select avg(prestamos_efectuados.usos) from (select codEstacion, count(*) as usos from operacion
				   where tipo = "R"
				   group by codEstacion) as prestamos_efectuados);


select avg(usos) from (select codEstacion, count(*) as usos from operacion
where tipo = "R"
group by codEstacion) as prestamos_efectuados;


-- g. Listar los nombres de vecinos alfabéticamente de U a W (Ulises Bueno, Vicente López, Will Smith) junto a la cantidad de estaciones distintas que uso en la última semana,
-- aún si no se prestó bicicleta (0 estaciones esa semana).

select vecino.nombre, count(distinct operacion.codEstacion) AS "Estaciones distintas"
from vecino
left join operacion on vecino.tipodoc = operacion.tipodoc 
	and vecino.nro_doc = operacion.nrodoc
    and operacion.fecha_hora > '20230601'
where nombre between "A" and "Z"
group by vecino.tipodoc, vecino.nro_doc, vecino.nombre
order by vecino.nombre;

-- h. Mostrar el ránking de vecinos que han usado el sistema con más de 3 bicis distintas y que las devolvieron según las reglas.

select vecino.nombre from vecino;

select vecino.nombre
from vecino join operacion op1 on vecino.tipodoc = op1.tipodoc and vecino.nro_doc = op1.nrodoc
where op1.tipo = "R"
and exists (
			select 1 from operacion op2
            where op2.tipo = "D"
            and op2.tipodoc = op1.tipodoc
            and op2.nrodoc = op1.nrodoc
            and op2.idBici = op1.idBici
            and date(op2.fecha_hora) = date(op1.fecha_hora))
group by vecino.tipodoc, vecino.nro_doc, vecino.nombre
having count(distinct op1.idBici) > 3;

-- i. ¿Cómo medirías el éxito del programa de Eco Transporte? Armar una consulta que lo resuelva.
-- PORCENTAJE DE BICICLETAS NO DEVUELTAS --
select reservadas_xdia.reservas from
			(select date(operacion.fecha_hora) as fecha, count(*) as reservas from operacion
			where operacion.tipo = "R"
			group by date(operacion.fecha_hora)) as reservadas_xdia;

(select date(operacion.fecha_hora) as fecha, count(*) as devoluciones from operacion
where operacion.tipo = "D"
group by date(operacion.fecha_hora)) as devueltas_xdia;