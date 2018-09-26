CREATE TABLE [dbo].[Team] (
    [Id]			BIGINT			IDENTITY (1, 1) NOT NULL,
    [Name]			VARCHAR(100)	NOT NULL,
    [Comment]		VARCHAR(256)	NULL,
	[IsDel]			BIT				NOT NULL,
	[IsDisabled]	BIT				NOT NULL,
    [ts]       rowversion			NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

CREATE UNIQUE INDEX [IDX_Tea_Name_Unique] ON [dbo].[Team] (Name)
GO

CREATE INDEX [IDX_Tea_IsDel] ON [dbo].[Team] (IsDel)
GO

CREATE INDEX [IDX_Tea_IsDisabled] ON [dbo].[Team] (IsDisabled)
GO