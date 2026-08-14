Obtener el nombre completo de una persona
--Obtener el nombre complero de una persona 

CREATE OR ALTER FUNCTION came.fn_NombreCompletoPersona
(
	@IdPersona int 
)
returns Varchar(200)
as 
begin
	Declare @nombrecompleto Varchar(200)
	select 
	@nombrecompleto = 
	nombres + ' '+ 
	apaterno + ' ' + 
	amaterno
	
	from came.persona 
	where id_persona = @IdPersona;
	--
	return @nombrecompleto;
end
go
--ejecutar funcion
select came.fn_NombreCompletoPersona (104)
as Persona, GETDATE() as FechaConsulta
