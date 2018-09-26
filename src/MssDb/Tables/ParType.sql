CREATE TABLE [dbo].[ParType] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Name]     VARCHAR (50) NOT NULL,
    [Comment]  VARCHAR(256) NULL,
	[IsDel]	   BIT          NOT NULL,	
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

CREATE UNIQUE INDEX [IDX_ParType_Name_Unique] ON [dbo].[ParType] (Name)
GO

CREATE INDEX [IDX_ParType_IsDel] ON [dbo].[ParType] (IsDel)
GO