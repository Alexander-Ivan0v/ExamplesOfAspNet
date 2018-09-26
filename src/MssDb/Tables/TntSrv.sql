CREATE TABLE [dbo].[TntSrv] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,    
	[Tnt]      BIGINT	    NOT NULL,
	[Srv]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Srv]) REFERENCES [dbo].[Srv] ([Id]),
	FOREIGN KEY ([Tnt]) REFERENCES [dbo].[Tnt] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_TntSrv_TntSrv_Unique] ON [dbo].[TntSrv] (Tnt, Srv)
GO