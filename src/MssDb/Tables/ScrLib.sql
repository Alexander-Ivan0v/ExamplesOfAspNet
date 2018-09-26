CREATE TABLE [dbo].[ScrLib] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Scr]      BIGINT	    NOT NULL,
	[Lib]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Scr]) REFERENCES [dbo].[Scr] ([Id]),
	FOREIGN KEY ([lib]) REFERENCES [dbo].[Lib] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_ScrLib_ScrLib_Unique] ON [dbo].[ScrLib] (Scr, Lib)
GO