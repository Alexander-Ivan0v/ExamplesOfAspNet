CREATE TABLE [dbo].[Usr] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL,
    [Name]			VARCHAR(50)	 NOT NULL,
	[Pass]			VARCHAR(100) NULL,
	[UDomain]		VARCHAR(25)  NULL,
	[ULogin]		VARCHAR(25)  NOT NULL,
	[UEmail]		VARCHAR(50)  NULL,
	[Theme]			VARCHAR(50)  NULL,
	[IsLocal]		BIT          NOT NULL,
	[IsDel]			BIT          NOT NULL,
	[IsDisabled]	BIT			 NOT NULL,
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

CREATE INDEX [IDX_Usr_Name] ON [dbo].[Usr] (Name)
GO

CREATE INDEX [IDX_Usr_UDomainULogin] ON [dbo].[Usr] (UDomain, ULogin)
GO

CREATE INDEX [IDX_Usr_IsDel] ON [dbo].[Usr] (IsDel)
GO

CREATE INDEX [IDX_Usr_IsDisabled] ON [dbo].[Usr] (IsDisabled)
GO

CREATE INDEX [IDX_Usr_IsLocal] ON [dbo].[Usr] (IsLocal)
GO

CREATE UNIQUE INDEX [IDX_Usr_UDomainULogin_Unique] ON [dbo].[Usr] (UDomain, ULogin)
GO