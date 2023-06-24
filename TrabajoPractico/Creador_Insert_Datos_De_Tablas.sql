-- Insertar en Origen (del farmaco)--
insert into origen values
(1,"Natural"),
(2,"Artificial");

-- Insertar tipos de compuestos farmacologicos --
insert into tipo_compuesto (descripcion) values
("Medicamento"),
("Vacuna"),
("Suero"),
("Adyuvante");

-- Insertar tipos de procedimientos --
insert into tipo_procedimiento (descripcion) values 
("Superficial"),
("Invasivo");

-- Insertar tipos de tratamiento --
insert into Tipo_tratamiento (id_tipo_tratamiento, descripcion, id_tipo_procedimiento) values
(1, 'Diagnostico', 1),
(2, 'Diagnostico', 2),
(3, 'Prescriptivo', 1),
(4, 'Prescriptivo', 2),
(5, 'Curativo', 1),
(6, 'Curativo', 2);

-- Insertar datos de personas --
/*
insert into Persona values
(22389825768, 'Mario', 'Lopez', 29, null),
(22345345896, 'Mario', 'Vargas', 34, null),
(29389825768, 'Hector', 'Lopez', 39, null),
(34876927497, 'Esteban', 'Gomez', 52, null),
(29826483628, 'Cristian', 'Avarez', 47, null),
(19278279337, 'Luis', 'Romero', 30, null),
(29389748628, 'Raul', 'Navarro', 19, null),
(48729473937, 'Matias', 'Torres', 23, null),
(28827862892, 'Maria', 'Muñoz', 40, null),
(89182836386, 'Estefania', 'Diaz', 29, null),
(89272818193, 'Pedro', 'Fernandez', 19, null),
(62827386287, 'Ana', 'Rodriguez', 33, null),
(20927836372, 'Carolina', 'Perez', 35, null),
(29373827468, 'Damian', 'Garcia', 28,28827862892);

-- Ingresar algunas madres --

INSERT INTO Persona (cuil_persona, nombre, apellido, edad, cuil_madre) VALUES
    ('2012345789', 'María', 'Rodríguez', 35, NULL),
    ('2012349788', 'Laura', 'Fernández', 32, NULL),
    ('2012354787', 'Ana', 'López', 40, NULL),
    ('201239786', 'Gabriela', 'Gómez', 38, NULL),
    ('20123456785', 'Carolina', 'Martínez', 37, NULL),
    ('20123755484', 'Natalia', 'Sánchez', 33, NULL),
    ('20398945783', 'Valeria', 'Paredes', 39, NULL),
    ('20123456782', 'Florencia', 'Ramírez', 42, NULL),
    ('20123446781', 'Camila', 'Acosta', 36, NULL),
    ('20123456780', 'Lucía', 'Torres', 34, NULL),
    ('20123464979', 'Marina', 'Medina', 41, NULL),
    ('20123456778', 'Verónica', 'Castro', 43, NULL),
    ('20123446177', 'Adriana', 'Herrera', 31, NULL),
    ('20123455876', 'Paula', 'Ríos', 44, NULL),
    ('20123487975', 'Silvia', 'González', 45, NULL);

INSERT INTO Persona (cuil_persona, nombre, apellido, edad, cuil_madre) VALUES
    ('20123456700', 'Juan', 'García', 10, null),
	('20123456800', 'María', 'Rodríguez', 5, null),
    ('20123456900', 'Carlos', 'Martínez', 15, null),
    ('20123457000', 'Laura', 'Fernández', 12, null),
    ('20123457100', 'Ana', 'López', 18, null),
    ('20123457200', 'Gabriel', 'Gómez', 7, null),
    ('20123457300', 'Sofía', 'Pérez', 9, null),
    ('20123457400', 'Luis', 'González', 14, null),
    ('20123457500', 'Martina', 'Silva', 11, null),
    ('20123457600', 'Diego', 'Sánchez', 16, null),
    ('20123457700', 'Lucía', 'Ramírez', 19, null),
    ('20123457800', 'Federico', 'Acosta', 8, null),
    ('20123457900', 'Valentina', 'Torres', 13, null),
    ('20123458000', 'Javier', 'Herrera', 3, null),
    ('20123458100', 'Camila', 'Ríos', 17, null),
    ('20123458200', 'Lucas', 'Castro', 2, null),
    ('20123458300', 'Valeria', 'Medina', 6, null),
    ('20123458400', 'Nicolás', 'Paredes', 20, null),
    ('20123458500', 'Agustina', 'Ferreyra', 4, null),
    ('20123458600', 'Juan Pablo', 'Ortega', 1, null),
    ('20123458700', 'Lara', 'Mendoza', 10, null),
    ('20123458800', 'Ignacio', 'Molina', 5, null),
    ('20123458900', 'Catalina', 'Luna', 15, null),
    ('20123459000', 'Mariano', 'Vargas', 12, null),
    ('20123459100', 'Isabella', 'Ledesma', 18, null),
    ('20123459200', 'Maximiliano', 'Ramos', 7, null),
    ('20123459300', 'Renata', 'Benítez', 9, null),
    ('20123459400', 'Facundo', 'Ponce', 14, null),
    ('20123459500', 'Celeste', 'Aguirre', 11, null),
    ('20123459600', 'Iván', 'Figueroa', 16, null),
    ('20123459700', 'Antonella', 'Guzmán', 19, null),
    ('20123459800', 'Ezequiel', 'Cáceres', 8, null),
    ('20123459900', 'Martina', 'Rosales', 13, null),
    ('20123460000', 'Matías', 'Soria', 3, null),
    ('20123460100', 'Agustina', 'Pereyra', 17, null),
    ('20123460200', 'Luciano', 'Moreno', 2, null),
    ('20123460300', 'Julieta', 'Cardozo', 6, null),
    ('20123460400', 'Joel', 'Correa', 20, null),
    ('20123460500', 'Bianca', 'Lorenzo', 4, null),
    ('20123460600', 'Lucas', 'Giménez', 1, null),
    ('20123460700', 'Victoria', 'Villa', 10, null),
    ('20123460800', 'Gonzalo', 'Santos', 5, null),
    ('20123460900', 'Rocío', 'Navarro', 15, null),
    ('20123461000', 'Santiago', 'Maldonado', 12, null),
    ('20123461100', 'Delfina', 'Romero', 18, null),
    ('20123461200', 'Facundo', 'Vera', 7, null),
    ('20123461300', 'Jazmín', 'Juárez', 9, null),
    ('20123461400', 'Bruno', 'Olivera', 14, null),
    ('20123461500', 'Micaela', 'Campos', 11, null),
    ('20123461600', 'Luciano', 'Mansilla', 16, null),
    ('20123461700', 'Martina', 'Roldán', 19, null),
    ('20123461800', 'Ignacio', 'Escobar', 8, null);
    */
-- Asignando madres aleatorias a los chicos menores a 20 --
UPDATE persona
SET cuil_madre = (
    SELECT p.cuil_persona
    FROM (SELECT cuil_persona FROM persona WHERE edad BETWEEN 25 AND 35 ORDER BY RAND() LIMIT 1) AS p
)
-- aca para evitar que siempre me asigne el mismo cuil_madre fui rotando la condicion del where con distintos segmentos de edad
WHERE edad between 0 and 3
limit 25;

-- consultando la cantidad de hijos de algunas madres --
select madre.cuil_persona, madre.nombre, madre.apellido, count(*) as cantidad_hijos
from persona as madre join persona as hijo
on madre.cuil_persona = hijo.cuil_madre
group by madre.cuil_persona, madre.nombre, madre.apellido;

-- Insertando registros en diagnostico --
insert into Diagnostico (cie10, descripción) values
('Z99.5', 'Diabetes mellitus tipo 2'),
('Z35.3', 'Anemia ferropénica'),
('G30.5', 'Enfermedad de Alzheimer'),
('L21.5', 'Trastorno del espectro autista'),
('E11.9', 'Artritis reumatoide'),
('V10.4', 'Migraña'),
('J45.3', 'Enfermedad renal crónica'),
('F32.4', 'Asma'),
('C50.5', 'Cáncer de mama'),
('G20.8', 'Infarto agudo de miocardio');

-- Insertando registros en antecedente -- 