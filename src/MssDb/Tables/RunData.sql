CREATE TABLE [dbo].[RunData] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Run]      BIGINT	    NOT NULL,
	[Par]      BIGINT	    NOT NULL,
	[Data]	   NVARCHAR(MAX)NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Run]) REFERENCES [dbo].[Run] ([Id]),
	FOREIGN KEY ([Par]) REFERENCES [dbo].[Par] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_RunData_RunPar_Unique] ON [dbo].[RunData] (Run, Par)
GO