CREATE TABLE [dbo].[PostfixCfg] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL,
    [Domain]		VARCHAR (50) NOT NULL,
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO