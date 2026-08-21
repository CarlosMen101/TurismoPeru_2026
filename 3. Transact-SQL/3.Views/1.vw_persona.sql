USE TURISMOPERU_came;
GO

CREATE OR ALTER VIEW came.vw_persona
AS
SELECT 
    p.apaterno,
    p.amaterno,
    p.nombres,
    CASE 
        WHEN p.tipo_persona = 'N' THEN 'Natural'
        WHEN p.tipo_persona = 'J' THEN 'Juridica'
    END AS [Tipo Persona],
    p.estado,
    GETDATE() AS Fecha_Consulta,
    came.fn_NombreCompletoPersona(104) AS Docente
FROM came.persona p;
GO

SELECT * FROM came.vw_persona;