CREATE DATABASE EncuestaUTC
GO

USE EncuestaUTC
GO

CREATE TABLE PARTIDO
(
PartidoID INT IDENTITY(1,1),
NombrePartido VARCHAR(50)
CONSTRAINT pk_IDPartido PRIMARY KEY(PartidoID)
)
INSERT INTO PARTIDO (NombrePartido) VALUES ('PLN'), ('PAC'), ('PUSC')

GO

CREATE TABLE DATOS
(
	Encuesta int identity (1,1),
	Nombre varchar(50),
	Edad int check (Edad >= 18 and Edad <= 50) not null,
	CorreoElectronico nvarchar(100) check (CorreoElectronico like '%_@__%.__%') not null,
	PartidoPolitico int not null,
	CONSTRAINT pk_Encuesta PRIMARY KEY(Encuesta)
)

GO

CREATE PROCEDURE CONSULTAR_VOTOS
AS
	BEGIN
SELECT * FROM DATOS
	END
EXEC CONSULTAR_VOTOS

GO

CREATE PROCEDURE CONSULTAR_PARTIDOS
AS
	BEGIN
SELECT * FROM PARTIDO
	END
EXEC CONSULTAR_PARTIDOS
GO

CREATE PROCEDURE AGREGARVOTO	
@NOMBRE NVARCHAR(50),
@EDAD INT,
@CORREO VARCHAR(50),
@PARTIDO INT
AS
	BEGIN
		INSERT INTO DATOS (Nombre,Edad,CorreoElectronico,PartidoPolitico) VALUES (@NOMBRE,@EDAD,@CORREO,@PARTIDO)
	END
GO
EXEC AGREGARVOTO 'Lorenzo Leiva',18,'lorenzin@gmail.com', 1

GO

CREATE PROCEDURE CONSULTA_VOTOS
AS
	BEGIN
	SELECT DATOS.Encuesta, DATOS.Nombre as Nombre, DATOS.Edad as Edad, DATOS.CorreoElectronico as [Correo Electronico], DATOS.PartidoPolitico as ID, PARTIDO.NombrePartido as Partido FROM DATOS
	INNER JOIN PARTIDO ON DATOS.PartidoPolitico = PARTIDO.PartidoID
	END
EXEC CONSULTA_VOTOS
	GO

CREATE PROCEDURE CONSULTA_PARTIDOS
AS
	BEGIN
	SELECT PartidoID, NombrePartido FROM PARTIDO
	END
EXEC CONSULTA_PARTIDOS