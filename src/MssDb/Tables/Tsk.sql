CREATE TABLE [dbo].[Tsk] (
    [Id]				BIGINT       IDENTITY (1, 1) NOT NULL,
	[Name]				VARCHAR(100) NOT NULL,
	[Action]			BIGINT		 NULL,
	[Rback]				BIGINT		 NULL,
	[PayPerRun]			MONEY		 NOT NULL default 0.0,
	[Comment]			VARCHAR(256) NULL,
	[IsDel]				BIT			 NOT NULL default 0,
	[IsDisabled]		BIT			 NOT NULL,
	[IsSupport]			BIT			 NOT NULL,
	[IsLongRunning]		BIT			 NOT NULL,
	[IsRollbackDisabled]BIT			 NOT NULL,
	
    [ts]				rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Action]) REFERENCES [dbo].[Scr] ([Id]),
	FOREIGN KEY ([Rback]) REFERENCES [dbo].[Scr] ([Id])
);
GO

CREATE INDEX [IDX_Tsk_Action] ON [dbo].[Tsk] ([Action])
GO

CREATE INDEX [IDX_Tsk_Rback] ON [dbo].[Tsk] (Rback)
GO

CREATE INDEX [IDX_Tsk_IsDisabled] ON [dbo].[Tsk] (IsDisabled)
GO