use TURISMOPERU_came
Create or Alter view came.vw_alojamientos
as
select 
	nombre,
	TA.Nombre_Tipo,
	TA.Descripcion,
	getdate() as Fecha_consulta
from came.alojamiento A
inner join came.tipo_alojamiento TA on 
A.id_tipoalojamiento = TA.id_tipoalojamiento;

select*
From came.vw_alojamientos;