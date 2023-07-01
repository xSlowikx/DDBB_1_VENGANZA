-- -----------------------------------------------
-- DATOS PARA CREAR UN COMPUESTO FARMACOLOGICO --

-- Insertar tipos de compuestos farmacologicos --
insert into tipo_compuesto (descripcion) values
("Medicamento"),
("Vacuna"),
("Suero"),
("Adyuvante");

-- Insertar paises origen para el fabricante --
insert into pais_origen
	(nombre)
values
	("Argentina"),
    ("Brasil"),
    ("Uruguay"),
    ("Tanzania"),
    ("Islas Maldivas"),
    ("España"),
    ("Italia"),
    ("EEUU"),
    ("Inglaterra"),
    ("Rusia");

-- Insertar fabricantes --
insert into fabricante
	(nombre, pais_origen)
values
	("Pepsico",3),
    ("Santaclara SA",4),
    ("Santa Monica Studios",8),
    ("Dreamworks Interactive",4),
    ("Svalanksa Kvaarsa",10);

-- Insertar partidas --
insert into partida values ();

-- Insertar lotes --
insert into lote
	(id_partida, nro_lote, vencimiento)
values
	(1000,500, "20230601"),
    (1000,700,"20230731"),
    (1005,350,"20231231"),
    (1005,500,"20230228"),
    (1008,800, "20230101");
    
-- Insertar en Origen (del farmaco)--
insert into origen values
(1,"Natural"),
(2,"Artificial");

-- Insertar farmacos --
insert into farmaco 
	(nombre, id_origen)
values
	("Morfina", 1),
    ("Menta", 1),
    ("Pilocarpus",1),
    ("Taxus",1),
    ("Sauce",1),
    ("Aspirina",2),
    ("Insulina",2),
    ("Omeprazol",2),
    ("Ibuprofeno",2),
    ("Diclofenac",2);
    
-- --------------------------------------------------
-- DATOS PARA PODER CREAR UN TRATAMIENTO --

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

-- Insertar gravedades --
insert into gravedad
	(descripcion)
values
	("Leve"),
    ("Moderado"),
    ("Grave"),
    ("Severo"),
    ("Muerte");
    
-- Insertar efectos_adversos --
insert into efecto_adverso
	(cod_efecto_adverso, nombre, nivel_gravedad)
values
	(334568, "Cefalea cronica", 3),
    (321654, "Somnolencia", 2),
    (147852, "Vomitos de sangre", 4),
    (258741, "Arritmia aguda", 5),
    (654987, "Desgarro de la pared intestinal", 4),
    (321486, "Exposicion de intestino delgado", 3),
    (123456, 'Náuseas', 2),
    (234567, 'Infección de herida', 3),
    (345678, 'Hemorragia', 4),
    (456789, 'Dolor crónico', 3),
    (567890, 'Mareos', 1),
    (678901, 'Confusión', 2),
    (789012, 'Fiebre', 2),
    (890123, 'Dificultad respiratoria', 4),
    (901234, 'Dolor abdominal', 3),
    (102345, 'Hipotensión', 3),
    (213456, 'Insuficiencia renal', 5),
    (324567, 'Infección del tracto urinario', 3),
    (435678, 'Trombosis venosa profunda', 4),
    (546789, 'Arritmia cardíaca', 4),
    (657890, 'Neumonía', 4),
    (768901, 'Hematomas', 2),
    (879012, 'Dolor de cabeza', 1),
    (980123, 'Vómitos', 2),
    (109234, 'Lesión de nervios', 4),
    (210345, 'Desmayo', 3),
    (321456, 'Inflamación', 2),
    (432567, 'Problemas de cicatrización', 3),
    (543678, 'Dehiscencia de herida', 4),
    (654789, 'Infección respiratoria', 3),
    (765890, 'Hematoma en el sitio quirúrgico', 3);
    
-- Insertar categorias de beneficio --
insert into categoria
	(nivel)
values
	("Prevenido"),
    ("Leve mejora"),
    ("Mejora notable"),
    ("Rehabilitado"),
    ("Recuperacion total");
    
    
-- Insertar beneficios --
insert into beneficio
	(descripcion, id_categoria)
values
	('Reducción del riesgo de enfermedades cardíacas', 5),
    ('Mejora de la calidad del sueño', 4),
    ('Aumento de la resistencia física', 3),
    ('Reducción del estrés y la ansiedad', 4),
    ('Prevención de enfermedades respiratorias', 2),
    ('Mejora de la salud mental', 4),
    ('Aumento de la flexibilidad y la movilidad', 3),
    ('Reducción del riesgo de diabetes tipo 2', 5),
    ('Fortalecimiento del sistema inmunológico', 4),
    ('Mejora de la función cerebral', 4),
    ('Reducción de los síntomas de la depresión', 4),
    ('Aumento de la masa muscular', 3),
    ('Prevención de la osteoporosis', 3),
    ('Reducción del riesgo de cáncer', 5),
    ('Aumento de la energía y vitalidad', 3),
    ('Mejora de la salud cardiovascular', 5),
    ('Reducción de la presión arterial', 4),
    ('Promoción de un envejecimiento saludable', 4),
    ('Mejora de la digestión', 3),
    ('Reducción del riesgo de obesidad', 5),
    ('Aumento de la autoestima y la confianza', 4),
    ('Mejora de la función pulmonar', 3),
    ('Reducción del dolor crónico', 4),
    ('Prevención de lesiones', 2),
    ('Mejora de la postura y alineación corporal', 3),
    ('Reducción del riesgo de accidentes cerebrovasculares', 5);
    
-- Insertar efectos principales --
insert into efecto_principal
	(descripcion)
values
	('Reducción de la inflamación muscular'),
    ('Alivio del dolor de cabeza'),
    ('Mejora de la movilidad articular'),
    ('Disminución de la fatiga'),
    ('Reducción de los síntomas de la gripe'),
    ('Alivio del malestar estomacal'),
    ('Mejora de la concentración mental'),
    ('Reducción de la ansiedad'),
    ('Alivio de los síntomas de la alergia'),
    ('Mejora del estado de ánimo'),
    ('Reducción del estrés'),
    ('Alivio del dolor lumbar'),
    ('Mejora del equilibrio'),
    ('Disminución de los calambres musculares'),
    ('Alivio del dolor de espalda'),
    ('Mejora de la calidad del sueño'),
    ('Reducción de la presión arterial'),
    ('Alivio de los síntomas de la migraña'),
    ('Mejora de la digestión'),
    ('Disminución de la rigidez articular'),
    ('Alivio de los síntomas de la artritis'),
    ('Mejora de la circulación sanguínea'),
    ('Reducción del malestar gastrointestinal'),
    ('Alivio del dolor menstrual'),
    ('Mejora de la función respiratoria');
    
-- Insertar contraindicaciones --
insert into contraindicacion
	(nombre)
values
	('Embarazo'),
    ('Lactancia'),
    ('Alergia grave al medicamento'),
    ('Insuficiencia renal crónica'),
    ('Insuficiencia hepática'),
    ('Enfermedad cardíaca grave'),
    ('Trastornos de la coagulación sanguínea'),
    ('Presión arterial incontrolada'),
    ('Enfermedad pulmonar obstructiva crónica (EPOC) avanzada'),
    ('Enfermedades autoinmunes activas'),
    ('Antecedentes de reacción alérgica grave al tratamiento'),
    ('Trastornos psiquiátricos severos'),
    ('Úlceras estomacales o duodenales activas'),
    ('Infecciones graves o sistémicas'),
    ('Historial de eventos trombóticos'),
    ('Cáncer en etapa avanzada'),
    ('Enfermedades neurológicas degenerativas avanzadas'),
    ('Descompensación de diabetes'),
    ('Trastornos del sistema inmunológico'),
    ('Trastornos psicóticos'),
    ('Enfermedades gastrointestinales inflamatorias crónicas'),
    ('Historial de rechazo a tratamientos similares'),
    ('Problemas de cicatrización crónicos'),
    ('Trastornos del sueño graves'),
    ('Insuficiencia cardíaca congestiva grave'),
    ('Enfermedades renales poliquísticas avanzadas'),
    ('Trastornos hematológicos graves'),
    ('Enfermedades del sistema endocrino descompensadas'),
    ('Trastornos de la conducta alimentaria graves'),
    ('Uso de medicamentos contraindicados'),
    ('Trastornos respiratorios graves'),
    ('Antecedentes de reacciones adversas graves a anestesia'),
    ('Enfermedades del sistema musculoesquelético avanzadas'),
    ('Enfermedades inmunosupresoras activas'),
    ('Problemas de audición graves'),
    ('Trastornos oculares graves'),
    ('Fragilidad ósea extrema'),
    ('Historial de abuso de sustancias'),
    ('Enfermedades genéticas raras'),
    ('Trastornos de la coagulación hereditarios'),
    ('Problemas de movilidad severos'),
    ('Enfermedades del sistema nervioso central graves'),
    ('Enfermedades del sistema digestivo avanzadas'),
    ('Trastornos del equilibrio severos'),
    ('Trastornos del sistema linfático'),
    ('Problemas de piel graves'),
    ('Insuficiencia renal terminal'),
    ('Trastornos del sistema circulatorio graves'),
    ('Trastornos del sistema inmunológico primarios'),
    ('Historial de reacciones alérgicas graves a medicamentos');

-- Insertar centros de salud --
insert into centro_salud
	(nombre)
values
	 ('Clinique La Prairie'),
    ('Mayo Clinic'),
    ('Johns Hopkins Hospital'),
    ('Cleveland Clinic'),
    ('Massachusetts General Hospital'),
    ('Charité - Universitätsmedizin Berlin'),
    ('University of Texas MD Anderson Cancer Center'),
    ('Assistance Publique – Hôpitaux de Paris'),
    ('Toronto General Hospital'),
    ('Mount Sinai Hospital'),
    ('Stanford Health Care'),
    ('Karolinska University Hospital'),
    ('Singapore General Hospital'),
    ('Seoul National University Hospital'),
    ('Hospital Italiano de Buenos Aires'),
    ('Clinica Universidad de Navarra'),
    ('King"'"s College Hospital'"),
    ('Hospital Israelita Albert Einstein'),
    ('Mayo Clinic (Rochester)'),
    ('NewYork-Presbyterian Hospital');
    
-- Insertar zonas del cuerpo --
insert into zona_cuerpo
	(descripcion)
values
	('Cabeza'),
    ('Cuello'),
    ('Hombros'),
    ('Brazos'),
    ('Codos'),
    ('Muñecas'),
    ('Manos'),
    ('Pecho'),
    ('Espalda'),
    ('Abdomen'),
    ('Caderas'),
    ('Glúteos'),
    ('Piernas'),
    ('Rodillas'),
    ('Tobillos'),
    ('Pies'),
    ('Ojos'),
    ('Oídos'),
    ('Nariz'),
    ('Boca'),
    ('Dientes'),
    ('Lengua'),
    ('Garganta'),
    ('Pulmones'),
    ('Corazón'),
    ('Hígado'),
    ('Riñones'),
    ('Páncreas'),
    ('Vejiga'),
    ('Intestino delgado'),
    ('Intestino grueso'),
    ('Estómago'),
    ('Vesícula biliar'),
    ('Bazo'),
    ('Vasos sanguíneos'),
    ('Nervios periféricos'),
    ('Columna vertebral'),
    ('Cerebro'),
    ('Médula espinal'),
    ('Tiroides'),
    ('Adrenales'),
    ('Ovarios'),
    ('Testículos'),
    ('Útero'),
    ('Próstata'),
    ('Piel'),
    ('Músculos'),
    ('Tendones'),
    ('Linfáticos'),
    ('Articulaciones');
-- Insertar pacientes, agarro un cuil cualquiera de persona y le genero un nro_paciente aleatorio de 8 digitos--
INSERT INTO paciente (cuil_paciente, nro_paciente)
VALUES ((SELECT cuil_persona FROM persona ORDER BY RAND() LIMIT 1), 
        (SELECT FLOOR(RAND() * (99999999 - 10000000 + 1)) + 10000000));
        
-- Insertar profesionales        
insert into profesional (cuil_profesional, matricula_provincial, matricula_nacional, contacto_celular, contacto_email, contacto_cod_post)
VALUES ((SELECT cuil_persona FROM persona
		where edad > 35 ORDER BY RAND() LIMIT 1), 
        LPAD(FLOOR(RAND() * 999999999999999), 20, '0'),
    LPAD(FLOOR(RAND() * 999999999999999), 20, '0'),
    FLOOR(RAND() * (999999999 - 100000000 + 1)) + 100000000,
    CONCAT(SUBSTRING(MD5(RAND()) FROM 1 FOR 10), '@example.com'),
    FLOOR(RAND() * (9999 - 1000 + 1)) + 1000
);

-- Arreglar profesionales que no cumplen con la condicion de ser mayores de 35
delete from profesional
where profesional.cuil_profesional in (select cuil_persona from persona where edad < 35);
-- --------------------------------------------------
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