CREATE TABLE [dbo].[Tnt] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL,
    [IsDel]			BIT			 NOT NULL,
	[Cfg]			BIGINT		 NOT NULL,
	[Name]			VARCHAR(50)  NOT NULL,
	[FullName]		VARCHAR(100) NULL,
	[Comment]		VARCHAR(256) NULL,
	[AppLogin]		VARCHAR(25)	 NULL,
	[AppPass]		VARCHAR(25)	 NULL,
	[AppDomain]		VARCHAR(25)	 NULL,
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Cfg]) REFERENCES [dbo].[Cfg] ([Id])
);
GO

CREATE INDEX [IDX_Tnt_Cfg] ON [dbo].[Tnt] (Cfg)
GO

CREATE UNIQUE INDEX [IDX_Tnt_Name] ON [dbo].[Tnt] (Name)
GO

CREATE INDEX [IDX_Tnt_IsDel] ON [dbo].[Tnt] (IsDel)
GO