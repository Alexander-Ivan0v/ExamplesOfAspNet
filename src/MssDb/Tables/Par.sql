CREATE TABLE [dbo].[Par] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL,
    [Name]			VARCHAR (50) NOT NULL,
	[ParType]		BIGINT		 NOT NULL,
	[ParView]		BIGINT		 NOT NULL,
	[ParSpecial]	BIGINT		 NULL,
    [Comment]		VARCHAR(256) NULL,
	[IsDel]			BIT          NOT NULL,
	[IsInput]		BIT          NOT NULL,
	[IsRequired]	BIT          NOT NULL default 0,
	[TskSupport]	BIGINT		 NULL,
	[FlwSupport]	BIGINT		 NULL,
	[Seq]			INT			 NOT NULL default 0,
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([ParType]) REFERENCES [dbo].[ParType] ([Id]),
	FOREIGN KEY ([TskSupport]) REFERENCES [dbo].[Tsk] ([Id]),
	FOREIGN KEY ([FlwSupport]) REFERENCES [dbo].[Flw] ([Id]),
	FOREIGN KEY ([ParSpecial]) REFERENCES [dbo].[ParSpecial] ([Id]),
	FOREIGN KEY ([ParView]) REFERENCES [dbo].[ParView] ([Id])
);
GO

CREATE INDEX [IDX_Par_Name] ON [dbo].[Par] (Name)
GO

CREATE INDEX [IDX_Par_ParType] ON [dbo].[Par] (ParType)
GO

CREATE INDEX [IDX_Par_ParView] ON [dbo].[Par] (ParView)
GO

CREATE INDEX [IDX_Par_IsInput] ON [dbo].[Par] (IsInput)
GO

CREATE INDEX [IDX_Par_IsDel] ON [dbo].[Par] (IsDel)
GO

CREATE INDEX [IDX_Par_TskSupport] ON [dbo].[Par] (TskSupport)
GO

CREATE INDEX [IDX_Par_FlwSupport] ON [dbo].[Par] (FlwSupport)
GO

CREATE INDEX [IDX_Par_ParSpecial] ON [dbo].[Par] (ParSpecial)
GO