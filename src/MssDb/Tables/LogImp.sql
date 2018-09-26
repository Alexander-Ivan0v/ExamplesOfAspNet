CREATE TABLE [dbo].[LogImp] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Name]     VARCHAR (50) NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

CREATE UNIQUE INDEX [IDX_LogImp_Name_Unique] ON [dbo].[LogImp] (Name)
GO