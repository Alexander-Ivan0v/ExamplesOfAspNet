CREATE TABLE [dbo].[PostfixCfgCat] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL, 
	[PostfixCfg]    BIGINT	    NOT NULL,   
	[Cat]			BIGINT	    NOT NULL,
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([PostfixCfg]) REFERENCES [dbo].[PostfixCfg] ([Id]),
	FOREIGN KEY ([Cat]) REFERENCES [dbo].[Cat] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_SPostfixCfgCat_postfixCfgCat_Unique] ON [dbo].[PostfixCfgCat] (PostfixCfg, Cat)
GO