--Reserva de un cliente
CREATE OR ALTER FUNCTION came.fn_ReservaCliente
(
	@IdCliente int
)
RETURNS TABLE
RETURN
(
	SELECT
		id_reserva,
		fecha_reserva,
		ER.nombre as [Estado Reserva]
	FROM came.reserva R inner join
	came.estado_reserva ER on
	ER.id_estado_reserva = R.id_estado_reserva
	WHERE R.id_Cliente=@IdCliente
);
GO
--Ejecutar
SELECT * , getdate() as Fecha_Consulta, came.fn_NombreCompletoPersona(104)as Estudiane 
FROM came.fn_ReservaCliente(2);