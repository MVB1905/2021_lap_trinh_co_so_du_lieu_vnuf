USE [master]
GO
/****** Object:  Database [QuanLyChiTieu]    Script Date: 12/23/2021 10:41:26 AM ******/
CREATE DATABASE [QuanLyChiTieu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyChiTieu', FILENAME = N'D:\K63HTTH\Subjects\LapTrinhCoSoDuLieu\DB\QuanLyChiTieu.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyChiTieu_log', FILENAME = N'D:\K63HTTH\Subjects\LapTrinhCoSoDuLieu\DB\QuanLyChiTieu_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyChiTieu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyChiTieu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyChiTieu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyChiTieu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyChiTieu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyChiTieu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyChiTieu] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyChiTieu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyChiTieu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyChiTieu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyChiTieu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyChiTieu', N'ON'
GO
USE [QuanLyChiTieu]
GO
/****** Object:  User [StudentDB]    Script Date: 12/23/2021 10:41:26 AM ******/
CREATE USER [StudentDB] FOR LOGIN [StudentDB] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [db]    Script Date: 12/23/2021 10:41:26 AM ******/
CREATE USER [db] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [StudentDB]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [StudentDB]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [StudentDB]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [StudentDB]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [StudentDB]
GO
ALTER ROLE [db_datareader] ADD MEMBER [StudentDB]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [StudentDB]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [StudentDB]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [StudentDB]
GO
/****** Object:  Table [dbo].[KhoanChi]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoanChi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SoTien] [float] NULL,
	[idNhomChi] [int] NULL,
	[idNguonTien] [int] NULL,
	[Date] [nvarchar](50) NULL,
	[Note] [nvarchar](500) NULL,
	[idNguoiDung] [int] NULL,
 CONSTRAINT [PK_KhoanChi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoanThu]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoanThu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SoTien] [float] NULL,
	[idNhomThu] [int] NULL,
	[idNguonTien] [int] NULL,
	[Date] [nvarchar](50) NULL,
	[Note] [nvarchar](500) NULL,
	[idNguoiDung] [int] NULL,
 CONSTRAINT [PK_KhoanThu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSu]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SoTien] [float] NULL,
	[LoaiChiTieu] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[Note] [nvarchar](500) NULL,
	[TenChiTieu] [nvarchar](50) NULL,
	[idNguoiDung] [int] NULL,
 CONSTRAINT [PK_LichSu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[tienmat] [float] NULL,
	[tiennganhang] [float] NULL,
	[role] [int] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung_role]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_NguoiDung_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguonTien]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguonTien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenNguonTien] [nvarchar](50) NULL,
	[SoTien] [float] NULL,
 CONSTRAINT [PK_NguonTien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomChi]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomChi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenNhomChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhomChi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomThu]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomThu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenNhomThu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhomThu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[KhoanChi]  WITH CHECK ADD  CONSTRAINT [FK_KhoanChi_NguonTien] FOREIGN KEY([idNguonTien])
REFERENCES [dbo].[NguonTien] ([id])
GO
ALTER TABLE [dbo].[KhoanChi] CHECK CONSTRAINT [FK_KhoanChi_NguonTien]
GO
ALTER TABLE [dbo].[KhoanChi]  WITH CHECK ADD  CONSTRAINT [FK_KhoanChi_NhomChi] FOREIGN KEY([idNhomChi])
REFERENCES [dbo].[NhomChi] ([id])
GO
ALTER TABLE [dbo].[KhoanChi] CHECK CONSTRAINT [FK_KhoanChi_NhomChi]
GO
ALTER TABLE [dbo].[KhoanThu]  WITH CHECK ADD  CONSTRAINT [FK_KhoanThu_NguonTien] FOREIGN KEY([idNguonTien])
REFERENCES [dbo].[NguonTien] ([id])
GO
ALTER TABLE [dbo].[KhoanThu] CHECK CONSTRAINT [FK_KhoanThu_NguonTien]
GO
ALTER TABLE [dbo].[KhoanThu]  WITH CHECK ADD  CONSTRAINT [FK_KhoanThu_NhomThu] FOREIGN KEY([idNhomThu])
REFERENCES [dbo].[NhomThu] ([id])
GO
ALTER TABLE [dbo].[KhoanThu] CHECK CONSTRAINT [FK_KhoanThu_NhomThu]
GO
/****** Object:  StoredProcedure [dbo].[CheckLogIn]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CheckLogIn]
	-- Add the parameters for the stored procedure here
	@username nvarchar(50), 
	@password nvarchar(50)
AS
BEGIN
	SELECT role FROM NguoiDung WHERE username = @username and password = @password
END
GO
/****** Object:  StoredProcedure [dbo].[GetCurrentMoney]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCurrentMoney]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	SELECT tienmat, tiennganhang FROM NguoiDung WHERE id = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[InsertKhoanChi]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertKhoanChi]
	-- Add the parameters for the stored procedure here
	@SoTien float, 
	@idNhomChi int,
	@idNguonTien int, 
	@Date nvarchar(max),
	@Note nvarchar(max),
	@ketqua int out
AS
BEGIN
	Insert into KhoanChi(SoTien, idNhomChi, idNguonTien, Date, Note)
	values(@SoTien, @idNhomChi, @idNguonTien, @Date, @Note);
	Set @ketqua = (SELECT id FROM KhoanChi WHERE id= SCOPE_IDENTITY())
	if (@ketqua > 1)
		BEGIN
			declare @LoaiChiTieu nvarchar(50);
			Set @LoaiChiTieu = (SELECT TenNhomChi FROM NhomChi WHERE id = @idNhomChi)
			EXEC InsertLichSu @SoTien = @SoTien, @LoaiChiTieu = @LoaiChiTieu, @Date = @Date, @Note = @Note, @TenChiTieu = N'Chi', @ketqua = 0
			declare @Change float;
		    Set @Change = -@SoTien
			EXEC UpdateNguonTien @ma = @idNguonTien, @SoTien = @Change, @ketqua = 0
		END
END
GO
/****** Object:  StoredProcedure [dbo].[InsertKhoanThu]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertKhoanThu]
	-- Add the parameters for the stored procedure here
	@SoTien float, 
	@idNhomThu int,
	@idNguonTien int, 
	@Date nvarchar(max),
	@Note nvarchar(max),
	@ketqua int out
AS
BEGIN
	Insert into KhoanThu(SoTien, idNhomThu, idNguonTien, Date, Note)
	values(@SoTien, @idNhomThu, @idNguonTien, @Date, @Note);
	Set @ketqua = (SELECT id FROM KhoanThu WHERE id= SCOPE_IDENTITY())
	if (@ketqua > 1)
		BEGIN
			declare @LoaiChiTieu nvarchar(50);
			Set @LoaiChiTieu = (SELECT TenNhomThu FROM NhomThu WHERE id = @idNhomThu)
			EXEC InsertLichSu @SoTien = @SoTien, @LoaiChiTieu = @LoaiChiTieu, @Date = @Date, @Note = @Note, @TenChiTieu = N'Thu', @ketqua = 0
			EXEC UpdateNguonTien @ma = @idNguonTien, @SoTien = @SoTien, @ketqua = 0
		END
END
GO
/****** Object:  StoredProcedure [dbo].[InsertLichSu]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertLichSu]
	-- Add the parameters for the stored procedure here
	@SoTien float, 
	@LoaiChiTieu nvarchar(50), 
	@Date nvarchar(50),
	@Note nvarchar(max),
	@TenChiTieu nvarchar(50),
	@ketqua int out
AS
BEGIN
	Insert into LichSu(SoTien, LoaiChiTieu, Date, Note, TenChiTieu)
	values(@SoTien, @LoaiChiTieu, @Date, @Note, @TenChiTieu);
	Set @ketqua = (SELECT id FROM LichSu WHERE id= SCOPE_IDENTITY())
END
GO
/****** Object:  StoredProcedure [dbo].[InsertNhomChi]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertNhomChi]
	-- Add the parameters for the stored procedure here
	@tenNhomChi nvarchar(50),
	@ketqua int out
AS
BEGIN
	declare @check int;
	Set @check = (SELECT id FROM NhomChi WHERE TenNhomChi= @tenNhomChi)
	IF (@check > 1)
	BEGIN
		Set @ketqua = -1
		return;
	END
	ELSE
	BEGIN
		Insert into NhomChi(TenNhomChi)
		values(N'@tennhomchi');
		Set @ketqua = (SELECT id FROM NhomChi WHERE id= SCOPE_IDENTITY())
	END

END
GO
/****** Object:  StoredProcedure [dbo].[SelectKhoanChi]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SelectKhoanChi]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	SELECT * FROM KhoanChi;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectKhoanThu]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SelectKhoanThu]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	SELECT * FROM KhoanThu;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectLichSu]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectLichSu]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	SELECT * FROM LichSu ORDER BY Date DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectLichSuByChi]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SelectLichSuByChi]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	SELECT * FROM LichSu WHERE TenChiTieu = N'Chi' ORDER BY Date DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectLichSuByDate]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectLichSuByDate]
	-- Add the parameters for the stored procedure here
	@date date
AS
BEGIN
	SELECT * FROM LichSu WHERE Date >= @date ORDER BY Date DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectLichSuByDateAndId]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SelectLichSuByDateAndId]
	-- Add the parameters for the stored procedure here
	@date date,
	@id int
AS
BEGIN
	SELECT * FROM LichSu WHERE Date >= @date and id= @id ORDER BY Date DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectLichSuById]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SelectLichSuById]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	SELECT * FROM LichSu WHERE id = @id ORDER BY Date DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectLichSuByThu]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SelectLichSuByThu]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	SELECT * FROM LichSu WHERE TenChiTieu = N'Thu' ORDER BY Date DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectLichSuGanDayById]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectLichSuGanDayById]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	SELECT * FROM LichSu WHERE idNguoiDung = @id ORDER BY Date DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectNguonTien]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SelectNguonTien]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	SELECT * FROM NguonTien;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectNhomChi]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SelectNhomChi]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	SELECT * FROM NhomChi;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectNhomThu]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SelectNhomThu]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	SELECT * FROM NhomThu;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectTongChi]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectTongChi]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	SELECT SUM(SoTien) as 'TongTien'  FROM KhoanChi;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectTongChiByDate]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectTongChiByDate]
	-- Add the parameters for the stored procedure here
	@datefr date,
	@dateend date
AS
BEGIN
	SELECT SUM(SoTien) as 'TongTien'  FROM KhoanChi WHERE Date >= @datefr and Date <= @dateend;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectTongChiById]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectTongChiById]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	SELECT SUM(SoTien) as 'TongTien' FROM KhoanChi WHERE idNhomChi = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectTongChiByIdAndDate]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectTongChiByIdAndDate]
	-- Add the parameters for the stored procedure here
	@id int,
	@datefr date,
	@dateend date
AS
BEGIN
	SELECT SUM(SoTien) as 'TongTien' FROM KhoanChi WHERE idNhomChi = @id AND Date >= @datefr AND Date <=@dateend;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectTongThu]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectTongThu]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	SELECT SUM(SoTien) as 'TongTien'  FROM KhoanThu;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectTongThuByDate]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectTongThuByDate]
	-- Add the parameters for the stored procedure here
	@datefr date,
	@dateend date
AS
BEGIN
	SELECT SUM(SoTien) as 'TongTien'  FROM KhoanThu WHERE Date >= @datefr and Date <= @dateend;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectTongThuById]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectTongThuById]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	SELECT SUM(SoTien) as 'TongTien' FROM KhoanThu WHERE idNhomThu = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectTongThuByIdAndDate]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectTongThuByIdAndDate]
	-- Add the parameters for the stored procedure here
	@id int,
	@datefr date,
	@dateend date
AS
BEGIN
	SELECT SUM(SoTien) as 'TongTien' FROM KhoanThu WHERE idNhomThu = @id AND Date >= @datefr AND Date <= @dateend
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateChuyenTien]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateChuyenTien]
	@idfrom int,
	@idto int,
	@SoTien float,
	@Date nvarchar(50),
	@Note nvarchar(max), 
	@ketqua int out
AS
BEGIN
	declare @change float;
	Set @change = -@SoTien

	declare @from nvarchar(max);
	Set @from = (SELECT TenNguonTien FROM NguonTien WHERE id= @idfrom)

	declare @to nvarchar(max);
	Set @to = (SELECT TenNguonTien FROM NguonTien WHERE id= @idto)

	declare @ghichu nvarchar(max);
	Set @ghichu = @Note + N' | Từ: ' + @from + N' Đến: ' + @to;

	EXEC UpdateNguonTien @ma = @idfrom, @SoTien = @Change, @ketqua = 0
	EXEC UpdateNguonTien @ma = @idto, @SoTien = @SoTien, @ketqua = 0

	EXEC InsertLichSu @SoTien = @SoTien, @LoaiChiTieu = N'Chuyển đổi', @Date = @Date, @Note = @ghichu, @TenChiTieu = N'Chuyển đổi', @ketqua = 0

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateNguonTien]    Script Date: 12/23/2021 10:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[UpdateNguonTien]
	@ma int,
	@Sotien float,
	@ketqua int out
AS
BEGIN
	SET NOCOUNT ON;
	declare @check int;
	SET @check = (SELECT id FROM NguonTien WHERE id = @ma);
	if (@check < 0)
		BEGIN
			SET @ketqua = -2;
			return;
		END
	UPDATE NguonTien
		SET SoTien = Sotien + @Sotien
		WHERE id = @ma;

	Set @ketqua = (SELECT id FROM NguonTien WHERE id= SCOPE_IDENTITY())
END
GO
USE [master]
GO
ALTER DATABASE [QuanLyChiTieu] SET  READ_WRITE 
GO
