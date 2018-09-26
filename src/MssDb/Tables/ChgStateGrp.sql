CREATE TABLE [dbo].[ChgStateGrp] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Name]     VARCHAR (50) NOT NULL,
    [Comment]  VARCHAR(256) NULL,	
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

CREATE UNIQUE INDEX [IDX_ChgStateGrp_Name_Unique] ON [dbo].[ChgStateGrp] (Name)
GO