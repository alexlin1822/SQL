if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[KS]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[KS]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PC]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PC]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[setupvalue]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[setupvalue]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[结果]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[结果]
GO

CREATE TABLE [dbo].[KS] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[parent] [int] NOT NULL ,
	[名称] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[简拼] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[设备命名] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[IP段] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[备注] [varchar] (250) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PC] (
	[AuID] [int] IDENTITY (1, 1) NOT NULL ,
	[条形码] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[设备类型] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[设备名称] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[IP地址] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[MAC地址] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[设备用途] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[所属科室] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[所属科室简拼] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[使用科室] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[使用科室简拼] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[品牌] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[型号] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[软件版本] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[联系人] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[联系电话] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[备注] [varchar] (250) COLLATE Chinese_PRC_CI_AS NULL ,
	[登记用户] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[登记IP] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[登记时间] [smalldatetime] NULL ,
	[最后修改时间] [smalldatetime] NULL ,
	[已打印] [bit] NULL ,
	[设备用途简拼] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[交换机地址] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[交换机端口] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[setupvalue] (
	[AuID] [int] IDENTITY (1, 1) NOT NULL ,
	[Type] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[keyvaule] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[memo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[结果] (
	[AuID] [int] NOT NULL ,
	[条形码] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[设备类型] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[设备名称] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[IP地址] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[MAC地址] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[设备用途] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[所属科室] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[所属科室简拼] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[使用科室] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[使用科室简拼] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[品牌] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[型号] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[软件版本] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[联系人] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[联系电话] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[备注] [varchar] (250) COLLATE Chinese_PRC_CI_AS NULL ,
	[登记用户] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[登记IP] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[登记时间] [smalldatetime] NULL ,
	[最后修改时间] [smalldatetime] NULL ,
	[已打印] [bit] NULL ,
	[设备用途简拼] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

