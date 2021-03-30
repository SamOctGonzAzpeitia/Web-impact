create table Donativos
(
	RazonSocial varchar(50) not null,
	RFC varchar(50) not null,
	Direccion varchar(50) not null,
	Telefono varchar(50) not null,
	Correo varchar(50) not null,
	Descripcion varchar(50) not null,
	Fecha varchar(50) not null,
	NumeroEmpleado int
);

create table Empleados
(
	NumeroEmpleado varchar(50) not null,
	NombreEmpleado varchar(50) not null,
	Telefono varchar(50) not null,
	Domicilio varchar(50) not null,
	Especialidad varchar(50) not null,
	Correo varchar(50) not null
);

create table Pacientes
(
	NumeroPaciente varchar(50) not null,
	NombrePaciente varchar(50) not null,
	ApellidoPaterno varchar(50) not null,
	ApellidoMaterno varchar(50) not null,
	Domicilio varchar(50) not null,
	Telefono varchar(50) not null,
	FechaNacimiennto varchar(50) not null,
	Genero varchar(50) not null,
	Diagnostico varchar(200) not null,
	Lesion varchar(50) not null,
	Ingreso varchar(50) not null,
	Reingreso varchar(50),
	Egreso varchar(50),
	Dependencia varchar(50),
	Correo varchar(50),
	Municipio varchar(50),
	Estado varchar(50),
	Imagen varchar(200),
	Curp varchar(200),
	ActaNacimiento varchar(200),
	ComprobanteDomicilio varchar(200),
	Total int,
	Faltas int,
	Justificacion varchar(200)
);

create table HistorialClinico
(
	Tipo varchar(50) not null,
	NumeroEmpleado varchar(50) not null,
	NombreEmpleado varchar(50) not null,
	NumeroPaciente varchar(50) not null,
	NombrePaciente varchar(50) not null,
	ApellidoPaterno varchar(50) not null,
	ApellidoMaterno varchar(50) not null,
	Edad varchar(50) not null,
	Ingreso varchar(50) not null,
	Diagnostico varchar(200) not null,
	Tratamiento varchar(200) not null,
	Fecha varchar(50) not null
);

create table entidad
(
	id int not null,
	estado varchar(200) not null,
	abreviacion varchar(10) not null,
	pais varchar(2) not null
);

create table municipio
(
	idEstado int not null,
	idMunicipio int not null,
	nombreMunicipio varchar(400) not null,
	idCab int not null,
	nombreCab varchar(400) not null
);

create table privilegios
(
	Id_Privilegio varchar(30) not null,
	Accion text not null
);

create table roles
(
	Id_Rol varchar(30) not null,
	Descripcion_Rol text not null
);

create table roles_Empleados
(
	Id_Rol varchar(30) not null,
	NumeroEmpleado int not null
);

create table roles_privilegios
(
	Id_Privilegio varchar(30) not null,
	Id_Rol varchar(30) not null
);

