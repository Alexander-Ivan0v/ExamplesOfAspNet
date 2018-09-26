CREATE TABLE [dbo].[ParSpecial] (
    [Id]		BIGINT			IDENTITY (1, 1) NOT NULL,
	[Name]		VARCHAR(50)		NOT NULL,
    [Data]		NVARCHAR(MAX)	NOT NULL,
	[Comment]	VARCHAR(256)	NULL,
	[IsDel]		BIT				NOT NULL,	
    [ts]		rowversion		NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

CREATE INDEX [IDX_ParSpecial_IsDel] ON [dbo].[ParSpecial] (IsDel)
GO

CREATE INDEX [IDX_ParSpecial_Name] ON [dbo].[ParSpecial] (Name)
GO