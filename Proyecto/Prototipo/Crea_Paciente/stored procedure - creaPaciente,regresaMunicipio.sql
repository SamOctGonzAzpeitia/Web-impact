SELECT * 
FROM  Pacientes

sp_help Pacientes;

SELECT *
FROM municipio


IF EXISTS (SELECT name FROM sysobjects
		   WHERE name = 'creaPaciente' AND type = 'P')
	DROP PROCEDURE creaPaciente
GO

CREATE PROCEDURE creaPaciente
	@uNumeroPaciente varchar(100),
	@uNombrePaciente varchar(100),
	@uApellidoPaterno varchar(100),
	@uApellidoMaterno varchar(100),
	@uDomicilio varchar(100),
	@uTelefono char(10),
	@uFechaNacimiento date,
	@uGenero varchar(100),
	@uDiagnostico varchar(400),
	@uLesion varchar(100),
	@uIngreso date,
	@uReingreso date,
	@uEgreso date,
	@uDependencia varchar(100),
	@uCorreo varchar(100),
	@uMunicipio varchar(100),
	@uEstado varchar(100),
	@uImagen varchar(100),
	@uCurp varchar(100),
	@uActaNacimiento varchar(100),
	@uComprobanteDomicilio varchar(100),
	@uTotal int,
	@uFaltas int,
	@uJustificacion varchar(200),
	@uRecomendacionMedica varchar(100)
	
	AS
	INSERT INTO Pacientes VALUES(
	@uNumeroPaciente,
	@uNombrePaciente,
	@uApellidoPaterno,
	@uApellidoMaterno,
	@uDomicilio,
	@uTelefono,
	@uFechaNacimiento,
	@uGenero,
	@uDiagnostico,
	@uLesion,
	@uIngreso,
	@uReingreso,
	@uEgreso,
	@uDependencia,
	@uCorreo,
	@uMunicipio,
	@uEstado,
	@uImagen,
	@uCurp,
	@uActaNacimiento,
	@uComprobanteDomicilio ,
	@uTotal,
	@uFaltas,
	@uJustificacion,
	@uRecomendacionMedica
	)
GO

IF EXISTS (SELECT name FROM sysobjects
		   WHERE name = 'regresaMunicipios' AND type = 'P')
	DROP PROCEDURE regresaMunicipios
GO

CREATE PROCEDURE regresaMunicipio
	@uIdEstado int

	AS SELECT M.nombreMunicipio
	FROM municipio M
	WHERE M.idEstado = @uIdEstado 
GO

EXECUTE regresaMunicipio 32

CREATE TABLE Pacientes
	NumeroPaciente varchar(100),
	NombrePaciente varchar(100),
	ApellidoPaterno varchar(100),
	ApellidoMaterno varchar(100),
	Domicilio varchar(100),
	Telefono char(10),
	FechaNacimiento date,
	Genero varchar(100),
	Diagnostico varchar(400),
	Lesion varchar(100),
	Ingreso date,
	Reingreso date,
	Egreso date,
	Dependencia varchar(100),
	Correo varchar(100),
	Municipio varchar(100),
	Estado varchar(100),
	Imagen varchar(100),
	Curp varchar(100),
	ActaNacimiento varchar(100),
	ComprobanteDomicilio varchar(100),
	Total int,
	Faltas int,
	Justificacion varchar(200),
	RecomendacionMedica varchar(100)


