create or alter view came.vw_pagosmayores500
as
select 
	id_pago,
	id_reserva,
	monto,
	MP.nombre as [Medio de Pago],
	GETDATE() as Fecha_consulta,
	came.fn_NombreCompletoPersona(104)as docente

From came.pago p 
inner join came.medio_pago MP on
P.id_medio_pago = MP.id_medio_pago
where monto>500;

select * 
from came.vw_pagosmayores500