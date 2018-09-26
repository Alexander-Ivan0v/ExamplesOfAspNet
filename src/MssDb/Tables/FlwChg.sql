CREATE TABLE [dbo].[FlwChg] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Flw]      BIGINT	    NOT NULL,
	[Chg]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Flw]) REFERENCES [dbo].[Flw] ([Id]),
	FOREIGN KEY ([Chg]) REFERENCES [dbo].[Chg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_FlwChg_FlwChg_Unique] ON [dbo].[FlwChg] (Flw, Chg)
GO