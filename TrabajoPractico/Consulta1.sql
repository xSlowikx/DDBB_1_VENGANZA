/* Consulta 1: Top 10 de tratamientos con más de 10 efectos adversos. */

SELECT tratamiento.id_tratamiento, nomenclatura.nomenclatura, cantidades_xtratamiento.cantidad
from tratamiento join nomenclatura on tratamiento.id_nomenclatura = nomenclatura.id_nomenclatura
join (select id_tratamiento as id_tratamiento, count(*) as cantidad
	  from produce
	  group by id_tratamiento
	  having count(*) > 10) as cantidades_xtratamiento
on tratamiento.id_tratamiento = cantidades_xtratamiento.id_tratamiento
ORDER BY cantidades_xtratamiento.cantidad desc
limit 10;

SELECT tratamiento.id_tratamiento, nomenclatura.nomenclatura
from tratamiento join nomenclatura on tratamiento.id_nomenclatura = nomenclatura.id_nomenclatura;