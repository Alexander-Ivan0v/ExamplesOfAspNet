CREATE TABLE [dbo].[CatTsk] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
	[Cat]      BIGINT	    NOT NULL,
    [Tsk]      BIGINT	    NOT NULL,	
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Tsk]) REFERENCES [dbo].[Tsk] ([Id]),
	FOREIGN KEY ([Cat]) REFERENCES [dbo].[Cat] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_CatTsk_CatTsk_Unique] ON [dbo].[CatTsk] (Tsk, Cat)
GO