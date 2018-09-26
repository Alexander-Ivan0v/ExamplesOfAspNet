CREATE TABLE [dbo].[UsrTeam] (
    [Id]	   BIGINT       IDENTITY (1, 1) NOT NULL,
    [Usr]	   BIGINT	    NOT NULL,
	[Team]      BIGINT	    NOT NULL,
    [ts]       rowversion   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([Usr]) REFERENCES [dbo].[Usr] ([Id]),
	FOREIGN KEY ([Team]) REFERENCES [dbo].[Team] ([Id])
);
GO

CREATE UNIQUE INDEX [IDX_UsrTea_UsrTea_Unique] ON [dbo].[UsrTeam] (Usr, Team)
GO