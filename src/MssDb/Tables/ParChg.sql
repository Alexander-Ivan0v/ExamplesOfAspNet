CREATE TABLE [dbo].[ParChg] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Par]	   BIGINT	    NOT NULL,
	[Chg]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Par]) REFERENCES [dbo].[Par] ([Id]),
	FOREIGN KEY ([Chg]) REFERENCES [dbo].[Chg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_ParChg_ParChg_Unique] ON [dbo].[ParChg] (Par, Chg)
GO