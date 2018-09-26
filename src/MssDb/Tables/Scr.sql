CREATE TABLE [dbo].[Scr] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL,
    [Name]			VARCHAR (50) NOT NULL,
	[Data]			NVARCHAR(MAX)NOT NULL,
    [Comment]		VARCHAR(256) NULL,
	[IsDel]			BIT          NOT NULL,
	[IsDisabled]	BIT			 NOT NULL,
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

CREATE UNIQUE INDEX [IDX_Scr_Name_Unique] ON [dbo].[Scr] (Name)
GO

CREATE INDEX [IDX_Scr_IsDel] ON [dbo].[Scr] (IsDel)
GO

CREATE INDEX [IDX_Scr_IsDisabled] ON [dbo].[Scr] (IsDisabled)
GO