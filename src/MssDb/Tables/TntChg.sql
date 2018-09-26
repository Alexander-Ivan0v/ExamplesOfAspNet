CREATE TABLE [dbo].[TntChg] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Tnt]      BIGINT	    NOT NULL,
	[Chg]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Tnt]) REFERENCES [dbo].[Tnt] ([Id]),
	FOREIGN KEY ([Chg]) REFERENCES [dbo].[Chg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_TntChg_TntChg_Unique] ON [dbo].[TntChg] (Tnt, Chg)
GO