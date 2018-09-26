CREATE TABLE [dbo].[ScrChg] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Scr]      BIGINT	    NOT NULL,
	[Chg]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Scr]) REFERENCES [dbo].[Scr] ([Id]),
	FOREIGN KEY ([Chg]) REFERENCES [dbo].[Chg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_ScrChg_ScrChg_Unique] ON [dbo].[ScrChg] (Scr, Chg)
GO