CREATE TABLE [dbo].[TeamChg] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Team]     BIGINT	    NOT NULL,
	[Chg]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Team]) REFERENCES [dbo].[Team] ([Id]),
	FOREIGN KEY ([Chg]) REFERENCES [dbo].[Chg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_TeaChg_TeaChg_Unique] ON [dbo].[TeamChg] (Team, Chg)
GO