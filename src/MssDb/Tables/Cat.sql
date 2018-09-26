CREATE TABLE [dbo].[Cat] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL,
    [Name]			VARCHAR (50) NOT NULL,
    [Comment]		VARCHAR(256) NULL,
	[IsDel]			BIT          NOT NULL default 0,	
	[IsDisabled]	BIT          NOT NULL default 0,	
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

CREATE UNIQUE INDEX [IDX_Cat_Name_Unique] ON [dbo].[Cat] (Name)
GO

CREATE INDEX [IDX_Cat_IsDel] ON [dbo].[Cat] (IsDel)
GO

CREATE INDEX [IDX_Cat_IsDisabled] ON [dbo].[Cat] (IsDisabled)
GO