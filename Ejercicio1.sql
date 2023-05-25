create schema if not exists ejercicio1;
use ejercicio1;

create table if not exists almacen (
	nro int auto_increment,
    nombre varchar (50) not null,
    responsable varchar (50) not null,
    constraint pk_almacen primary key (nro)
);

create table if not exists articulo (
	cod_art int,
    descripcion varchar (50) not null,
    precio decimal (7,2) not null,
    constraint pk_articulo primary key (cod_art)
);

create table if not exists material (
	cod_mat int,
    descripcion varchar (50) not null,
    constraint pk_material primary key (cod_mat)
);

alter table material change column cod_mat cod_mat int auto_increment;

create table if not exists ciudad(
	cod_ciu int auto_increment,
    nombre varchar (50) not null,
    constraint pk_ciudad primary key (cod_ciu)
);

create table if not exists proveedor (
	cod_prov int AUTO_INCREMENT,
    nombre varchar (50) not null,
    domicilio varchar (50) not null,
    cod_ciu int not null,
    fecha_alta date not null,
    constraint pk_proveedor primary key (cod_prov),
    constraint fk_cod_ciu foreign key (cod_ciu) references ciudad (cod_ciu)
);

create table if not exists contiene(
	nro_almacen int,
    cod_art int,
    constraint pk_contiene primary key (nro_almacen,cod_art),
    constraint fk_nro_almacen foreign key (nro_almacen) references almacen (nro),
    constraint fk_cod_art foreign key (cod_art) references articulo (cod_art)
);

create table if not exists compuesto_por (
	cod_art int,
    cod_mat int,
    constraint pk_compuesto_por primary key (cod_art,cod_mat),
    constraint fk_cod_art_cp foreign key (cod_art) references articulo (cod_art),
    constraint fk_cod_mat foreign key (cod_mat) references material (cod_mat)
);

create table if not exists provisto_por (
	cod_mat int,
    cod_prov int,
    constraint pk_provisto_por primary key (cod_mat,cod_prov),
    constraint fk_cod_mat_pp foreign key (cod_mat) references material (cod_mat),
    constraint fk_cod_prov foreign key (cod_prov) references proveedor (cod_prov)
);

#Ejercicio 1 - consulta 1
select cod_art from articulo
where precio between 100 and 1000
and descripcion like "A%";

#Ejercicio 1 - consulta 2
select * from proveedor;

#Ejercicio 1 - consulta 3
select descripcion from material
where cod_mat in (1,3,6,9,18);

#Ejercicio 1 - consulta 4
select cod_prov, nombre from proveedor
where domicilio like "%Suipacha%" 
and fecha_alta between "20010101" and "20011231";

#5. Listar nombre de todos los proveedores y de su ciudad

select proveedor.nombre as nombre_proveedor, ciudad.nombre as nombre_ciudad from proveedor, ciudad
where proveedor.cod_ciu = ciudad.cod_ciu;

select proveedor.nombre as nombre_proveedor, ciudad.nombre as nombre_ciudad
from proveedor join ciudad
on proveedor.cod_ciu = ciudad.cod_ciu;

#6. Listar los nombres de los proveedores de la ciudad de La Plata.

select proveedor.nombre
from proveedor join ciudad
on proveedor.cod_ciu = ciudad.cod_ciu
where ciudad.nombre = "La Plata";

#7. Listar los números de almacenes que almacenan el artículo de descripción A.
#Lo cambie por almacenes que almacenan articulos que contengan una A en su descripcion
#contiene.nro_almacen
select * 
from contiene join articulo
on contiene.cod_art = articulo.cod_art
where articulo.descripcion like "%A%";

#8. Listar los materiales (código y descripción) provistos por proveedores de la ciudad de Rosario. 

#material.cod_mat, material.descripcion
select *
from provisto_por join material
on provisto_por.cod_mat = material.cod_mat
join proveedor
on provisto_por.cod_prov = proveedor.cod_prov
join ciudad
on proveedor.cod_ciu = ciudad.cod_ciu
where ciudad.nombre = "Rosario";

#9. Listar los nombres de los proveedores que proveen materiales para artículos ubicados en almacenes que Martín Gómez tiene a su cargo. 

select *
from provisto_por join proveedor
on provisto_por.cod_prov = proveedor.cod_prov
join material
on provisto_por.cod_mat = material.cod_mat
join compuesto_por
on material.cod_mat = compuesto_por.cod_mat
join articulo
on compuesto_por.cod_art = articulo.cod_art
join contiene
on articulo.cod_art = contiene.cod_art
join almacen
on contiene.nro_almacen = almacen.nro
where almacen.responsable = "Martin Gomez";

#10. Mover los artículos almacenados en el almacén de número 10 al de número 20
#11. Eliminar a los proveedores que contengan la palabra ABC en su nombre 
#12. Indicar la cantidad de proveedores que comienzan con la letra F.

select count(nombre) from proveedor
where nombre like "f%";

#13. Listar el promedio de precios de los artículos por cada almacén (nombre) 

select *, avg(articulo.precio)
from contiene join articulo
on contiene.cod_art = articulo.cod_art
join almacen
on almacen.nro = contiene.nro_almacen
group by almacen.nro;

#14. Listar la descripción de artículos compuestos por al menos 2 materiales. 
#15. Listar cantidad de materiales que provee cada proveedor (código, nombre y domicilio) 
#16. Cuál es el precio máximo de los artículos que proveen los proveedores de la ciudad de Zárate. 
#17. Listar los nombres de aquellos proveedores que no proveen ningún material. 
#18. Listar los códigos de los materiales que provea el proveedor 10 y no los provea el proveedor 15. 
#19. ListarnúmeroynombredealmacenesquecontienenlosartículosdedescripciónA             y los de descripción B (ambos). 
#20. Listar la descripción de artículos compuestos por todos los materiales. 
#21. Hallarloscódigosynombresdelosproveedoresqueproveenalmenosunmaterial              que se usa en algún artículo cuyo precio es mayor a $100. 
#22. Listar la descripción de los artículos de mayor precio. 
#23. ListarlosnombresdeproveedoresdeCapitalFederalqueseanúnicos           proveedores de algún material. 
#24. Listar los nombres de almacenes que almacenan la mayor cantidad de artículos. 
#25. Listar la ciudades donde existan proveedores que proveen todos los materiales. 
#26. Listarlosnúmerosdealmacenesquetienentodoslosartículosqueincluyenel             material con código 123. 


