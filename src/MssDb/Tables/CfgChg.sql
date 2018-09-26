CREATE TABLE [dbo].[CfgChg] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Cfg]	   BIGINT	    NOT NULL,
	[Chg]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Cfg]) REFERENCES [dbo].[Cfg] ([Id]),
	FOREIGN KEY ([Chg]) REFERENCES [dbo].[Chg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_CfgChg_CfgChg_Unique] ON [dbo].[CfgChg] (Cfg, Chg)
GO