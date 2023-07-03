/* Consulta 8: Formular una consulta que Uds. Le harían a la app para saber si realizarse un tratamiento.  */
/* Consulta: ver aquellas cirugias realizadas en personas recien nacidas (0 anios) que nunca tuvieron un caso fallido y que nunca tuvieron como consecuencia un efecto adverso
de una categoria superior al nivel "Moderado" */


select distinct n.nomenclatura
from nomenclatura n
join tratamiento T on n.id_nomenclatura = t.id_nomenclatura
join persona pe on t.cuil_paciente = pe.cuil_persona 
join practica_quirurgica pq on t.id_tratamiento = pq.id_tratamiento
where pe.id_rango_etario = 1
and not exists (select 1
				from produce p
                join efecto_adverso ea on P.cod_efecto_adverso = ea.cod_efecto_adverso
				where ea.nivel_gravedad > 2
				and p.id_tratamiento = t.id_tratamiento)
and not exists (select 1
				from practica_quirurgica
                join tratamiento on practica_quirurgica.id_tratamiento = tratamiento.id_tratamiento
                where practica_quirurgica.resultado = 0
                and n.id_nomenclatura = tratamiento.id_nomenclatura);