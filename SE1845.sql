--create database SE1845
--USE [DBI_EXAM_SPRING_2017]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 02/15/2017 23:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[DeptNo] [varchar](10) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Location] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DeptNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Department] ([DeptNo], [Name], [Location]) VALUES (N'AD', N'Head Office', N'Room 1001 Building B')
INSERT [dbo].[Department] ([DeptNo], [Name], [Location]) VALUES (N'IS', N'Information System', N'Room 1001 Building A')
INSERT [dbo].[Department] ([DeptNo], [Name], [Location]) VALUES (N'SE', N'Software Engineering', N'Room 1002 Building A')
/****** Object:  Table [dbo].[Project]    Script Date: 02/15/2017 23:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Project](
	[ProNo] [varchar](10) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[DeptNo] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ProNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Project] ([ProNo], [Name], [StartDate], [EndDate], [DeptNo]) VALUES (N'P1', N'NLP Question and Answer System', CAST(0x26350B00 AS Date), CAST(0x94360B00 AS Date), N'IS')
INSERT [dbo].[Project] ([ProNo], [Name], [StartDate], [EndDate], [DeptNo]) VALUES (N'P2', N'Recommender System', CAST(0x27350B00 AS Date), CAST(0x65350B00 AS Date), N'IS')
INSERT [dbo].[Project] ([ProNo], [Name], [StartDate], [EndDate], [DeptNo]) VALUES (N'P3', N'Transportation Scheduling System', CAST(0x3A3B0B00 AS Date), NULL, N'IS')
INSERT [dbo].[Project] ([ProNo], [Name], [StartDate], [EndDate], [DeptNo]) VALUES (N'P4', N'Online Adverting System', CAST(0x783C0B00 AS Date), NULL, N'IS')
/****** Object:  Table [dbo].[Employee]    Script Date: 02/15/2017 23:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[SSN] [varchar](10) NOT NULL,
	[FName] [varchar](150) NOT NULL,
	[LName] [varchar](150) NOT NULL,
	[Address] [varchar](150) NOT NULL,
	[Salary] [float] NOT NULL,
	[Sex] [bit] NOT NULL,
	[DeptNo] [varchar](10) NOT NULL,
	[SSNSupervisor] [varchar](10) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[SSN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Employee] ([SSN], [FName], [LName], [Address], [Salary], [Sex], [DeptNo], [SSNSupervisor]) VALUES (N'AD001', N'Alice', N'West', N'Central City, Chicago', 15000, 0, N'AD', NULL)
INSERT [dbo].[Employee] ([SSN], [FName], [LName], [Address], [Salary], [Sex], [DeptNo], [SSNSupervisor]) VALUES (N'AD002', N'Anna', N'Laurent', N'Square de Republic ,Monperllier', 13000, 0, N'AD', N'AD001')
INSERT [dbo].[Employee] ([SSN], [FName], [LName], [Address], [Salary], [Sex], [DeptNo], [SSNSupervisor]) VALUES (N'IS001', N'Lorraine', N'Fuch', N'34 Luxembourg Square , Nancy France', 45000, 1, N'IS', NULL)
INSERT [dbo].[Employee] ([SSN], [FName], [LName], [Address], [Salary], [Sex], [DeptNo], [SSNSupervisor]) VALUES (N'IS002', N'Sakho', N'Ibrahima', N'District 5, Paris', 41000, 1, N'IS', N'IS001')
INSERT [dbo].[Employee] ([SSN], [FName], [LName], [Address], [Salary], [Sex], [DeptNo], [SSNSupervisor]) VALUES (N'IS003', N'Tung', N'LE', N'District 13, Paris', 30000, 1, N'IS', N'IS002')
INSERT [dbo].[Employee] ([SSN], [FName], [LName], [Address], [Salary], [Sex], [DeptNo], [SSNSupervisor]) VALUES (N'IS004', N'Stone', N'Sergye', N'Republic, Lion', 48000, 1, N'IS', N'IS002')
INSERT [dbo].[Employee] ([SSN], [FName], [LName], [Address], [Salary], [Sex], [DeptNo], [SSNSupervisor]) VALUES (N'IS005', N'Wong', N'LEE', N'Distric 13, Paris', 32000, 0, N'IS', N'IS002')
INSERT [dbo].[Employee] ([SSN], [FName], [LName], [Address], [Salary], [Sex], [DeptNo], [SSNSupervisor]) VALUES (N'SE001', N'Tri', N'Tran Dinh', N'Kim Ma , Hanoi', 40000, 1, N'SE', NULL)
INSERT [dbo].[Employee] ([SSN], [FName], [LName], [Address], [Salary], [Sex], [DeptNo], [SSNSupervisor]) VALUES (N'SE002', N'Sang', N'Nguyen Van', N'Pham Van Dong, Hanoi', 30000, 1, N'SE', N'SE001')
/****** Object:  Table [dbo].[Emp_WorkOn_Pro]    Script Date: 02/15/2017 23:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Emp_WorkOn_Pro](
	[SSN] [varchar](10) NOT NULL,
	[ProNo] [varchar](10) NOT NULL,
	[Position] [varchar](150) NOT NULL,
	[HourPerDay] [float] NOT NULL,
 CONSTRAINT [PK_Emp_WorkOn_Pro] PRIMARY KEY CLUSTERED 
(
	[SSN] ASC,
	[ProNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Emp_WorkOn_Pro] ([SSN], [ProNo], [Position], [HourPerDay]) VALUES (N'IS001', N'P1', N'PMO', 4)
INSERT [dbo].[Emp_WorkOn_Pro] ([SSN], [ProNo], [Position], [HourPerDay]) VALUES (N'IS001', N'P2', N'PMO', 4)
INSERT [dbo].[Emp_WorkOn_Pro] ([SSN], [ProNo], [Position], [HourPerDay]) VALUES (N'IS001', N'P3', N'PMO', 4)
INSERT [dbo].[Emp_WorkOn_Pro] ([SSN], [ProNo], [Position], [HourPerDay]) VALUES (N'IS001', N'P4', N'PMO', 4)
INSERT [dbo].[Emp_WorkOn_Pro] ([SSN], [ProNo], [Position], [HourPerDay]) VALUES (N'IS002', N'P2', N'PM', 4)
INSERT [dbo].[Emp_WorkOn_Pro] ([SSN], [ProNo], [Position], [HourPerDay]) VALUES (N'IS002', N'P3', N'PM', 4)
INSERT [dbo].[Emp_WorkOn_Pro] ([SSN], [ProNo], [Position], [HourPerDay]) VALUES (N'IS002', N'P4', N'PM', 4)
INSERT [dbo].[Emp_WorkOn_Pro] ([SSN], [ProNo], [Position], [HourPerDay]) VALUES (N'IS003', N'P3', N'DEV', 8)
INSERT [dbo].[Emp_WorkOn_Pro] ([SSN], [ProNo], [Position], [HourPerDay]) VALUES (N'IS004', N'P4', N'DEV', 8)
/****** Object:  Table [dbo].[Emp_Manage_Dept]    Script Date: 02/15/2017 23:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Emp_Manage_Dept](
	[SSN] [varchar](10) NOT NULL,
	[DeptNo] [varchar](10) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_Emp_Manage_Dept_1] PRIMARY KEY CLUSTERED 
(
	[SSN] ASC,
	[DeptNo] ASC,
	[StartDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Emp_Manage_Dept] ([SSN], [DeptNo], [StartDate], [EndDate]) VALUES (N'AD001', N'AD', CAST(0x26350B00 AS Date), CAST(0x94360B00 AS Date))
INSERT [dbo].[Emp_Manage_Dept] ([SSN], [DeptNo], [StartDate], [EndDate]) VALUES (N'AD001', N'AD', CAST(0x02380B00 AS Date), NULL)
INSERT [dbo].[Emp_Manage_Dept] ([SSN], [DeptNo], [StartDate], [EndDate]) VALUES (N'AD002', N'AD', CAST(0x95360B00 AS Date), CAST(0x01380B00 AS Date))
INSERT [dbo].[Emp_Manage_Dept] ([SSN], [DeptNo], [StartDate], [EndDate]) VALUES (N'IS001', N'IS', CAST(0x26350B00 AS Date), NULL)
INSERT [dbo].[Emp_Manage_Dept] ([SSN], [DeptNo], [StartDate], [EndDate]) VALUES (N'SE001', N'SE', CAST(0x28350B00 AS Date), NULL)
/****** Object:  Table [dbo].[Dependence]    Script Date: 02/15/2017 23:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dependence](
	[SSN] [varchar](10) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[DOB] [date] NOT NULL,
	[Relationship] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Dependence] PRIMARY KEY CLUSTERED 
(
	[SSN] ASC,
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Dependence] ([SSN], [Name], [DOB], [Relationship]) VALUES (N'AD001', N'Alex Pinter', CAST(0xC01F0B00 AS Date), N'Children')
INSERT [dbo].[Dependence] ([SSN], [Name], [DOB], [Relationship]) VALUES (N'AD001', N'Dupon Pinter', CAST(0xC5240B00 AS Date), N'Children')
INSERT [dbo].[Dependence] ([SSN], [Name], [DOB], [Relationship]) VALUES (N'IS001', N'Anna Fuch', CAST(0xD8D20A00 AS Date), N'Mother')
/****** Object:  ForeignKey [FK_Dependence_Employee]    Script Date: 02/15/2017 23:32:19 ******/
ALTER TABLE [dbo].[Dependence]  WITH CHECK ADD  CONSTRAINT [FK_Dependence_Employee] FOREIGN KEY([SSN])
REFERENCES [dbo].[Employee] ([SSN])
GO
ALTER TABLE [dbo].[Dependence] CHECK CONSTRAINT [FK_Dependence_Employee]
GO
/****** Object:  ForeignKey [FK_Emp_Manage_Dept_Department]    Script Date: 02/15/2017 23:32:19 ******/
ALTER TABLE [dbo].[Emp_Manage_Dept]  WITH CHECK ADD  CONSTRAINT [FK_Emp_Manage_Dept_Department] FOREIGN KEY([DeptNo])
REFERENCES [dbo].[Department] ([DeptNo])
GO
ALTER TABLE [dbo].[Emp_Manage_Dept] CHECK CONSTRAINT [FK_Emp_Manage_Dept_Department]
GO
/****** Object:  ForeignKey [FK_Emp_Manage_Dept_Employee]    Script Date: 02/15/2017 23:32:19 ******/
ALTER TABLE [dbo].[Emp_Manage_Dept]  WITH CHECK ADD  CONSTRAINT [FK_Emp_Manage_Dept_Employee] FOREIGN KEY([SSN])
REFERENCES [dbo].[Employee] ([SSN])
GO
ALTER TABLE [dbo].[Emp_Manage_Dept] CHECK CONSTRAINT [FK_Emp_Manage_Dept_Employee]
GO
/****** Object:  ForeignKey [FK_Emp_WorkOn_Pro_Employee]    Script Date: 02/15/2017 23:32:19 ******/
ALTER TABLE [dbo].[Emp_WorkOn_Pro]  WITH CHECK ADD  CONSTRAINT [FK_Emp_WorkOn_Pro_Employee] FOREIGN KEY([SSN])
REFERENCES [dbo].[Employee] ([SSN])
GO
ALTER TABLE [dbo].[Emp_WorkOn_Pro] CHECK CONSTRAINT [FK_Emp_WorkOn_Pro_Employee]
GO
/****** Object:  ForeignKey [FK_Emp_WorkOn_Pro_Project]    Script Date: 02/15/2017 23:32:19 ******/
ALTER TABLE [dbo].[Emp_WorkOn_Pro]  WITH CHECK ADD  CONSTRAINT [FK_Emp_WorkOn_Pro_Project] FOREIGN KEY([ProNo])
REFERENCES [dbo].[Project] ([ProNo])
GO
ALTER TABLE [dbo].[Emp_WorkOn_Pro] CHECK CONSTRAINT [FK_Emp_WorkOn_Pro_Project]
GO
/****** Object:  ForeignKey [FK_Employee_Department]    Script Date: 02/15/2017 23:32:19 ******/
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([DeptNo])
REFERENCES [dbo].[Department] ([DeptNo])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
/****** Object:  ForeignKey [FK_Employee_Employee]    Script Date: 02/15/2017 23:32:19 ******/
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Employee] FOREIGN KEY([SSNSupervisor])
REFERENCES [dbo].[Employee] ([SSN])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Employee]
GO
/****** Object:  ForeignKey [FK_Project_Department]    Script Date: 02/15/2017 23:32:20 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Department] FOREIGN KEY([DeptNo])
REFERENCES [dbo].[Department] ([DeptNo])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Department]
GO