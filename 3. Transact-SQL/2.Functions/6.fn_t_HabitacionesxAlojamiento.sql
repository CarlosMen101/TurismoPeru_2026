--Habitaciones por alojamiento

Create or alter Function came.fn_HabitaacionesAlojamiento
(
	@IdAlojamiento int
)
Returns table 
return
(
	Select 
	H.id_alojamiento,
	h.numero_habitacion,
	TH.nombrehabitacion,
	TH.capacidad_personas,
	h.precio_noche,
	H.estado,
	H.descripcion
	From came.habitacion H INNER JOIN
	CAME.tipo_habitacion TH on
	H.id_tipo_habitacion = TH.id_tipo_habitacion
	where id_alojamiento=@IdAlojamiento
);
go

--Ejecutar
select * , 
GETDATE()as Fecha_Consulta,came.fn_NombreCompletoPersona(104)as Estudiante 
from came.fn_HabitaacionesAlojamiento(2);