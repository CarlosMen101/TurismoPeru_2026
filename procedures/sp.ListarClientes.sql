CREATE OR ALTER PROCEDURE jllb.sp_ListarClientes
AS
BEGIN
    SELECT p.id_persona, p.tipo_persona, nombres, apaterno, amaterno, estado
    FROM jllb.persona p
    INNER JOIN jllb.cliente c ON p.id_persona = c.id_persona
END
GO