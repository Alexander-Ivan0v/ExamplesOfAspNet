CREATE TABLE [dbo].[TskChg] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Tsk]      BIGINT	    NOT NULL,
	[Chg]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Tsk]) REFERENCES [dbo].[Tsk] ([Id]),
	FOREIGN KEY ([Chg]) REFERENCES [dbo].[Chg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_TskChg_TskChg_Unique] ON [dbo].[TskChg] (Tsk, Chg)
GO