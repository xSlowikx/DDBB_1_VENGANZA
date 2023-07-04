-- -----------------------------------------------
-- DATOS PARA CREAR UN Compuesto Farmacologico --

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
    
-- Insertar mas efectos adversos


INSERT INTO Efecto_adverso (cod_efecto_adverso, nombre, nivel_gravedad)values 
(736374,'Nauseas y vomitos',3),
(737464,'Diarrea o estreñimiento',4),
(192837,'Problemas de riñonn o higado',4),
(283647,'Problemas de vision o audicion',3),
(220184,'Alergias o reacciones cutaneas',5),
(118363,'Dolor de cabeza',2),
(582674,'Perdida de apetito o aumento de peso',5),
(745637,'Somnolencia o insomnio',5),
(473636,'Mareos y vertigo',4),
(346253,'Cambios en el estado de animo o depresion',4);
    
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
	(nombre, veracidad)
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
-- Insertar especialidades
insert into especialidad
	(descripcion)
values
	('Cardiología'),
    ('Dermatología'),
    ('Endocrinología'),
    ('Gastroenterología'),
    ('Hematología'),
    ('Neurología'),
    ('Oftalmología'),
    ('Oncología'),
    ('Ortopedia'),
    ('Pediatría'),
    ('Psicología'),
    ('Psiquiatría'),
    ('Radiología'),
    ('Reumatología'),
    ('Urología'),
    ('Ginecología'),
    ('Nefrología'),
    ('Otorrinolaringología'),
    ('Neumología'),
    ('Cirugía Plástica');
    
-- Insertar mas diagnosticos
INSERT INTO diagnostico (cie10, descripcion) VALUES
    ('I10.0', 'Hipertensión arterial esencial (primaria)'),
    ('J45.9', 'Asma, no especificada'),
    ('N18.3', 'Enfermedad renal crónica, etapa 3'),
    ('C50.4', 'Tumor maligno de la mama, cuadrante superior externo'),
    ('M17.2', 'Artrosis de la rodilla, compartimento interno'),
    ('F32.1', 'Episodio depresivo mayor, episodio único, leve'),
    ('K29.7', 'Gastritis, no especificada'),
    ('G40.0', 'Epilepsia del lóbulo temporal'),
    ('E11.5', 'Diabetes mellitus tipo 2, sin complicaciones'),
    ('A09.0', 'Diarrea y gastroenteritis de presunto origen infeccioso, debida a Salmonella'),
    ('M54.5', 'Dorsalgia (dolor de espalda), región lumbar'),
    ('B20.9', 'Infección por el virus de la inmunodeficiencia humana [VIH], sin otra especificación'),
    ('S72.2', 'Fractura pertrocantérea'),
    ('R10.4', 'Dolor abdominal, generalizado'),
    ('D64.9', 'Anemia, no especificada'),
    ('I48.1', 'Fibrilación y aleteo auricular paroxísticos'),
    ('H25.9', 'Catarata, no especificada'),
    ('K21.9', 'Enfermedad por reflujo gastroesofágico, sin especificación'),
    ('F41.1', 'Trastorno de ansiedad generalizada'),
    ('N40.0', 'Hiperplasia benigna de la próstata sin síntomas del tracto urinario inferior'),
    ('G47.0', 'Insomnio intratable'),
    ('L70.0', 'Acné vulgar'),
    ('N39.0', 'Infección del tracto urinario sin especificación'),
    ('I50.0', 'Insuficiencia cardíaca congestiva'),
    ('J18.9', 'Neumonía, no especificada');
    
-- Mas diagnosticos
INSERT INTO diagnostico (cie10, descripcion) VALUES
    ('L03.9', 'Celulitis, no especificada'),
    ('K80.0', 'Cálculos de la vesícula biliar con colecistitis'),
    ('M79.1', 'Mialgia'),
    ('J20.9', 'Bronquitis aguda, no especificada'),
    ('I25.2', 'Síndrome de la angina de pecho estable'),
    ('N41.0', 'Prostatitis aguda'),
    ('F33.2', 'Trastorno depresivo mayor, episodio recurrente grave con síntomas psicóticos'),
    ('R05', 'Tos'),
    ('L29.9', 'Prurito, no especificado'),
    ('N19', 'Insuficiencia renal aguda no especificada'),
    ('C67.9', 'Tumor maligno de la vejiga urinaria, parte no especificada'),
    ('I63.9', 'Infarto cerebral, no especificado'),
    ('G47.9', 'Trastorno del sueño no especificado'),
    ('J44.9', 'Enfermedad pulmonar obstructiva crónica, no especificada'),
    ('M05.7', 'Artritis reumatoide con compromiso de otros órganos y sistemas'),
    ('B37.9', 'Candidiasis, no especificada'),
    ('R50.9', 'Fiebre, no especificada'),
    ('E78.5', 'Hiperlipidemia mixta'),
    ('H60.9', 'Otitis media aguda, no especificada'),
    ('N48.9', 'Trastorno del pene, no especificado'),
    ('F41.9', 'Trastorno de ansiedad, no especificado'),
    ('D25.9', 'Tumor benigno de la mama, no especificado'),
    ('K92.2', 'Hemorragia gastrointestinal, no especificada'),
    ('M16.1', 'Artrosis de la cadera'),
    ('E04.1', 'Bocio multinodular tóxico'),
    ('N73.9', 'Enfermedad inflamatoria pélvica, no especificada'),
    ('J02.9', 'Faringitis aguda, no especificada'),
    ('L89.9', 'Úlcera de pierna, no especificada'),
    ('I67.9', 'Trastorno cerebrovascular no especificado'),
    ('H16.9', 'Queratitis, no especificada'),
    ('O03.9', 'Aborto espontáneo, no especificado'),
    ('R51', 'Cefalea'),
    ('E10.9', 'Diabetes mellitus tipo 1, sin complicaciones'),
    ('F90.9', 'Trastorno hipercinético, no especificado'),
    ('M54.6', 'Dorsalgia (dolor de espalda), región lumbo-sacra'),
    ('K80.1', 'Cálculos de la vesícula biliar sin colecistitis'),
    ('N20.9', 'Cálculo del tracto urinario inferior, no especificado'),
    ('H81.9', 'Trastorno del oído interno, no especificado'),
    ('J45.0', 'Asma con predominio de eosinófilos'),
    ('K35.9', 'Apendicitis aguda, no especificada'),
    ('G43.9', 'Migraña, no especificada'),
    ('R07.9', 'Dolor en la garganta y en el pecho, no especificado'),
    ('C16.9', 'Tumor maligno del estómago, no especificado'),
    ('L97.9', 'Úlcera de piel, no especificada'),
    ('I10.9', 'Hipertensión arterial esencial, no especificada'),
    ('J18.1', 'Lobular, neumonía sin confirmar bacteriológica o histológicamente'),
    ('N73.1', 'Salpingitis y ooforitis agudas'),
    ('F32.9', 'Episodio depresivo mayor, sin especificación'),
    ('K85.9', 'Pancreatitis aguda, no especificada'),
    ('D64.0', 'Anemia por deficiencia de hierro secundaria a pérdida de sangre aguda (crónica)'),
    ('M25.5', 'Dolor articular generalizado'),
    ('J45.1', 'Asma, con (sibilancias) o sin (sibilancias) exacerbación aguda'),
    ('K26.9', 'Úlcera gástrica, no especificada como aguda o crónica, sin hemorragia ni perforación'),
    ('N44.1', 'Tumor testicular benigno'),
    ('I73.9', 'Enfermedad vascular periférica, no especificada'),
    ('N31.9', 'Trastorno neuromuscular de la vejiga, no especificado'),
    ('G56.9', 'Mononeuropatía del miembro superior, no especificada'),
    ('K30', 'Dispepsia'),
    ('E66.9', 'Obesidad, no especificada'),
    ('M48.9', 'Espondilosis, no especificada'),
    ('I64', 'Accidente cerebrovascular agudo, no especificado'),
    ('K02.9', 'Caries dental, no especificada'),
    ('R56.9', 'Convulsión y estado de mal no especificados'),
    ('C73', 'Tumor maligno del tiroides'),
    ('F90.0', 'Trastorno de déficit de atención con hiperactividad'),
    ('J30.9', 'Rinitis alérgica, no especificada'),
    ('D69.6', 'Púrpura trombocitopénica autoinmunitaria, no especificada'),
    ('M16.9', 'Artrosis de la cadera, no especificada'),
    ('N13.9', 'Uropatía obstructiva y por reflujo, no especificada'),
    ('I73.1', 'Enfermedad arterial periférica de las extremidades inferiores'),
    ('L30.9', 'Dermatitis, no especificada'),
    ('N18.9', 'Enfermedad renal crónica, no especificada'),
    ('C50.9', 'Tumor maligno de la mama, no especificado'),
    ('M19.9', 'Artrosis, no especificada'),
    ('I84.9', 'Hemorroides, no especificadas'),
    ('G47.8', 'Otros trastornos del sueño especificados'),
    ('H10.9', 'Conjuntivitis, no especificada'),
    ('F43.9', 'Trastorno de estrés agudo, no especificado'),
    ('J18.0', 'Bronconeumonía, no especificada'),
    ('K56.6', 'Íleo paralítico'),
    ('R42', 'Mareo y desvanecimiento'),
    ('M48.4', 'Estenosis espinal lumbar'),
    ('I35.9', 'Enfermedad de la válvula aórtica, no especificada'),
    ('K29.6', 'Gastritis, no especificada'),
    ('N87.9', 'Displasia del cuello uterino, no especificada'),
    ('F31.9', 'Trastorno bipolar, no especificado'),
    ('I21.9', 'Infarto agudo de miocardio, no especificado'),
    ('N48.0', 'Priapismo'),
    ('M87.0', 'Osteonecrosis de la mandíbula'),
    ('C44.9', 'Tumor maligno de la piel, no especificado');

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

-- Insertar nomenclaturas
INSERT INTO nomenclatura (id_nomenclatura, nomenclatura) VALUES
    (1.01, 'Vacuna contra la influenza'),
    (2.05, 'Vacuna contra el sarampión'),
    (3.03, 'Vacuna contra la varicela'),
    (4.02, 'Vacuna contra la hepatitis B'),
    (5.01, 'Vacuna contra el tétanos'),
    (6.04, 'Vacuna contra la fiebre amarilla'),
    (7.01, 'Vacuna contra la poliomielitis'),
    (8.02, 'Vacuna contra la rubéola'),
    (9.01, 'Vacuna contra la meningitis'),
    (10.03, 'Vacuna contra la tos ferina');

-- Insertar tratamientos de tipo Compuesto Farmacologico y de tipo tratamiento 6 (curativo - invasivo)

INSERT INTO Tratamiento (id_nomenclatura, id_tipo_tratamiento, id_efecto_principal, id_centro_salud, id_zona_cuerpo, cuil_profesional, cuil_paciente, de_tipo)values
((select id_nomenclatura from nomenclatura order by rand() limit 1), 6, 4, 10, 6, (select cuil_profesional from profesional order by rand() limit 1), (select cuil_paciente from paciente order by rand() limit 1), 'Compuesto Farmacologico'),
((select id_nomenclatura from nomenclatura order by rand() limit 1), 6, 23, 7, 15, (select cuil_profesional from profesional order by rand() limit 1), (select cuil_paciente from paciente order by rand() limit 1),'Compuesto Farmacologico'),
((select id_nomenclatura from nomenclatura order by rand() limit 1), 6, 19, 1, 2, (select cuil_profesional from profesional order by rand() limit 1), (select cuil_paciente from paciente order by rand() limit 1), 'Compuesto Farmacologico'),
((select id_nomenclatura from nomenclatura order by rand() limit 1), 6, 7, 16, 7, (select cuil_profesional from profesional order by rand() limit 1), (select cuil_paciente from paciente order by rand() limit 1), 'Compuesto Farmacologico'),
((select id_nomenclatura from nomenclatura order by rand() limit 1), 6, 5, 10, 3, (select cuil_profesional from profesional order by rand() limit 1), (select cuil_paciente from paciente order by rand() limit 1), 'Compuesto Farmacologico'),
((select id_nomenclatura from nomenclatura order by rand() limit 1), 6, 12, 19, 9, (select cuil_profesional from profesional order by rand() limit 1), (select cuil_paciente from paciente order by rand() limit 1), 'Compuesto Farmacologico'),
((select id_nomenclatura from nomenclatura order by rand() limit 1), 6, 1, 9, 6, (select cuil_profesional from profesional order by rand() limit 1), (select cuil_paciente from paciente order by rand() limit 1), 'Compuesto Farmacologico'),
((select id_nomenclatura from nomenclatura order by rand() limit 1), 6, 2, 20, 10, (select cuil_profesional from profesional order by rand() limit 1), (select cuil_paciente from paciente order by rand() limit 1), 'Compuesto Farmacologico'),
((select id_nomenclatura from nomenclatura order by rand() limit 1), 6, 24, 10, 12, (select cuil_profesional from profesional order by rand() limit 1), (select cuil_paciente from paciente order by rand() limit 1), 'Compuesto Farmacologico'),
((select id_nomenclatura from nomenclatura order by rand() limit 1), 6, 15, 17, 4, (select cuil_profesional from profesional order by rand() limit 1), (select cuil_paciente from paciente order by rand() limit 1), 'Compuesto Farmacologico');

-- Insertar compuestos farmacologicos para los tratamientos realizados (son de tipo vacuna, pero lo demas es aleatorio)

insert into compuesto_farmacologico
	(id_tratamiento, id_tipo_compuesto, id_fabricante, id_partida, nro_lote)
values
	(
    (select id_tratamiento from tratamiento where de_tipo = "Compuesto Farmacologico" order by rand() limit 1),
    2,
    (select id_fabricante from fabricante order by rand() limit 1),
    (select id_partida from lote order by rand() limit 1),
    (select nro_lote from lote order by rand() limit 1)
    );
	
-- Insertar efectos adversos para vacunas

insert into produce
	(id_tratamiento, cod_efecto_adverso, fecha)
values
	((select id_tratamiento from compuesto_farmacologico order by rand() limit 1),
    (select cod_efecto_adverso from efecto_adverso order by rand() limit 1),
    DATE(FROM_UNIXTIME(UNIX_TIMESTAMP('2021-01-01') + 
       FLOOR(RAND() * (UNIX_TIMESTAMP('2023-12-31') - UNIX_TIMESTAMP('2021-01-01') + 1)))));
       
-- Corroborar cantidades

select id_tratamiento, count(*)
from produce join efecto_adverso on produce.cod_efecto_adverso = efecto_adverso.cod_efecto_adverso
group by id_tratamiento;


-- Insertando recien nacidos

INSERT INTO Persona (cuil_persona, nombre, apellido, edad, cuil_madre,id_rango_etario) VALUES
((SELECT FLOOR(RAND() * (99999999999 - 10000000000 + 1)) + 10000000000), 'Mario', 'Lopez', 0, 201239786,1),
((SELECT FLOOR(RAND() * (99999999999 - 10000000000 + 1)) + 10000000000), 'Mario', 'Vargas', 0, 201239786,1),
((SELECT FLOOR(RAND() * (99999999999 - 10000000000 + 1)) + 10000000000), 'Hector', 'Lopez', 0, 201239786,1),
((SELECT FLOOR(RAND() * (99999999999 - 10000000000 + 1)) + 10000000000), 'Esteban', 'Gomez', 0, 2012349788,1),
((SELECT FLOOR(RAND() * (99999999999 - 10000000000 + 1)) + 10000000000), 'Cristian', 'Avarez', 0,2012349788,1),
((SELECT FLOOR(RAND() * (99999999999 - 10000000000 + 1)) + 10000000000), 'Luis', 'Romero', 0, 2012349788,1),
((SELECT FLOOR(RAND() * (99999999999 - 10000000000 + 1)) + 10000000000), 'Raul', 'Navarro', 0, 20123446781,1),
((SELECT FLOOR(RAND() * (99999999999 - 10000000000 + 1)) + 10000000000), 'Estefania', 'Diaz', 0, 20123446781,1),
((SELECT FLOOR(RAND() * (99999999999 - 10000000000 + 1)) + 10000000000), 'Pedro', 'Fernandez', 0, 20123446781,1),
((SELECT FLOOR(RAND() * (99999999999 - 10000000000 + 1)) + 10000000000), 'Ana', 'Rodriguez', 0, 20123455876,1);

-- Insertar recien nacidos como pacientes
INSERT INTO paciente (cuil_paciente, nro_paciente)
VALUES ((SELECT cuil_persona FROM persona where edad = 0 ORDER BY RAND() LIMIT 1), 
        (SELECT FLOOR(RAND() * (99999999 - 10000000 + 1)) + 10000000));

-- Tratamientos para recien nacidos

INSERT INTO Tratamiento (id_nomenclatura, id_tipo_tratamiento, id_efecto_principal, id_centro_salud, id_zona_cuerpo, cuil_profesional, cuil_paciente, de_tipo)values
((select id_nomenclatura from nomenclatura order by rand() limit 1), -- una nomenclatura aleatoria
2, -- diagnostico invasivo
(select id_efecto_principal from efecto_principal order by rand() limit 1), -- un efecto aleatorio
(select id_centro_salud from centro_salud order by rand() limit 1), -- centro de salud aleatorio
(select id_zona_cuerpo from zona_cuerpo order by rand() limit 1), -- zona cuerpo aleatoria
(select cuil_profesional from profesional order by rand() limit 1), -- seleccionar profesional aleatorio
(select cuil_paciente from paciente join persona on paciente.cuil_paciente = persona.cuil_persona where persona.edad = 0 order by rand() limit 1), -- seleccionar recien nacidos
'Practica Diagnostica'),
((select id_nomenclatura from nomenclatura order by rand() limit 1), -- una nomenclatura aleatoria
6, -- curativo invasivo
(select id_efecto_principal from efecto_principal order by rand() limit 1), -- un efecto aleatorio
(select id_centro_salud from centro_salud order by rand() limit 1), -- centro de salud aleatorio
(select id_zona_cuerpo from zona_cuerpo order by rand() limit 1), -- zona cuerpo aleatoria
(select cuil_profesional from profesional order by rand() limit 1), -- seleccionar profesional aleatorio
(select cuil_paciente from paciente join persona on paciente.cuil_paciente = persona.cuil_persona where persona.edad = 0 order by rand() limit 1), -- seleccionar recien nacidos
'Compuesto Farmacologico');

-- Ingresar efectos de muerte para los recien nacidos

INSERT INTO Efecto_adverso (cod_efecto_adverso, nombre, nivel_gravedad)values 
(726374,'Reacciones cut�neas graves',5),
(767464,'Hipersensibilidad a la luz solar',5),
(182837,'Neuropat�a perif�rica',5),
(522674,'Problemas cerebrales',5),
(795637,'Problemas musculares',5),
(178363,'Trombosis aguda',5),
(483636,'Problemas �seos',5),
(306253,'Problemas respiratorios',5),
(250184,'Neumonia',5),
(203647,'Problemas cardiovasculares',5);

-- Introducir efectos_adversos de muerte para los recien nacidos
INSERT INTO Produce (id_tratamiento, cod_efecto_adverso, fecha) values
(64,(select cod_efecto_adverso from efecto_adverso join gravedad on efecto_adverso.nivel_gravedad = gravedad.nivel_gravedad where descripcion = "Muerte" order by rand() limit 1),'20230605'),
(51,(select cod_efecto_adverso from efecto_adverso join gravedad on efecto_adverso.nivel_gravedad = gravedad.nivel_gravedad where descripcion = "Muerte" order by rand() limit 1),'20221020'),
(66,(select cod_efecto_adverso from efecto_adverso join gravedad on efecto_adverso.nivel_gravedad = gravedad.nivel_gravedad where descripcion = "Muerte" order by rand() limit 1),'20221212'),
(54,(select cod_efecto_adverso from efecto_adverso join gravedad on efecto_adverso.nivel_gravedad = gravedad.nivel_gravedad where descripcion = "Muerte" order by rand() limit 1),'20210511'),
(52,(select cod_efecto_adverso from efecto_adverso join gravedad on efecto_adverso.nivel_gravedad = gravedad.nivel_gravedad where descripcion = "Muerte" order by rand() limit 1),'20221217'),
(56,(select cod_efecto_adverso from efecto_adverso join gravedad on efecto_adverso.nivel_gravedad = gravedad.nivel_gravedad where descripcion = "Muerte" order by rand() limit 1),'20211019'),
(60,(select cod_efecto_adverso from efecto_adverso join gravedad on efecto_adverso.nivel_gravedad = gravedad.nivel_gravedad where descripcion = "Muerte" order by rand() limit 1),'20220216'),
(55,(select cod_efecto_adverso from efecto_adverso join gravedad on efecto_adverso.nivel_gravedad = gravedad.nivel_gravedad where descripcion = "Muerte" order by rand() limit 1),'20210705'),
(63,(select cod_efecto_adverso from efecto_adverso join gravedad on efecto_adverso.nivel_gravedad = gravedad.nivel_gravedad where descripcion = "Muerte" order by rand() limit 1),'20220825'),
(64,(select cod_efecto_adverso from efecto_adverso join gravedad on efecto_adverso.nivel_gravedad = gravedad.nivel_gravedad where descripcion = "Grave" order by rand() limit 1),'20220427');

-- Tratamientos invasivos para madres
INSERT INTO Tratamiento (id_nomenclatura, id_tipo_tratamiento, id_efecto_principal, id_centro_salud, id_zona_cuerpo, cuil_profesional, cuil_paciente, de_tipo) values
((select id_nomenclatura from nomenclatura order by rand() limit 1),2,(select id_efecto_principal from efecto_principal order by rand() limit 1),(select id_centro_salud from centro_salud order by rand() limit 1),(select id_zona_cuerpo from zona_cuerpo order by rand() limit 1),(select cuil_profesional from profesional order by rand() limit 1),20123455876,"Compuesto farmacologico"),
((select id_nomenclatura from nomenclatura order by rand() limit 1),6,(select id_efecto_principal from efecto_principal order by rand() limit 1),(select id_centro_salud from centro_salud order by rand() limit 1),(select id_zona_cuerpo from zona_cuerpo order by rand() limit 1),(select cuil_profesional from profesional order by rand() limit 1),20398945783,"Practica diagnostica"),
((select id_nomenclatura from nomenclatura order by rand() limit 1),6,(select id_efecto_principal from efecto_principal order by rand() limit 1),(select id_centro_salud from centro_salud order by rand() limit 1),(select id_zona_cuerpo from zona_cuerpo order by rand() limit 1),(select cuil_profesional from profesional order by rand() limit 1),2012345789,"Practica quirurgica"),
((select id_nomenclatura from nomenclatura order by rand() limit 1),6,(select id_efecto_principal from efecto_principal order by rand() limit 1),(select id_centro_salud from centro_salud order by rand() limit 1),(select id_zona_cuerpo from zona_cuerpo order by rand() limit 1),(select cuil_profesional from profesional order by rand() limit 1),62827386287,"Practica quirurgica"),
((select id_nomenclatura from nomenclatura order by rand() limit 1),2,(select id_efecto_principal from efecto_principal order by rand() limit 1),(select id_centro_salud from centro_salud order by rand() limit 1),(select id_zona_cuerpo from zona_cuerpo order by rand() limit 1),(select cuil_profesional from profesional order by rand() limit 1),20123456780,"Practica diagnostica");

-- Insertar tratamientos aleatorios para de tipo diagnostico presuntivo
INSERT INTO Tratamiento (id_nomenclatura, id_tipo_tratamiento, id_efecto_principal, id_centro_salud, id_zona_cuerpo, cuil_profesional, cuil_paciente, de_tipo) values
(
	(select id_nomenclatura from nomenclatura order by rand() limit 1),
	1,
	(select id_efecto_principal from efecto_principal order by rand() limit 1),
    (select id_centro_salud from centro_salud order by rand() limit 1),
    (select id_zona_cuerpo from zona_cuerpo order by rand() limit 1),
    (select cuil_profesional from profesional order by rand() limit 1),
    (select cuil_paciente from paciente join persona on paciente.cuil_paciente = persona.cuil_persona where persona.edad between 20 and 30 order by rand() limit 1),
    "Practica diagnostica");

-- Ver cuantas practicas diagnosticas tengo
select * from tratamiento
where de_tipo = "Practica diagnostica";

-- Insertar practicas diagnosticas con confirmacion aleatoria
insert into practica_diagnostica (id_tratamiento, confirmacion_dpresuntivo) values
	((select id_tratamiento from tratamiento where de_tipo = "Practica diagnostica" order by rand() limit 1),
    (SELECT rand() * 1));
    
-- Insertar algunos beneficios en el tratamiento 30 --
insert into se_espera values
(30, (select id_beneficio from beneficio order by rand() limit 1));

-- Insertar algunos beneficios en el tratamiento 27 --
insert into se_espera values
(27, (select id_beneficio from beneficio order by rand() limit 1));


-- Insertar niveles de gravedad en tratamientos de adultos mayores --
INSERT INTO produce 
(id_tratamiento, cod_efecto_adverso, fecha)
VALUES (
  (CASE FLOOR(RAND() * 3)
    WHEN 0 THEN 71
    WHEN 1 THEN 44
    WHEN 2 THEN 47
  END),
  (SELECT cod_efecto_adverso FROM efecto_adverso WHERE nivel_gravedad = 1 ORDER BY RAND() LIMIT 1),
  "20221225"
);

/* Insertar mas de 2 antecedentes al cuil 20123455876*/
insert into antecedente
values
(20123455876,
(select cie10 from diagnostico order by rand() limit 1),
"20210625");

/* Insertar solo 2 antecedentes al cuil 34876927497*/
insert into antecedente
values
(34876927497,
(select cie10 from diagnostico order by rand() limit 1),
"20211210");


select *
from paciente
join persona on paciente.cuil_paciente = persona.cuil_persona
where not exists (select 1 from tratamiento
					where tratamiento.cuil_paciente = paciente.cuil_paciente);

-- Insertar tratamientos de practica quirurgica --
insert into tratamiento (id_nomenclatura, id_tipo_tratamiento, id_efecto_principal, id_centro_salud, id_zona_cuerpo, cuil_profesional, cuil_paciente, de_tipo)
values
(35.40, 5, 
(select id_efecto_principal from efecto_principal order by rand() limit 1), 
(select id_centro_salud from centro_salud order by rand() limit 1),
(select id_zona_cuerpo from zona_cuerpo order by rand() limit 1),
(select cuil_profesional from profesional order by rand() limit 1),
22345345896,
"Practica quirurgica");

insert into tratamiento (id_nomenclatura, id_tipo_tratamiento, id_efecto_principal, id_centro_salud, id_zona_cuerpo, cuil_profesional, cuil_paciente, de_tipo)
values
(37.50, 5, 
(select id_efecto_principal from efecto_principal order by rand() limit 1), 
(select id_centro_salud from centro_salud order by rand() limit 1),
(select id_zona_cuerpo from zona_cuerpo order by rand() limit 1),
(select cuil_profesional from profesional order by rand() limit 1),
20123446781,
"Practica quirurgica");

insert into tratamiento (id_nomenclatura, id_tipo_tratamiento, id_efecto_principal, id_centro_salud, id_zona_cuerpo, cuil_profesional, cuil_paciente, de_tipo)
values
(38.40, 5, 
(select id_efecto_principal from efecto_principal order by rand() limit 1), 
(select id_centro_salud from centro_salud order by rand() limit 1),
(select id_zona_cuerpo from zona_cuerpo order by rand() limit 1),
(select cuil_profesional from profesional order by rand() limit 1),
91080571907,
"Practica quirurgica");

select * from tratamiento where de_tipo = "practica quirurgica";

-- Insertar practica quirurgica --
insert into practica_quirurgica
values
(86,1);

-- Insertar practica quirurgica --
insert into practica_quirurgica
values
(87,1);

-- Insertar practica quirurgica --
insert into practica_quirurgica
values
(88,1);

-- Insertar efectos adversos --
insert into produce
	(id_tratamiento, cod_efecto_adverso, fecha)
values
	(86,(select cod_efecto_adverso from efecto_adverso where nivel_gravedad in(1,2) order by rand() limit 1),"20220814");
    
-- Insertar efectos adversos --
insert into produce
	(id_tratamiento, cod_efecto_adverso, fecha)
values
	(87,(select cod_efecto_adverso from efecto_adverso where nivel_gravedad in(1,2) order by rand() limit 1),"20220901");
    
-- Insertar efectos adversos --
insert into produce
	(id_tratamiento, cod_efecto_adverso, fecha)
values
	(88,(select cod_efecto_adverso from efecto_adverso where nivel_gravedad in(1,2,3) order by rand() limit 1),"20230325");
    
select *
from produce
join efecto_adverso on produce.cod_efecto_adverso = efecto_adverso.cod_efecto_adverso
where nivel_gravedad = 3
and produce.id_tratamiento = 88;