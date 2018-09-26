CREATE TABLE [dbo].[LibChg] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Lib]      BIGINT	    NOT NULL,
	[Chg]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Lib]) REFERENCES [dbo].[lib] ([Id]),
	FOREIGN KEY ([Chg]) REFERENCES [dbo].[Chg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_libChg_libChg_Unique] ON [dbo].[LibChg] (Lib, Chg)
GO