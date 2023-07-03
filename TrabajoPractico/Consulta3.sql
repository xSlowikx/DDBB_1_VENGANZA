/*Consulta 3: ¿Cuántas personas ha habido que hayan tenido la mayor cantidad de efectos adversos de algún tratamiento de vacunación? */
select count(*)
from (
	select distinct cuil_paciente
	from tratamiento
	join produce on tratamiento.id_tratamiento = produce.id_tratamiento
    join compuesto_farmacologico on tratamiento.id_tratamiento = compuesto_farmacologico.id_tratamiento
    join tipo_compuesto on compuesto_farmacologico.id_tipo_compuesto = tipo_compuesto.id_tipo_compuesto
    where descripcion = "Vacuna"
	group by tratamiento.id_tratamiento, tratamiento.cuil_paciente
	having count(cod_efecto_adverso) = (
		select max(cantidad_efectos) as cantidad_efectos
		from (
			select count(*) as cantidad_efectos
			from produce
			join compuesto_farmacologico on produce.id_tratamiento = compuesto_farmacologico.id_tratamiento
			join tipo_compuesto on compuesto_farmacologico.id_tipo_compuesto = tipo_compuesto.id_tipo_compuesto
			where descripcion = "Vacuna"
			group by produce.id_tratamiento
        ) as efectos_xtratamiento
	)
) as cantidad_conmayoresefectos;
                
/* Segunda opcion, pero sigue siendo igual de extensa, en esta busco y comparo efectos por persona, y le agrego un distinct para que no me devuelva la misma en el caso de
existir esa posibilidad */
select count(*) as cantidad_conmayoresefectos
from (
    select distinct cuil_paciente
    from (
        select cuil_paciente, count(*) as cantidad_efectos
        from tratamiento
        join produce on tratamiento.id_tratamiento = produce.id_tratamiento
        join compuesto_farmacologico on tratamiento.id_tratamiento = compuesto_farmacologico.id_tratamiento
        join tipo_compuesto on compuesto_farmacologico.id_tipo_compuesto = tipo_compuesto.id_tipo_compuesto
        where descripcion = 'Vacuna'
        group by tratamiento.id_tratamiento, cuil_paciente
    ) as cantidad_xpersona
    where cantidad_efectos = (
        select max(cantidad_efectos) as max_cantidad_efectos
        from (
            select count(*) as cantidad_efectos
            from produce
            join compuesto_farmacologico on produce.id_tratamiento = compuesto_farmacologico.id_tratamiento
            join tipo_compuesto on compuesto_farmacologico.id_tipo_compuesto = tipo_compuesto.id_tipo_compuesto
            where descripcion = 'Vacuna'
            group by produce.id_tratamiento
        ) subconsulta_max
    )
) distintos_pacientes;


-- --------------------------------

-- Viendo efectos x tratamiento --
select tratamiento.id_tratamiento, count(*)
from tratamiento
join produce on tratamiento.id_tratamiento = produce.id_tratamiento
group by tratamiento.id_tratamiento;

-- Viendo efectos x tratamiento de vacuna --

select produce.id_tratamiento, count(*) as cantidad_efectos
						from -- tratamiento
						-- join
						produce -- on tratamiento.id_tratamiento = produce.id_tratamiento
						join compuesto_farmacologico on produce.id_tratamiento = compuesto_farmacologico.id_tratamiento
						join tipo_compuesto on compuesto_farmacologico.id_tipo_compuesto = tipo_compuesto.id_tipo_compuesto
						where descripcion = "Vacuna"
						group by produce.id_tratamiento;
                        
-- Agregar dos efectos adversos al tratamiento 32 para que tenga 17 como el 34 y ver si el count me devuelve dos personas --
insert into produce values (32, (select cod_efecto_adverso from efecto_adverso order by rand() limit 1), "20230605"), (32,(select cod_efecto_adverso from efecto_adverso order by rand() limit 1),"20221224");