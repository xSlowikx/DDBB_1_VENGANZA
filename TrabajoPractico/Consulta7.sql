/* Consulta 7: Mostrar todos los tratamientos de bajo riesgo practicados a personas con al menos 2 (dos) patologías preexistentes y que sean adultos mayores.  */

/* Version 1 */
select distinct tratamiento.id_tratamiento, nomenclatura.nomenclatura
from tratamiento join nomenclatura on tratamiento.id_nomenclatura = nomenclatura.id_nomenclatura
join antecedente on tratamiento.cuil_paciente = antecedente.cuil_persona
where tratamiento.cuil_paciente in (select cuil_persona from antecedente
									group by cuil_persona
                                    having count(*) > 2)
and tratamiento.id_tratamiento in (select id_tratamiento from tr_no_pel_en_amay);

/* Version 2*/
select distinct tratamiento.id_tratamiento, nomenclatura.nomenclatura
from tratamiento join nomenclatura on tratamiento.id_nomenclatura = nomenclatura.id_nomenclatura
join persona on tratamiento.cuil_paciente = persona.cuil_persona
join antecedente on persona.cuil_persona = antecedente.cuil_persona
where persona.id_rango_etario in (7,8)
and tratamiento.cuil_paciente in (select cuil_persona from antecedente
									group by cuil_persona
                                    having count(*) > 2)
and tratamiento.id_tratamiento in (
									select id_tratamiento
									from tratamiento join persona on tratamiento.cuil_paciente = persona.cuil_persona
									and not exists (	select 1
														from produce
														join efecto_adverso on produce.cod_efecto_adverso = efecto_adverso.cod_efecto_adverso
														where efecto_adverso.nivel_gravedad > 1
														and produce.id_tratamiento = tratamiento.id_tratamiento
				));


-- Este view me trae los tratamientos no peligrosos en personas del rango etario 7,8 (41-50 / 51-70) que fueron definidos como adultos mayores
create view tr_no_pel_en_amay as
select id_tratamiento
from tratamiento join persona on tratamiento.cuil_paciente = persona.cuil_persona
where persona.id_rango_etario in (7,8)
and not exists (	select 1
					from produce
					join efecto_adverso on produce.cod_efecto_adverso = efecto_adverso.cod_efecto_adverso
                    where efecto_adverso.nivel_gravedad > 1
                    and produce.id_tratamiento = tratamiento.id_tratamiento
				);

-- Revisar que cuils tienen estos tratamientos para agregarles antecedentes --
select * from tr_no_pel_en_amay join tratamiento on tr_no_pel_en_amay.id_tratamiento = tratamiento.id_tratamiento;

/* Solo obtengo dos resultados, asi que al cuil del tratamiento 71 voy a colocarle mas de dos antecedentes, y al del 44/47 solamente 2, para que solo me aparezca el tratamiento 71 */