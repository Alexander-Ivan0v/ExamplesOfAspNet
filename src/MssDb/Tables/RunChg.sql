CREATE TABLE [dbo].[RunChg] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Run]      BIGINT	    NOT NULL,
	[Chg]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Run]) REFERENCES [dbo].[Run] ([Id]),
	FOREIGN KEY ([Chg]) REFERENCES [dbo].[Chg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_RunChg_RunChg_Unique] ON [dbo].[RunChg] (Run, Chg)
GO