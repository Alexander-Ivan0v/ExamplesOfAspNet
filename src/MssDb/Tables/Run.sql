CREATE TABLE [dbo].[Run] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
	[Tsk]	   BIGINT		NULL,
	[Flw]	   BIGINT		NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Tsk]) REFERENCES [dbo].[Tsk] ([Id]),
	FOREIGN KEY ([Flw]) REFERENCES [dbo].[Flw] ([Id])
);
GO

CREATE INDEX [IDX_Run_Tsk] ON [dbo].[Run] (Tsk)
GO

CREATE INDEX [IDX_Run_Flw] ON [dbo].[Run] (Flw)
GO