ALTER TABLE Donativos
ADD NumeroEmpleado int;

SELECT * 
FROM Donativos

SELECT * 
FROM Empleados

ALTER TABLE	Pacientes
ADD Imagen varchar(200),
	Curp varchar(200),
	ActaNacimiento varchar(200),
	ComprobanteDomicilio varchar(200),
	Total int,
	Faltas int,
	Justificacion varchar(200)

CREATE TABLE roles (
  Id_Rol varchar(30) NOT NULL,
  Descripcion_Rol text NOT NULL
)

INSERT INTO roles (Id_Rol, Descripcion_Rol) VALUES	
('Administracion', 'Crea empleados, gestiona donativos y genera expedientes de pacientes'),
('Terapeuta', 'Gestiona pacientes, crea reportes, toma asistencia')

CREATE TABLE privilegios (
  Id_Privilegio varchar(30) NOT NULL,
  Accion text NOT NULL
) 

INSERT INTO privilegios (Id_Privilegio, Accion) VALUES
('CrearPaciente','Se crea expediente de paciente'),
('ConsultaPaciente','Se consulta el expediente de un paciente con todos sus datos'),
('ModificarDatosPaciente','Se modifica algun dato que requiera el paciente'),
('EliminarPaciente','Se elimina el expediente del paciente'),
('RegistrarDonacion','Se registra donacion'),
('ConsultarDonacion','Se consultan datos relevantes de la donacion'),
('ModificarDonacion','Se modifican datos requeridos en el registro'),
('EliminarDonacion','Se elimina el registro de la donacion'),
('CrearEmpleado','Se crea una nueva cuenta de empleado'),
('EliminarEmpleado','Se elimina una cuenta de empleado'),
('ConsultarEmpleado','Se consultan los datos de la cuenta del empleado'),
('ModificarEmpleado','Se modifican los datos del empleado'),
('RegistrarAsistencia','Se registra la asistencia del paciente a una sesion'),
('ConsultarAsistencia','Se consulta las asistencias totales de un paciente junto con faltas'),
('CrearReportePaciente','Se crea un reporte del diagnostico y tratamineto de un paciente'),
('ConsultarReportePaciente','Se consulta el reporte de un paciente'),
('ModificarReportePaciente','Se modifican datos del reporte de un paciente'),
('EliminarReportePaciente','Se elimina el reporte de un paciente')

CREATE TABLE roles_privilegios (
  Id_Privilegio varchar(30) NOT NULL,
  Id_Rol varchar(30) NOT NULL
)


INSERT INTO roles_privilegios (Id_Privilegio, Id_Rol) VALUES
('CrearPaciente','Administracion'),
('ConsultaPaciente','Administracion'),
('ModificarDatosPaciente', 'Administracion'), 
('EliminarPaciente','Administracion'),
('RegistrarDonacion','Administracion'),
('ConsultarDonacion','Administracion'),
('ModificarDonacion','Administracion'),
('EliminarDonacion','Administracion'),
('CrearEmpleado','Administracion'),
('EliminarEmpleado','Administracion'),
('ConsultarEmpleado','Administracion'),
('ModificarEmpleado','Administracion'),
('RegistrarAsistencia','Terapeuta'),
('ConsultarAsistencia','Terapeuta'),
('CrearReportePaciente','Terapeuta'),
('ConsultarReportePaciente','Terapeuta'),
('ModificarReportePaciente','Terapeuta'),
('EliminarReportePaciente','Terapeuta');

CREATE TABLE roles_Empleados (
  Id_Rol varchar(30) NOT NULL,
  NumeroEmpleado int NOT NULL
)