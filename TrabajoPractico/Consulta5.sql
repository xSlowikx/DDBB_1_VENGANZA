/* Consulta 5: ¿Cuántas muertes de recién nacidos se pueden relacionar a medicamentos administrados a la madre?
Si el modelo realizado no permite contestar esta pregunta, modificarlo para poder hacerlo. */

-- Version con in --

select count(*) from persona join tratamiento
on persona.cuil_persona = tratamiento.cuil_paciente
where persona.edad = 0
and id_tratamiento in (select distinct id_tratamiento
						from produce
                        join efecto_adverso on produce.cod_efecto_adverso = efecto_adverso.cod_efecto_adverso
						join gravedad on efecto_adverso.nivel_gravedad = gravedad.nivel_gravedad
						where gravedad.descripcion = "Muerte") -- esto me dice si el bebe esta muerto
and persona.cuil_madre in (select distinct cuil_paciente from tratamiento
							where id_tipo_tratamiento in (2,6));
                            
-- Version con exists --

select count(*) from persona
where edad = 0
and exists (select 1 from tratamiento join produce on tratamiento.id_tratamiento = produce.id_tratamiento
			join efecto_adverso on produce.cod_efecto_adverso = efecto_adverso.cod_efecto_adverso
            join gravedad on efecto_adverso.nivel_gravedad = gravedad.nivel_gravedad
			where gravedad.descripcion = "Muerte"
            and tratamiento.cuil_paciente = persona.cuil_persona)
and exists (select 1 from tratamiento
			where exists (select 1 from tipo_tratamiento join tipo_procedimiento
							on tipo_tratamiento.id_tipo_procedimiento = tipo_procedimiento.id_tipo_procedimiento
                            where tipo_procedimiento.descripcion = "Invasivo"
                            and id_tipo_tratamiento = tratamiento.id_tipo_tratamiento)
			and tratamiento.cuil_paciente = persona.cuil_madre);

-- Me fijo si coinciden, tengo 10 recien nacidos y solamente 1 nunca recibio tratamiento, por lo cual el count deberia dar 9 --
select cuil_persona from persona
where edad = 0
and not exists (select 1 from tratamiento where cuil_paciente = persona.cuil_persona);

-- Corroboro que efectivamente no exista un tratamiento para el paciente que recibi en la consulta anterior --
select * from tratamiento where cuil_paciente = 91080571907;