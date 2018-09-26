CREATE TABLE [dbo].[JabberCfgCat] (
    [Id]			BIGINT      IDENTITY (1, 1) NOT NULL, 
	[JabberCfg]     BIGINT	    NOT NULL,   
	[Cat]			BIGINT	    NOT NULL,
    [ts]			rowversion  NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([JabberCfg]) REFERENCES [dbo].[JabberCfg] ([Id]),
	FOREIGN KEY ([Cat]) REFERENCES [dbo].[Cat] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_SJabberCfgCat_JabberCfgCat_Unique] ON [dbo].[JabberCfgCat] (JabberCfg, Cat)
GO