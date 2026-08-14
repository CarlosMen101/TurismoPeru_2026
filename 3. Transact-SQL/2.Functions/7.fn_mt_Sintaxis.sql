-- Sintaxis Funcion Tabla Multiples Sentencias 

Create or Alter Function cam.fn_nombrefuncion
(
	--Parametro TipoDato
	@edad int
)
Returns @Resultado TABLE
(
	Columna1 tipodato,
	Columna2 tipodato,
	Columna3 tipodato,
)
AS
BEGIN
	--instrucciones SQL
	Return;
END;
GO