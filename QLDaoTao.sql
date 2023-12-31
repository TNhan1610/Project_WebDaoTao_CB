CREATE DATABASE [QLDaoTao]
GO
USE [QLDaoTao]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQua](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MASV] [nvarchar](10) NOT NULL,
	[MAMH] [nvarchar](5) NOT NULL,
	[DIEM] [float] NULL,
 CONSTRAINT [PK_KetQua_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MAKH] [nvarchar](5) NOT NULL,
	[TENKH] [nvarchar](30) NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MAMH] [nvarchar](5) NOT NULL,
	[TENMH] [nvarchar](45) NULL,
	[SOTIET] [tinyint] NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MASV] [nvarchar](10) NOT NULL,
	[HOSV] [nvarchar](25) NULL,
	[TENSV] [nvarchar](8) NULL,
	[GIOITINH] [bit] NOT NULL,
	[NGAYSINH] [date] NULL,
	[NOISINH] [nvarchar](45) NULL,
	[DIACHI] [nvarchar](45) NULL,
	[MAKH] [nvarchar](5) NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MASV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[KetQua] ON 

INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (1, N'A01', N'01', 8)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (2, N'A01', N'02', 7)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (3, N'A02', N'01', 4.5)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (4, N'A03', N'01', 10)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (5, N'A03', N'02', 4.5)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (6, N'A03', N'03', 3)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (7, N'A10', N'10', 8)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (8, N'A12', N'07', 9)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (9, N'A13', N'03', 6.5)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (10, N'A13', N'06', 10)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (11, N'A14', N'05', 8.5)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (12, N'A14', N'09', 8)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (13, N'K04', N'01', 5.5)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (14, N'K04', N'02', 6)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (15, N'K04', N'03', 7.5)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (16, N'S06', N'04', NULL)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (17, N'T07', N'05', 3)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (18, N'T07', N'10', 2)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (19, N'V05', N'01', 0)
INSERT [dbo].[KetQua] ([ID], [MASV], [MAMH], [DIEM]) VALUES (20, N'V05', N'04', 8)
SET IDENTITY_INSERT [dbo].[KetQua] OFF
INSERT [dbo].[Khoa] ([MAKH], [TENKH]) VALUES (N'AV', N'Anh văn')
INSERT [dbo].[Khoa] ([MAKH], [TENKH]) VALUES (N'HH', N'Hoá học')
INSERT [dbo].[Khoa] ([MAKH], [TENKH]) VALUES (N'KT', N'Kinh tế học')
INSERT [dbo].[Khoa] ([MAKH], [TENKH]) VALUES (N'SV', N'Sinh vật học')
INSERT [dbo].[Khoa] ([MAKH], [TENKH]) VALUES (N'TH', N'Tin học')
INSERT [dbo].[Khoa] ([MAKH], [TENKH]) VALUES (N'VL', N'Vật lý')
INSERT [dbo].[MonHoc] ([MAMH], [TENMH], [SOTIET]) VALUES (N'01', N'Triết Học Đông Phương', 30)
INSERT [dbo].[MonHoc] ([MAMH], [TENMH], [SOTIET]) VALUES (N'02', N'Toán Cao Cấp 1', 75)
INSERT [dbo].[MonHoc] ([MAMH], [TENMH], [SOTIET]) VALUES (N'03', N'Toán Cao Cấp 2', 60)
INSERT [dbo].[MonHoc] ([MAMH], [TENMH], [SOTIET]) VALUES (N'04', N'Vật Lý Đại Cương', 75)
INSERT [dbo].[MonHoc] ([MAMH], [TENMH], [SOTIET]) VALUES (N'05', N'Cơ Sở Dữ Liệu', 45)
INSERT [dbo].[MonHoc] ([MAMH], [TENMH], [SOTIET]) VALUES (N'06', N'Lập Trình Hệ Thống', 60)
INSERT [dbo].[MonHoc] ([MAMH], [TENMH], [SOTIET]) VALUES (N'07', N'Tiếng Pháp', 30)
INSERT [dbo].[MonHoc] ([MAMH], [TENMH], [SOTIET]) VALUES (N'09', N'Phân Tích Hệ Thống', 35)
INSERT [dbo].[MonHoc] ([MAMH], [TENMH], [SOTIET]) VALUES (N'10', N'Tiếng Anh', 30)
INSERT [dbo].[MonHoc] ([MAMH], [TENMH], [SOTIET]) VALUES (N'12', N'Lý thuyết đồ thi', 45)
INSERT [dbo].[SinhVien] ([MASV], [HOSV], [TENSV], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [MAKH]) VALUES (N'A01', N'Nguyễn Ngoan', N'Cường', 1, CAST(0x24FB0A00 AS Date), N'Hà Nội', N'45 Ký Con, Quận Bình Thạnh', N'AV')
INSERT [dbo].[SinhVien] ([MASV], [HOSV], [TENSV], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [MAKH]) VALUES (N'A02', N'Lý Anh', N'Huy', 1, CAST(0x5C000B00 AS Date), N'TP.HCM', N'12 Nguyễn Văn Luông, Quận 6', N'AV')
INSERT [dbo].[SinhVien] ([MASV], [HOSV], [TENSV], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [MAKH]) VALUES (N'A03', N'Lê Khắc', N'Dung', 0, CAST(0xCEFF0A00 AS Date), N'Bình Định', N'78 Phan Đăng Lưu, Quận BT', N'TH')
INSERT [dbo].[SinhVien] ([MASV], [HOSV], [TENSV], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [MAKH]) VALUES (N'A10', N'Đinh Hữu', N'Chính', 1, CAST(0xC7030B00 AS Date), N'Cà Mau', N'45/12 Trương Quốc Dũng', N'AV')
INSERT [dbo].[SinhVien] ([MASV], [HOSV], [TENSV], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [MAKH]) VALUES (N'A11', N'Văn Thành', N'Nho', 1, CAST(0x60FB0A00 AS Date), N'Cần Giờ', N'56 Hồ Văn Huê, Quận PN', N'AV')
INSERT [dbo].[SinhVien] ([MASV], [HOSV], [TENSV], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [MAKH]) VALUES (N'A12', N'Nguyễn Văn', N'Chính', 1, CAST(0x05FF0A00 AS Date), N'Mỹ Tho', N'92 Nguyễn Văn Cừ, Q5', N'AV')
INSERT [dbo].[SinhVien] ([MASV], [HOSV], [TENSV], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [MAKH]) VALUES (N'A13', N'Trần Thị Yến', N'Nhi', 0, CAST(0xA2010B00 AS Date), N'Cần Thơ', N'102 Bùi Hữu Nghĩa, Q5', N'TH')
INSERT [dbo].[SinhVien] ([MASV], [HOSV], [TENSV], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [MAKH]) VALUES (N'A14', N'Nguyễn Thành', N'Khiêm', 1, CAST(0xD3000B00 AS Date), N'TP.HCM', N'01 Lê Duẩn, Q1', N'TH')
INSERT [dbo].[SinhVien] ([MASV], [HOSV], [TENSV], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [MAKH]) VALUES (N'D01', N'Trần Văn', N'Hoài', 1, CAST(0xE2FA0A00 AS Date), N'Sài Gòn', N'10 Nguyễn Thượng Hiền, Q3', N'AV')
INSERT [dbo].[SinhVien] ([MASV], [HOSV], [TENSV], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [MAKH]) VALUES (N'D02', N'Trần Minh', N'Thạch', 1, CAST(0xBDFB0A00 AS Date), N'Long An', N'65 Lê Lợi, Q1', N'TH')
INSERT [dbo].[SinhVien] ([MASV], [HOSV], [TENSV], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [MAKH]) VALUES (N'H08', N'Bùi Quốc', N'Cường', 1, CAST(0x35020B00 AS Date), N'Tiền Giang', N'562/35 Lý Thường Kiệt, Q11', N'HH')
INSERT [dbo].[SinhVien] ([MASV], [HOSV], [TENSV], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [MAKH]) VALUES (N'K04', N'Tạ Văn', N'Minh', 1, CAST(0x56000B00 AS Date), N'Hà Nội', N'45/78 Sư Vạn Hạnh, Q10', N'KT')
INSERT [dbo].[SinhVien] ([MASV], [HOSV], [TENSV], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [MAKH]) VALUES (N'S06', N'Đoàn Thanh', N'Mai', 0, CAST(0xD5020B00 AS Date), N'An Giang', N'478/12 Điện Biên Phủ, Q3', N'SV')
INSERT [dbo].[SinhVien] ([MASV], [HOSV], [TENSV], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [MAKH]) VALUES (N'T07', N'Lê Ngọc Diểm', N'Lệ', 0, CAST(0x75000B00 AS Date), N'TP.HCM', N'78 Đinh Công Tráng, Q1', N'TH')
INSERT [dbo].[SinhVien] ([MASV], [HOSV], [TENSV], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [MAKH]) VALUES (N'V05', N'Nguyễn Khắc', N'Định', 1, CAST(0x2F020B00 AS Date), N'Tây Ninh', N'456 CMT8, Q3', N'VL')
INSERT [dbo].[SinhVien] ([MASV], [HOSV], [TENSV], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [MAKH]) VALUES (N'V09', N'Mai Văn', N'Dũng', 1, CAST(0x42030B00 AS Date), N'Sa Đéc', N'78 Hùng Vương, Q5', N'VL')
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [FK_KetQua_MonHoc] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MonHoc] ([MAMH])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [FK_KetQua_MonHoc]
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [FK_KetQua_SinhVien] FOREIGN KEY([MASV])
REFERENCES [dbo].[SinhVien] ([MASV])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [FK_KetQua_SinhVien]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_Khoa] FOREIGN KEY([MAKH])
REFERENCES [dbo].[Khoa] ([MAKH])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_Khoa]
GO
