CREATE TABLE [dbo].[ClamavCfgCat] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL, 
	[ClamavCfg]    BIGINT	    NOT NULL,   
	[Cat]			BIGINT	    NOT NULL,
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([ClamavCfg]) REFERENCES [dbo].[ClamavCfg] ([Id]),
	FOREIGN KEY ([Cat]) REFERENCES [dbo].[Cat] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_SClamavCfgCat_ClamavCfgCat_Unique] ON [dbo].[ClamavCfgCat] (ClamavCfg, Cat)
GO