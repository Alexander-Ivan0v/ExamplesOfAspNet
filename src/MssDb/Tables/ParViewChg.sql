CREATE TABLE [dbo].[ParViewChg] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [ParView]  BIGINT	    NOT NULL,
	[Chg]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([ParView]) REFERENCES [dbo].[ParView] ([Id]),
	FOREIGN KEY ([Chg]) REFERENCES [dbo].[Chg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_ParViewChg_ParViewChg_Unique] ON [dbo].[ParViewChg] (ParView, Chg)
GO