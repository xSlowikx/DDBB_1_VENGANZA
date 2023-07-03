/* Consulta 4: ¿Cuántas muertes ocurrieron relacionadas con vacunas, agrupando por vacuna, durante los años 2021 al 2023? */

-- Sin alias de tablas --

select tratamiento.id_nomenclatura as Codigo, nomenclatura.nomenclatura as Nomenclatura, count(produce.cod_efecto_adverso) as "Cantidad de muertes"
from nomenclatura
join tratamiento on nomenclatura.id_nomenclatura = tratamiento.id_nomenclatura
join compuesto_farmacologico on tratamiento.id_tratamiento = compuesto_farmacologico.id_tratamiento
join produce on tratamiento.id_tratamiento = produce.id_tratamiento
join efecto_adverso on produce.cod_efecto_adverso = efecto_adverso.cod_efecto_adverso
where efecto_adverso.nivel_gravedad = 5
and produce.fecha between "20210101" and "20231231"
and compuesto_farmacologico.id_tipo_compuesto = 2
and nomenclatura.nomenclatura like "%vacuna%"
group by tratamiento.id_nomenclatura, nomenclatura.nomenclatura;

-- Misma consulta, solo que con alias de tablas --

select T.id_nomenclatura, count(P.cod_efecto_adverso)
from compuesto_farmacologico CF
JOIN tratamiento T ON CF.id_tratamiento=T.id_tratamiento 
join produce P ON T.id_tratamiento=P.id_tratamiento 
join efecto_adverso E ON P.cod_efecto_adverso = E.cod_efecto_adverso
join nomenclatura N ON T.id_nomenclatura=N.id_nomenclatura
where E.nivel_gravedad = 5
and N.nomenclatura like "%vacuna%"
and CF.id_tipo_compuesto=2
and P.fecha between '20210101' and '20231231'
group by T.id_nomenclatura;
