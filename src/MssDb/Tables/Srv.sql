CREATE TABLE [dbo].[Srv] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL,
    [Name]			VARCHAR (50) NOT NULL,
    [Comment]		VARCHAR(256) NULL,
	[PayPerDay]		MONEY		 NOT NULL default 0.0,
	[IsDisabled]	BIT          NOT NULL,	
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

CREATE UNIQUE INDEX [IDX_Srv_Name_Unique] ON [dbo].[Srv] (Name)
GO

CREATE INDEX [IDX_Srv_IsDel] ON [dbo].[Srv] (IsDisabled)
GO

CREATE INDEX [IDX_Srv_PayPerDay] ON [dbo].[Srv] (PayPerDay)
GO