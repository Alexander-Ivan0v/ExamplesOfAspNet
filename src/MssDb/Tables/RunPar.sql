CREATE TABLE [dbo].[RunPar] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Run]      BIGINT	    NOT NULL,
	[Par]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Run]) REFERENCES [dbo].[Run] ([Id]),
	FOREIGN KEY ([Par]) REFERENCES [dbo].[Par] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_RunPar_RunPar_Unique] ON [dbo].[RunPar] (Run, Par)
GO