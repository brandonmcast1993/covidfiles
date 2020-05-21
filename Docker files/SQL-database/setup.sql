CREATE DATABASE coviddata;
GO
USE coviddata;
GO
CREATE TABLE [dbo].[tblDailyStats](
	[id] [uniqueidentifier] NOT NULL,
	[date] [date] NOT NULL,
	[confirmed] [int] NOT NULL,
	[active] [int] NOT NULL,
	[recovered] [int] NOT NULL,
	[deaths] [int] NOT NULL,
 CONSTRAINT [PK_tblDailyStats] PRIMARY KEY CLUSTERED (
	[id] ASC )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
