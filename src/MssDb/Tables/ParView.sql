CREATE TABLE [dbo].[ParView] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Name]     VARCHAR (50) NOT NULL,
    [Comment]  VARCHAR(256) NULL,
	[IsDel]	   BIT          NOT NULL,	
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

CREATE INDEX [IDX_ParView_Name] ON [dbo].[ParView] (Name)
GO

CREATE INDEX [IDX_ParView_IsDel] ON [dbo].[ParView] (IsDel)
GO