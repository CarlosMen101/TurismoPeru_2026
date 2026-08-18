--Reserva Cliente
Create or alter function came.fn_MSTVFReservasCliente
(
	@Idcliente int
)
Returns @resultado table
(
	IdReserva int,
	FechReserva date,
	EstadoReserva varchar(100),
	TotalPagado money
)
as
begin
	Insert into @resultado
	(
		IdReserva ,
		FechReserva ,
		EstadoReserva ,
		TotalPagado 
	)
	Select
		R.id_reserva,
		R.fecha_reserva,
		er.nombre, -- estado reserva
		isnull(sum(P.monto),0)
	From came.reserva R 
	inner join
		came.estado_reserva ER on
		ER.id_estado_reserva = r.id_estado_reserva
	left join
		came.pago P on 
		R.id_reserva = p.id_reserva
	where R.id_cliente = @Idcliente
	Group by
		R.id_reserva,
		R.fecha_reserva,
		ER.nombre;
	Return;

end;
go

--ejecutar
select *, 
Getdate() as Fecha_Consulta,
came.fn_NombreCompletoPersona(104)as Estudiante
From came.fn_MSTVFReservasCliente(10)