CREATE TABLE [dbo].[RunDataChg] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [RunData]  BIGINT	    NOT NULL,
	[Chg]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([RunData]) REFERENCES [dbo].[RunData] ([Id]),
	FOREIGN KEY ([Chg]) REFERENCES [dbo].[Chg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_RunDatasChg_RunChg_Unique] ON [dbo].[RunDataChg] (RunData, Chg)
GO