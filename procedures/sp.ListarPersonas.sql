CREATE OR ALTER PROCEDURE jllb.sp_ListarPersonas
AS
BEGIN
    SELECT id_persona, tipo_persona, nombres, apaterno, amaterno, estado
    FROM jllb.persona
END
GO