CREATE TABLE [dbo].[Cfg] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL,
    [IsDel]			BIT			 NOT NULL,
	[DefLogin]		VARCHAR(25)	 NULL,
	[DefPass]		VARCHAR(25)	 NULL,
	[DefDomain]		VARCHAR(25)	 NULL,
	[Ps]			NVARCHAR(MAX)NULL,
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

CREATE INDEX [IDX_Cfg_IsDel] ON [dbo].[Cfg] (IsDel)
GO

CREATE UNIQUE INDEX [IDX_Cfg_IsDelDefLoginDefPassDefDomain_Unique] ON [dbo].[Cfg] (IsDel, DefLogin, DefPass, DefDomain)
GO