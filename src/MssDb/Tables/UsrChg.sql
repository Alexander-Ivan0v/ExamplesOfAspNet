CREATE TABLE [dbo].[UsrChg] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Usr]	   BIGINT	    NOT NULL,
	[Chg]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Usr]) REFERENCES [dbo].[Usr] ([Id]),
	FOREIGN KEY ([Chg]) REFERENCES [dbo].[Chg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_UsrChg_UsrChg_Unique] ON [dbo].[UsrChg] (Usr, Chg)
GO