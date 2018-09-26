CREATE TABLE [dbo].[ParSpecialChg] (
    [Id]				BIGINT       IDENTITY (1, 1) NOT NULL,
    [ParSpecial]		BIGINT	     NOT NULL,
	[Chg]				BIGINT	     NOT NULL,
    [ts]				rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([ParSpecial]) REFERENCES [dbo].[ParSpecial] ([Id]),
	FOREIGN KEY ([Chg]) REFERENCES [dbo].[Chg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_ParSpecialViewChg_ParSpecialViewChgChg_Unique] ON [dbo].[ParSpecialChg] (ParSpecial, Chg)
GO