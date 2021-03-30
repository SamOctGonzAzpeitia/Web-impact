sp_help  Pacientes

SELECT * 
FROM Pacientes

sp_help  municipio
sp_help  entidad

ALTER TABLE municipio
ADD CONSTRAINT PK_Municipio PRIMARY KEY (idEstado,idMunicipio)

DELETE FROM HistorialClinico;

DELETE FROM Pacientes;

ALTER TABLE roles_privilegios
ADD FOREIGN KEY (Id_Privilegio) REFERENCES privilegios(Id_Privilegio)

ALTER TABLE privilegios
ADD PRIMARY KEY (Id_Privilegio)

sp_help roles
sp_help roles_privilegios
sp_help privilegios