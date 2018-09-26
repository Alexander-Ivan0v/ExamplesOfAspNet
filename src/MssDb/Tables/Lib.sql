CREATE TABLE [dbo].[Lib] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL,
    [Name]			VARCHAR (50) NOT NULL,
	[Data]			NVARCHAR(MAX)NOT NULL,
    [Comment]		VARCHAR(256) NULL,
	[IsDel]			BIT          NOT NULL,	
	[IsDisabled]	BIT          NOT NULL,
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

CREATE UNIQUE INDEX [IDX_Lib_Name_Unique] ON [dbo].[Lib] (Name)
GO

CREATE INDEX [IDX_Lib_IsDel] ON [dbo].[Lib] (IsDel)
GO

CREATE INDEX [IDX_Lib_IsDisabled] ON [dbo].[Lib] (IsDisabled)
GO