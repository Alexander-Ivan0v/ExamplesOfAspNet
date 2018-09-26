CREATE TABLE [dbo].[RolCat] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
	[Cat]      BIGINT	    NOT NULL,
    [Rol]      BIGINT	    NOT NULL,	
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Rol]) REFERENCES [dbo].[Rol] ([Id]),
	FOREIGN KEY ([Cat]) REFERENCES [dbo].[Cat] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_RolCat_RolCat_Unique] ON [dbo].[RolCat] (Rol, Cat)
GO