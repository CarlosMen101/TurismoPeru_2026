CREATE OR ALTER FUNCTION came.fn_MT_ReservasPorClienteYEstado(
    @IdCliente INT,
    @Estado VARCHAR(50) = NULL
)
RETURNS @Resultado TABLE (
    CodigoReserva VARCHAR(20),
    FechaInicio DATE,
    PrecioTotal DECIMAL(10,2),
    EstadoReserva VARCHAR(50)
)
AS
BEGIN
    IF @Estado IS NULL
    BEGIN
        INSERT INTO @Resultado (CodigoReserva, FechaInicio, PrecioTotal, EstadoReserva)
        SELECT R.codigo_reserva, R.fecha_inicio, R.precio_total, ER.nombre
        FROM came.reserva R
        INNER JOIN came.estado_reserva ER ON R.id_estado_reserva = ER.id_estado_reserva
        WHERE R.id_cliente = @IdCliente;
    END
    ELSE
    BEGIN
        INSERT INTO @Resultado (CodigoReserva, FechaInicio, PrecioTotal, EstadoReserva)
        SELECT R.codigo_reserva, R.fecha_inicio, R.precio_total, ER.nombre
        FROM came.reserva R
        INNER JOIN came.estado_reserva ER ON R.id_estado_reserva = ER.id_estado_reserva
        WHERE R.id_cliente = @IdCliente AND ER.nombre = @Estado;
    END

    RETURN;
END;
GO

-- Ejecución
SELECT 
    c.id_persona AS id_cliente,
    p.nombres + ' ' + p.apaterno AS NombreCliente,
    res.CodigoReserva,
    res.FechaInicio,
    res.EstadoReserva,
    GETDATE() AS Fecha_Consulta,
    came.fn_NombreCompletoPersona(105) AS Estudiante
FROM came.cliente c
INNER JOIN came.persona p ON c.id_persona = p.id_persona
CROSS APPLY came.fn_MT_ReservasPorClienteYEstado(c.id_persona, 'Anulada') res;
GO