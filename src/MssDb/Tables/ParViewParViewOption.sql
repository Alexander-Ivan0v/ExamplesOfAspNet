CREATE TABLE [dbo].[ParViewParViewOption] (
    [Id]				BIGINT      IDENTITY (1, 1) NOT NULL,
    [ParView]			BIGINT	    NOT NULL,
	[ParViewOption]     BIGINT	    NOT NULL,
    [ts]				rowversion  NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([ParView]) REFERENCES [dbo].[ParView] ([Id]),
	FOREIGN KEY ([ParViewOption]) REFERENCES [dbo].[ParViewOption] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_ParView_ParViewParViewOption_Unique] ON [dbo].[ParViewParViewOption] (ParView, ParViewOption)
GO