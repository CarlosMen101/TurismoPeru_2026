--Total pago por una reserva 
Create or alter function came.fn_PagoTotalxReserva
(
	@IdReserva int
)
returns Money
as
begin
	Declare @Total money 
	select
		@Total = sum(monto)
	from came.pago
	where id_reserva = @IdReserva;

	RETURN isnull(@Total,0);
end;
--ejecutar 
select came.fn_PagoTotalxReserva (2) as MontoPagado, Getdate() as Fecha_Consulta