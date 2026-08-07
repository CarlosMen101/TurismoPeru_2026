CREATE OR ALTER PROCEDURE jllb.sp_insertarPersona
@tipo_persona VARCHAR(1),
@nombres VARCHAR(100), 
@apaterno VARCHAR(100),
@amaterno VARCHAR(100),  
@razon_social VARCHAR(150), 
@nombre_comercial VARCHAR(150), 
@id_tipo_documento INT, 
@numero_documento VARCHAR(20), 
@telefono VARCHAR(15),
@email VARCHAR(100),
@id_nacionalidad INT,
@estado VARCHAR(20)
AS
BEGIN 
    BEGIN TRY
        INSERT INTO jllb.persona (
            tipo_persona, nombres, apaterno, amaterno, 
            razon_social, nombre_comercial, id_tipo_documento, 
            numero_documento, telefono, email, id_nacionalidad, estado
        )
        VALUES (
            @tipo_persona, @nombres, @apaterno, @amaterno,  
            @razon_social, @nombre_comercial, @id_tipo_documento, 
            @numero_documento, @telefono, @email, @id_nacionalidad, @estado
        );
        PRINT 'Persona Registrada Correctamente';
    END TRY
    BEGIN CATCH
        SELECT ERROR_MESSAGE();
    END CATCH
END
GO