CREATE TABLE [dbo].[Log] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
	[Msg]	   NVARCHAR(MAX)NOT NULL,
	[LogDate]  DATETIME		NOT NULL,
    [Usr]	   BIGINT	    NOT NULL,
	[Tnt]      BIGINT	    NOT NULL,
	[LogType]  BIGINT	    NOT NULL,
	[LogImp]   BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Usr]) REFERENCES [dbo].[Usr] ([Id]),
	FOREIGN KEY ([Tnt]) REFERENCES [dbo].[Tnt] ([Id]),
	FOREIGN KEY ([LogType]) REFERENCES [dbo].[LogType] ([Id]),
	FOREIGN KEY ([LogImp]) REFERENCES [dbo].[LogImp] ([Id])
);
GO

CREATE INDEX [IDX_Log_Usr] ON [dbo].[Log] (Usr)
GO

CREATE INDEX [IDX_Log_Tnt] ON [dbo].[Log] (Tnt)
GO

CREATE INDEX [IDX_Log_Type] ON [dbo].[Log] (LogType)
GO

CREATE INDEX [IDX_Log_Imp] ON [dbo].[Log] (LogImp)
GO

CREATE INDEX [IDX_Log_Date] ON [dbo].[Log] (LogDate)
GO