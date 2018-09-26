CREATE TABLE [dbo].[ChgState] (
    [Id]			BIGINT       IDENTITY (1, 1) NOT NULL,
    [ChgStateGrp]	BIGINT		 NOT NULL,
	[Name]			VARCHAR(100) NOT NULL,
    [ts]			rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([ChgStateGrp]) REFERENCES [dbo].[ChgStateGrp] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_ChgState_ChgStateGrpName] ON [dbo].[ChgState] (ChgStateGrp, Name)
GO