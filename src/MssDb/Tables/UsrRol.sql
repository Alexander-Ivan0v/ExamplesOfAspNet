CREATE TABLE [dbo].[UsrRol] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Usr]	   BIGINT	    NOT NULL,
	[Rol]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Usr]) REFERENCES [dbo].[Usr] ([Id]),
	FOREIGN KEY ([Rol]) REFERENCES [dbo].[Rol] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_UsrRol_UsrRol_Unique] ON [dbo].[UsrRol] (Usr, Rol)
GO