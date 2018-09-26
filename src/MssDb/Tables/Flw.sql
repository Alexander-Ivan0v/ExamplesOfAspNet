CREATE TABLE [dbo].[Flw] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL,
    [Name]			VARCHAR (50) NOT NULL,
    [Comment]		VARCHAR(256) NULL,
	[IsDel]			BIT          NOT NULL,
	[IsDisabled]	BIT			 NOT NULL,
	[IsSupport]		BIT			 NOT NULL,
	[PayPerRun]		MONEY		 NOT NULL default 0.0,
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

CREATE UNIQUE INDEX [IDX_Flw_Name_Unique] ON [dbo].[Flw] (Name)
GO

CREATE INDEX [IDX_Flw_IsDel] ON [dbo].[Flw] (IsDel)
GO

CREATE INDEX [IDX_Flw_IsDisabled] ON [dbo].[Flw] (IsDisabled)
GO

CREATE INDEX [IDX_Flw_IsSupport] ON [dbo].[Flw] (IsSupport)
GO
