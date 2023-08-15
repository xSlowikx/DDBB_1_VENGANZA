/* Consulta 9: Destacar aquellos tratamientos letales, por causar efectos severos, por rango etario,
considerando 0 años, 1-5 años, 6-12 años, 13-17 años, 18 a 25 años, 26-40 años, 41-50 años, 51-70 años, 71-90 años, 91 o más años. */

-- Version funcional --
select rango_etario.descripcion, nomenclatura.nomenclatura, count(*)
from nomenclatura
join tratamiento on nomenclatura.id_nomenclatura = tratamiento.id_nomenclatura
join persona on tratamiento.cuil_paciente = persona.cuil_persona
join rango_etario on persona.id_rango_etario = rango_etario.id_rango_etario
where exists (	select 1
				from produce
                join efecto_adverso on produce.cod_efecto_adverso = efecto_adverso.cod_efecto_adverso
                where efecto_adverso.nivel_gravedad in (4,5) -- Severo / Muerte
                and produce.id_tratamiento = tratamiento.id_tratamiento)
group by rango_etario.descripcion, nomenclatura.nomenclatura;


-- La diferencia con este es que, al agrupar por tratamiento, la misma vacuna puede aparecer dos veces dentro del mismo rango etario --
select rango_etario.descripcion, id_tratamiento, id_nomenclatura
from tratamiento
join persona on tratamiento.cuil_paciente = persona.cuil_persona
join rango_etario on persona.id_rango_etario = rango_etario.id_rango_etario
where exists (	select 1
				from produce
                join efecto_adverso on produce.cod_efecto_adverso = efecto_adverso.cod_efecto_adverso
                where efecto_adverso.nivel_gravedad in (4,5) -- Severo / Muerte
                and produce.id_tratamiento = tratamiento.id_tratamiento)
group by rango_etario.descripcion, id_tratamiento, id_nomenclatura;