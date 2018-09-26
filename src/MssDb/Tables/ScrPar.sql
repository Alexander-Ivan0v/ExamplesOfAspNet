CREATE TABLE [dbo].[ScrPar] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Scr]      BIGINT	    NOT NULL,
	[Par]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Scr]) REFERENCES [dbo].[Scr] ([Id]),
	FOREIGN KEY ([Par]) REFERENCES [dbo].[Par] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_ScrPar_ScrPar_Unique] ON [dbo].[ScrPar] (Scr, Par)
GO