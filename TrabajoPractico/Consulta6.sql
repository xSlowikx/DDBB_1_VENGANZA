/* Consulta 6: Formulen una consulta que permita a un profesional médico descartar un tratamiento en niños por ser el riesgo mayor al beneficio.
¿Qué otra información guardarían para realizar esta comparación? Incluirla en el modelo completo. */

/* Primer acercamiento, descartar un tratamiento por nomenclatura (el nombre del tratamiento en si) si hay algun otro tratamiento de la misma nomenclatura donde un menor de 13 anios
(un ninio) tenga como efecto adverso una muerte */

select distinct nomenclatura
from nomenclatura
join tratamiento on nomenclatura.id_nomenclatura = tratamiento.id_nomenclatura
join persona on tratamiento.cuil_paciente = persona.cuil_persona
where edad < 13 -- o id_rango_etario in (1, 2, 3)
and exists (	select 1
				from tratamiento t2
                join produce on t2.id_tratamiento = produce.id_tratamiento
                join efecto_adverso on produce.cod_efecto_adverso = efecto_adverso.cod_efecto_adverso
                join gravedad on efecto_adverso.nivel_gravedad = gravedad.nivel_gravedad
                where descripcion in ("Severo","Muerte")
                and t2.id_nomenclatura = tratamiento.id_nomenclatura);

/*Un segundo acercamiento, version mejorada y funcional teniendo en cuenta una comparacion entre promedio de beneficios de categoria 3 o mayor y un promedio de adversidades de categoria
3 o menor, pero tambien descartarlo si existe el mismo filtro que usamos antes, si hay almenos 1 tratamiento donde un menor de 13 haya fallecido, tambien seleccionara esa nomenclatura*/

select distinct nomenclatura
from nomenclatura
join tratamiento on nomenclatura.id_nomenclatura = tratamiento.id_nomenclatura
join persona on tratamiento.cuil_paciente = persona.cuil_persona
where edad < 13
and (
    (
        select cantidad
        from promedios_ben_xnomenclatura
        where promedios_ben_xnomenclatura.id_nomenclatura = tratamiento.id_nomenclatura
    ) < (
        select cantidad
        from promedios_adv_xnomenclatura
        where promedios_adv_xnomenclatura.id_nomenclatura = tratamiento.id_nomenclatura
    )
    or exists (
        select 1
        from tratamiento t2
        join produce on t2.id_tratamiento = produce.id_tratamiento
        join efecto_adverso on produce.cod_efecto_adverso = efecto_adverso.cod_efecto_adverso
        join gravedad on efecto_adverso.nivel_gravedad = gravedad.nivel_gravedad
        where descripcion in ("Severo", "Muerte")
        and t2.id_nomenclatura = tratamiento.id_nomenclatura
    )
);

/* Primer intento de un segundo acercamiento, el problema aca era que el join unicamente me dejaba con tres registros disponibles y por eso no se veian los demas

select distinct nomenclatura
from nomenclatura
join tratamiento on nomenclatura.id_nomenclatura = tratamiento.id_nomenclatura
join persona on tratamiento.cuil_paciente = persona.cuil_persona
join promedios_adv_xnomenclatura on nomenclatura.id_nomenclatura = promedios_adv_xnomenclatura.id_nomenclatura
join promedios_ben_xnomenclatura on nomenclatura.id_nomenclatura = promedios_ben_xnomenclatura.id_nomenclatura
where edad < 13
and (promedios_ben_xnomenclatura.cantidad < promedios_adv_xnomenclatura.cantidad
or exists (	select 1
			from tratamiento t2
			join produce on t2.id_tratamiento = produce.id_tratamiento
			join efecto_adverso on produce.cod_efecto_adverso = efecto_adverso.cod_efecto_adverso
			join gravedad on efecto_adverso.nivel_gravedad = gravedad.nivel_gravedad
			where descripcion in ("Severo","Muerte")
			and t2.id_nomenclatura = tratamiento.id_nomenclatura));*/


/*Promedio de efectos adversos menores o iguales al riesgo 4 que tiene una nomenclatura (osea cantidad de efectos promedio por nomenclatura,
ya que en nuestro caso esto definiria el tipo de tratamiento) */

create view promedios_adv_xnomenclatura as
select promedio_efectos_malos.id_nomenclatura, avg(cantidad) as cantidad
from (	select tratamiento.id_nomenclatura as id_nomenclatura, count(produce.cod_efecto_adverso) as cantidad
		from tratamiento
        join persona on tratamiento.cuil_paciente = persona.cuil_persona
		join nomenclatura on tratamiento.id_nomenclatura = nomenclatura.id_nomenclatura
		join produce on tratamiento.id_tratamiento = produce.id_tratamiento
		join efecto_adverso on produce.cod_efecto_adverso = efecto_adverso.cod_efecto_adverso
		where efecto_adverso.nivel_gravedad <= 3
        and persona.edad < 13
		group by tratamiento.id_tratamiento, tratamiento.id_nomenclatura) as promedio_efectos_malos
group by promedio_efectos_malos.id_nomenclatura;

select tratamiento.id_nomenclatura as id_nomenclatura, count(produce.cod_efecto_adverso) as cantidad
		from tratamiento
        join persona on tratamiento.cuil_paciente = persona.cuil_persona
		join nomenclatura on tratamiento.id_nomenclatura = nomenclatura.id_nomenclatura
		join produce on tratamiento.id_tratamiento = produce.id_tratamiento
		join efecto_adverso on produce.cod_efecto_adverso = efecto_adverso.cod_efecto_adverso
		where efecto_adverso.nivel_gravedad <= 3
        and persona.edad < 13
		group by tratamiento.id_tratamiento, tratamiento.id_nomenclatura;

-- Probando vista --

select * from promedios_adv_xnomenclatura;

/* Promedio de beneficios mayores o iguales al rango 3 que tiene una nomenclatura (osea cantidad de efectos positivos por nomenclatura, que en nuestro caso define el tipo o el nombre
del tratamiento en cuestion */
create view promedios_ben_xnomenclatura as
select promedio_efectos_buenos.id_nomenclatura, avg(cantidad) as cantidad
from (	select tratamiento.id_nomenclatura as id_nomenclatura, count(se_espera.id_beneficio) as cantidad
		from tratamiento
        join persona on tratamiento.cuil_paciente = persona.cuil_persona
		join nomenclatura on tratamiento.id_nomenclatura = nomenclatura.id_nomenclatura
		join se_espera on tratamiento.id_tratamiento = se_espera.id_tratamiento
		join beneficio on se_espera.id_beneficio = beneficio.id_beneficio
		where beneficio.id_categoria >= 3
        and persona.edad < 13
		group by tratamiento.id_tratamiento, tratamiento.id_nomenclatura) as promedio_efectos_buenos
group by promedio_efectos_buenos.id_nomenclatura;

select * from promedios_ben_xnomenclatura;




-- Si yo uso el join, la consulta funciona, pero el problema es que el join solamente contiene 3 registros, por eso muestra valores incorrectos --

select *
from nomenclatura
join tratamiento on nomenclatura.id_nomenclatura = tratamiento.id_nomenclatura
join persona on tratamiento.cuil_paciente = persona.cuil_persona
join promedios_adv_xnomenclatura on nomenclatura.id_nomenclatura = promedios_adv_xnomenclatura.id_nomenclatura
join promedios_ben_xnomenclatura on nomenclatura.id_nomenclatura = promedios_ben_xnomenclatura.id_nomenclatura
where edad < 13;