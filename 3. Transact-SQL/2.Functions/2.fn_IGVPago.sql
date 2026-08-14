Create or Alter FUNCTION came.fn_CalcularIGVPago
(
	@monto money
)
returns money
as
begin 
	return @monto*0.18;
end;
go
--ejecutar
select monto, came.fn_CalcularIGVPago(monto)as IGV,
GETDATE() AS Fecha_Consulta
from came.pago
where monto >=0;