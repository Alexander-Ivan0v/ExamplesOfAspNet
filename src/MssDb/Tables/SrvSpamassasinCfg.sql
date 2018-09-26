CREATE TABLE [dbo].[SrvSpamassasinCfg] (
    [Id]			BIGINT      IDENTITY (1, 1) NOT NULL,
	[Srv]			BIGINT	    NOT NULL,
    [SpamassasinCfg]BIGINT	    NOT NULL,	
    [ts]			rowversion  NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Srv]) REFERENCES [dbo].[Srv] ([Id]),
	FOREIGN KEY ([SpamassasinCfg]) REFERENCES [dbo].[SpamassasinCfg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_SrvSpamassasinCfg_SrvSpamassasinCfg_Unique] ON [dbo].[SrvSpamassasinCfg] (Srv, SpamassasinCfg)
GO