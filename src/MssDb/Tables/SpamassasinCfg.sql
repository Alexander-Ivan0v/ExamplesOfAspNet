CREATE TABLE [dbo].[SpamassasinCfg] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL,
    [Algorythm]		VARCHAR (50) NOT NULL,
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO