/* Consulta 2: Cantidad de personas con algún tratamiento diagnóstico que no haya confirmado el diagnóstico.*/

select count(*) as "Diagnosticos no confirmados"
from (select tratamiento.cuil_paciente
	  from tratamiento 
      join practica_diagnostica  ON tratamiento.id_tratamiento = practica_diagnostica.id_tratamiento 
	  where practica_diagnostica.confirmacion_dpresuntivo = false) as no_confirmados;