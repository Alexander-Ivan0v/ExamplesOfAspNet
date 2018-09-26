CREATE TABLE [dbo].[ChgLog] (
    [Id]	   BIGINT			IDENTITY (1, 1) NOT NULL,
    [Comment]  NVARCHAR(MAX)	NOT NULL,	
    [ts]       rowversion		NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO
