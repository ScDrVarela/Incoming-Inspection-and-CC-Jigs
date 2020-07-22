
CREATE TABLE [dbo].[Employees](
    [No] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Nombre] [nvarchar](255) NOT NULL,
    [Apellido] [nvarchar](255) NOT NULL,
    [Reloj] int NOT NULL,
    [Nivel] [nvarchar](255) NOT NULL,
    [Registro] date NOT NULL,
    [Baja] date NOT NULL
);
GO