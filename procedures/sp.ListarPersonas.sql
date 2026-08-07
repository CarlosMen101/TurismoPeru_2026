CREATE OR ALTER PROCEDURE came.sp_ListarClientes
AS
BEGIN
    Select p.id_persona, p.tipo_persona, nombres, apaterno, amaterno, estado
    From came.persona p
    inner join came.cliente c
    on p.id_persona = c.id_persona
END
GO