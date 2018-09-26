CREATE TABLE [dbo].[SrvCat] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL, 
	[Srv]      BIGINT	    NOT NULL,   
	[Cat]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Srv]) REFERENCES [dbo].[Srv] ([Id]),
	FOREIGN KEY ([Cat]) REFERENCES [dbo].[Cat] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_SrvCat_SrvCat_Unique] ON [dbo].[SrvCat] (Srv, Cat)
GO