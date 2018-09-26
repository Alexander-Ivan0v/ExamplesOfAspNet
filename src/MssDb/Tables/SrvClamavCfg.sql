CREATE TABLE [dbo].[SrvClamavCfg] (
    [Id]		BIGINT       IDENTITY (1, 1) NOT NULL,
	[Srv]		BIGINT	    NOT NULL,
    [ClamavCfg]BIGINT	    NOT NULL,	
    [ts]		rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Srv]) REFERENCES [dbo].[Srv] ([Id]),
	FOREIGN KEY ([ClamavCfg]) REFERENCES [dbo].[ClamavCfg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_SrvClamavCfg_SrvClamavCfg_Unique] ON [dbo].[SrvClamavCfg] (Srv, ClamavCfg)
GO