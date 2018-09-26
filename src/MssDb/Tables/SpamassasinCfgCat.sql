CREATE TABLE [dbo].[SpamassasinCfgCat] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL, 
	[SpamassasinCfg]    BIGINT	    NOT NULL,   
	[Cat]			BIGINT	    NOT NULL,
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([SpamassasinCfg]) REFERENCES [dbo].[SpamassasinCfg] ([Id]),
	FOREIGN KEY ([Cat]) REFERENCES [dbo].[Cat] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_SSpamassasinCfgCat_SpamassasinCfgCat_Unique] ON [dbo].[SpamassasinCfgCat] (SpamassasinCfg, Cat)
GO