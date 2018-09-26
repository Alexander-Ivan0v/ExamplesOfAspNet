CREATE TABLE [dbo].[ParViewOption] (
    [Id]	   BIGINT			IDENTITY (1, 1) NOT NULL,
    [Name]     VARCHAR (50)		NOT NULL,
    [Data]	   NVARCHAR(MAX)	NULL,
	[IsDel]	   BIT				NOT NULL,
	[Seq]	   INT				NOT NULL default 0,	
    [ts]       rowversion		NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

CREATE INDEX [IDX_ParViewOption_Name] ON [dbo].[ParViewOption] (Name)
GO

CREATE INDEX [IDX_ParViewOption_IsDel] ON [dbo].[ParViewOption] (IsDel)
GO