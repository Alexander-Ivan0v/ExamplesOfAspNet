CREATE TABLE [dbo].[SrvPostfixCfg] (
    [Id]		BIGINT       IDENTITY (1, 1) NOT NULL,
	[Srv]		BIGINT	    NOT NULL,
    [PostfixCfg]BIGINT	    NOT NULL,	
    [ts]		rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Srv]) REFERENCES [dbo].[Srv] ([Id]),
	FOREIGN KEY ([PostfixCfg]) REFERENCES [dbo].[PostfixCfg] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_SrvPostfixCfg_SrvPostfixCfg_Unique] ON [dbo].[SrvPostfixCfg] (Srv, PostfixCfg)
GO