CREATE OR ALTER PROCEDURE came.sp_ListarPersonas
AS
BEGIN
    Select id_persona, tipo_persona, nombres, apaterno, amaterno, estado
    From came.persona
END
GO