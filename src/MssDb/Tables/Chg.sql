CREATE TABLE [dbo].[Chg] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL,
    [ChgState]		BIGINT		 NOT NULL,
	[ChgDate]		DATETIME	 NOT NULL,
	[ChgBy]			BIGINT		 NOT NULL,
	[ChgLog]		BIGINT		 NULL,
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([ChgState]) REFERENCES [dbo].[ChgState] ([Id]),
	FOREIGN KEY ([ChgLog]) REFERENCES [dbo].[ChgLog] ([Id]),
	FOREIGN KEY ([ChgBy]) REFERENCES [dbo].[Usr] ([Id])
);
GO

CREATE INDEX [IDX_Chg_ChgState] ON [dbo].[Chg] (ChgState)
GO

CREATE INDEX [IDX_Chg_ChgBy] ON [dbo].[Chg] (ChgBy)
GO

CREATE INDEX [IDX_Chg_ChgDate] ON [dbo].[Chg] (ChgDate)
GO

CREATE INDEX [IDX_Chg_ChgLog] ON [dbo].[Chg] (ChgLog)
GO