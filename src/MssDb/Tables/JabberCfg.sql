CREATE TABLE [dbo].[JabberCfg] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL,
    [Protocol]		VARCHAR (50) NOT NULL,
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO