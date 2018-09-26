CREATE TABLE [dbo].[ClamavCfg] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL,
    [Quarantine]	VARCHAR (50) NOT NULL,
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO