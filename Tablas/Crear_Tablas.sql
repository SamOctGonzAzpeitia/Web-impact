CREATE TABLE Terapeutas
(	
	NumeroEmpleado numeric (5)not null,
	NombreEmpleado varchar (50)not null,
	Telefono varchar (10) not null,
	Domicilio varchar (100) not null,
	Especialidad varchar (20) not null,
	Correo varchar (50) not null
)


CREATE TABLE Pacientes
(
	NumeroPaciente numeric (5) not null,
	NombrePaciente varchar (50) not null, 
	ApellidoMaterno varchar (50) not null,
	ApellidoPaterno varchar (50) not null,
	Domicilio varchar (50),
	Telefono varchar (10),
	Correo varchar (50),
	FechaNacimiento DateTime not null, 
	Genero varchar (10), 
	Diagnostico varchar (200),
	Lesion varchar (20) not null,
	Ingreso DateTime not null, 
	Reingreso DateTime, 
	Egreso DateTime, 
	Dependencia varchar (50),
	/*imagen
	curp
	ActaNacimiento
	ComprobanteDomicilio
	ExpedienteMedico
	RecomendacionMedica*/
	Municipio varchar (20),
	Estado varchar (20),
	/*Asistencia */
	
)

CREATE TABLE Donativos
(
	RazonSocial varchar (100) not null,
	RFC char (13) not null,
	Direccion varchar (50),
	Telefono varchar (10),
	Correo varchar (50) not null,
	Descripcion varchar (100),
	Fecha DateTime

)

CREATE TABLE  HistorialClinico
(
    TipoHistorial varchar (20) not null,
    NombreEmpleado varchar (50) not null,
    NumeroEmpleado numeric (5) not null,
    NombrePaciente varchar (20) not null,
	NumeroPaciente numeric (5) not null,
    ApellidoPaterno varchar (20) not null,
    ApellidoMaterno varchar (20) not null,
    Edad numeric (3) not null,
    Ingreso DateTime not null,
    Diagnostico varchar (200) not null,
    Tratamiento varchar (200) not null,
    fecha DateTime not null
)

ALTER TABLE HistorialClinico add constraint NumeroEmpleadoHC
foreign key (NumeroEmpleado) references Terapeutas(NumeroEmpleado); 


ALTER TABLE HistorialClinico add constraint NumeroPacienteHC
foreign key (NumeroPaciente) references Pacientes(NumeroPaciente); 

SELECT *FROM HistorialClinico

SELECT NombrePaciente, ApellidoPaterno, ApellidoMaterno
FROM HistorialClinico
WHERE NombreEmpleado = 'William Ingolotti'


SELECT Domicilio
FROM Terapeutas T, HistorialClinico HC
WHERE T.NombreEmpleado = HC.NombreEmpleado AND HC.NombrePaciente = 'Marita'








