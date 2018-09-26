CREATE TABLE [dbo].[CatFlw] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
	[Cat]      BIGINT	    NOT NULL,
    [Flw]      BIGINT	    NOT NULL,	
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Flw]) REFERENCES [dbo].[Flw] ([Id]),
	FOREIGN KEY ([Cat]) REFERENCES [dbo].[Cat] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_CatFlw_CatFlw_Unique] ON [dbo].[CatFlw] (Flw, Cat)
GO