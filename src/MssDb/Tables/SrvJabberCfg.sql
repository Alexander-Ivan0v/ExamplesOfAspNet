CREATE TABLE [dbo].[SrvJabberCfg] (
    [Id]			BIGINT      IDENTITY (1, 1) NOT NULL,
	[Srv]			BIGINT	    NOT NULL,
    [JabberCfg]		BIGINT	    NOT NULL,	
    [ts]			rowversion  NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Srv]) REFERENCES [dbo].[Srv] ([Id]),
	FOREIGN KEY ([JabberCfg]) REFERENCES [dbo].[JabberCfg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_SrvJabberCfg_SrvJabberCfg_Unique] ON [dbo].[SrvJabberCfg] (Srv, JabberCfg)
GO