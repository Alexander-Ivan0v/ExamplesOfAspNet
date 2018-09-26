CREATE TABLE [dbo].[FlwTsk] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,    
	[Flw]      BIGINT	    NOT NULL,
	[Tsk]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Tsk]) REFERENCES [dbo].[Tsk] ([Id]),
	FOREIGN KEY ([Flw]) REFERENCES [dbo].[Flw] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_TskFlw_TskFlw_Unique] ON [dbo].[FlwTsk] (Tsk, Flw)
GO