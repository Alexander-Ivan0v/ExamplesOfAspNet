CREATE TABLE [dbo].[ParTypeChg] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [ParType]  BIGINT	    NOT NULL,
	[Chg]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([ParType]) REFERENCES [dbo].[ParType] ([Id]),
	FOREIGN KEY ([Chg]) REFERENCES [dbo].[Chg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_ParTypeChg_ParTypeChg_Unique] ON [dbo].[ParTypeChg] (ParType, Chg)
GO