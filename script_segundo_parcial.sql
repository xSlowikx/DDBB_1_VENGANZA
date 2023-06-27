create schema if not exists segundo_parcial;
use segundo_parcial;

create table if not exists alumno (
	usuario int auto_increment,
    nombre_completo varchar (50) not null,
    email varchar (50) not null,
    fecha_nac date not null,
    primary key (usuario)
);

create table if not exists profesor (
	legajo int auto_increment,
    nombre_completo varchar (50) not null,
    titulos tinyint not null,
    cv varchar (100) not null,
    primary key (legajo)
);

create table if not exists curso (
	codigo varchar(3),
    nombre varchar (50) not null,
    temario varchar (100) not null,
    cant_horas tinyint not null,
    cant_clases tinyint not null,
    primary key (codigo)
);

create table if not exists examen (
	codigo varchar(3),
    orden int,
    nombre varchar (25) not null,
    tiempo varchar (5) not null,
    entrega_archivos tinyint(1) not null,
    primary key (codigo, orden),
    foreign key (codigo) references curso (codigo)
);

create table if not exists rinde (
	usuario int,
    codigo varchar(3),
    orden int,
    fecha date,
    nota decimal (4,2) not null,
    primary key (usuario, codigo, orden, fecha),
    foreign key (codigo, orden) references examen (codigo, orden)
);

create table if not exists cursada (
	usuario int,
    codigo varchar(3),
    legajo int,
    inicio date not null,
    fin date not null,
    primary key (usuario, codigo, legajo),
    foreign key (usuario) references alumno (usuario),
    foreign key (codigo) references curso (codigo),
    foreign key (legajo) references profesor (legajo)
);

create table if not exists certificado (
	unique_key int auto_increment,
    usuario int not null,
    codigo varchar(3) not null,
    fecha date not null,
    primary key (unique_key),
    foreign key (usuario) references alumno (usuario),
    foreign key (codigo) references curso (codigo)
);

insert into alumno
	(nombre_completo, email, fecha_nac)
values
	("Sofia Mauro", "asdasda@gmail.com","20010315"),
    ("Sofia Cardozo", "asdaowi@gmail.com","19940825"),
    ("Carla Monteagudo", "asdasda@gmail.com","20050418"),
    ("Geronima Sanjuanino", "asdasda@gmail.com","20010315"),
    ("Armando Paredes", "armandito@gmail.com","20150514");
    
-- f- Lista el nombre completo y correo de las alumnas llamadas Sofia de enter 20 y 30 años
select nombre_completo, email from alumno
where nombre_completo like "%Sofia%"
-- ESTO DEL DATEDIFF EN EL PARCIAL NI SABIA QUE EXISTIA
-- and (datediff(date(now()),fecha_nac)/365) between 20 and 30;
and fecha_nac between "19930101" and "20031231";

-- g- Mostrar los alumnos que iniciaron algun curso en los ultimos tres emses, pero aun no rindieron ningun examen en ese tiempo --
insert into curso
	(codigo, nombre, temario, cant_horas, cant_clases)
values
	("BD1", "Base de datos 1", "nose", 64, 22);

insert into profesor
	(nombre_completo, titulos, cv)
values
	("Eliana Pardeux", 11 , "Nose");

insert into cursada
	(usuario, codigo, legajo, inicio, fin)
values
	(1, "BD1", 1, "20230401", "20230731");
    


select usuario, nombre_completo
from alumno
where exists ( select 1 from cursada
				where cursada.usuario = alumno.usuario
                and inicio > "20230301")
and not exists ( select 1 from rinde
				where rinde.usuario = alumno.usuario
				and rinde.fecha > "20230301");
                
-- h- Listar los cursos con 5 o mas examenes sin entrega de archivos --
insert into examen
	(codigo, orden, nombre, tiempo, entrega_archivos)
values
	("BD1", 1, "NOMBRE 1", "2H", 0),
    ("BD1", 2, "NOMBRE 2", "2H", 0),
    ("BD1", 3, "NOMBRE 3", "2H", 0),
    ("BD1", 4, "NOMBRE 4", "2H", 0),
    ("BD1", 5, "NOMBRE 5", "2H", 0),
    ("BD1", 6, "NOMBRE 6", "2H", 1);
    
select codigo, nombre
from curso
where codigo in (select examen.codigo from examen
				where examen.entrega_archivos = 0
                group by examen.codigo
                having count(*) >= 5);
                
-- i- lista los profesores que hayan dictado todos los cursos almenos 1 vez --
select legajo, nombre_completo from profesor
where not exists ( select 1 from curso
					where not exists ( select 1 from cursada
										where cursada.codigo = curso.codigo
                                        and cursada.legajo = profesor.legajo));
                                        
-- j- mostrar los certificados, acompañados de la nota promedio del alumno en ese curso. debe considerar solo las notas aprobadas --

insert into rinde
	(usuario, codigo, orden, fecha, nota)
values
	(1, "BD1", 1, "20230630", 9.00),
    (1, "BD1", 2, "20230630", 7.00),
    (1, "BD1", 3, "20230630", 8.00),
    (1, "BD1", 4, "20230630", 5.00),
    (1, "BD1", 5, "20230630", 8.00),
    (1, "BD1", 6, "20230630", 4.00);

insert into certificado
	(usuario, codigo, fecha)
values
	(1,"BD1", "20230701");

insert into certificado
	(usuario, codigo, fecha)
values
	(2,"BD1", "20230701");


insert into rinde
	(usuario, codigo, orden, fecha, nota)
values
	(2, "BD1", 1, "20230630", 10.00),
    (2, "BD1", 2, "20230630", 9.00),
    (2, "BD1", 3, "20230630", 8.00),
    (2, "BD1", 4, "20230630", 6.00),
    (2, "BD1", 5, "20230630", 9.00),
    (2, "BD1", 6, "20230630", 7.00);

    
select unique_key, usuario, promedio.promedio_notas
from certificado
join (select rinde.usuario as alumno, avg(rinde.nota) as promedio_notas
	from rinde
    where rinde.nota >= 7
    group by rinde.usuario
) as promedio on promedio.alumno = certificado.usuario;

-- k- mostrar cuantos alumnos y cursos distintos ha tenido cada profesor a lo largo del año --
insert into cursada
	(usuario, codigo, legajo, inicio, fin)
values
	(2, "BD1", 1, "20230401", "20230731");

select profesor.legajo, profesor.nombre_completo, count(distinct usuario) as alumnos, count(distinct codigo) as cursos from cursada
join profesor on cursada.legajo = profesor.legajo
where cursada.inicio between "20230101" and "20231231"
group by cursada.legajo;

-- l- cuales son los examenes con mas notas desaprobadas --
insert into rinde
	(usuario, codigo, orden, fecha, nota)
values
	(3,"BD1",2,"20230501",5.00),
    (4,"BD1",2,"20230501",3.00),
    (5,"BD1",2,"20230501",3.00),
    (2,"BD1",2,"20230501",4.00);
    
select examen.codigo, examen.orden, examen.nombre
from examen join rinde on examen.codigo = rinde.codigo and examen.orden = rinde.orden
where rinde.nota < 7
group by rinde.codigo, rinde.orden
having count(rinde.nota) = (select max(notas.cant_notas) from (
							select count(rinde.nota) as cant_notas from rinde
							where nota < 7
                            group by rinde.codigo, rinde.orden) as notas);