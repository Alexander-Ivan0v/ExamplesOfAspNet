CREATE TABLE [dbo].[LogType] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Name]     VARCHAR (50) NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

CREATE UNIQUE INDEX [IDX_LogType_Name_Unique] ON [dbo].[LogType] (Name)
GO