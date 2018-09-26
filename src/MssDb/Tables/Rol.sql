CREATE TABLE [dbo].[Rol] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL,
    [Name]			VARCHAR (50) NOT NULL,
	[Comment]		VARCHAR(256) NULL,
	[IsDel]			BIT          NOT NULL,
	[Tnt]			BIGINT		 NOT NULL,
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Tnt]) REFERENCES [dbo].[Tnt] ([Id]),
);
GO

CREATE INDEX [IDX_Rol_Name] ON [dbo].[Rol] (Name)
GO

CREATE INDEX [IDX_Rol_Tnt] ON [dbo].[Rol] (Tnt)
GO

CREATE UNIQUE INDEX [IDX_Rol_NameTnt_UNIQUE] ON [dbo].[Rol] (Name, Tnt)
GO

CREATE INDEX [IDX_Rol_IsDel] ON [dbo].[Rol] (IsDel)
GO