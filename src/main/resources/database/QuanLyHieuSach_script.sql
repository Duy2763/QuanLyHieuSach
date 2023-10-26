USE [QLHieuSach]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 26/10/2023 9:26:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[soLuong] [int] NULL,
	[idDonHang] [nvarchar](7) NOT NULL,
	[idSanPham] [nvarchar](7) NOT NULL,
	[thanhTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDonHang] ASC,
	[idSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhapSanPham]    Script Date: 26/10/2023 9:26:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhapSanPham](
	[soLuongNhap] [int] NULL,
	[giaNhap] [float] NULL,
	[phieuNhapSanPham] [nvarchar](7) NOT NULL,
	[idsanPham] [nvarchar](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[phieuNhapSanPham] ASC,
	[idsanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuongTrinhKhuyenMai]    Script Date: 26/10/2023 9:26:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuongTrinhKhuyenMai](
	[idCTKM] [nvarchar](7) NOT NULL,
	[soTienGiamGia] [float] NOT NULL,
	[idSanPham] [nvarchar](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCTKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 26/10/2023 9:26:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[idDonHang] [nvarchar](7) NOT NULL,
	[ngayLap] [date] NOT NULL,
	[khachHang] [nvarchar](7) NOT NULL,
	[nhanVien] [nvarchar](7) NOT NULL,
	[tienKhachDua] [float] NULL,
	[tongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 26/10/2023 9:26:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[idKhachHang] [nvarchar](7) NOT NULL,
	[tenKhachHang] [nvarchar](50) NOT NULL,
	[soDienThoai] [nvarchar](10) NULL,
	[email] [nvarchar](50) NULL,
	[diaChi] [nvarchar](50) NULL,
	[ngaySinh] [date] NULL,
	[gioiTinh] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 26/10/2023 9:26:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[idLoaiSanPham] [nvarchar](7) NOT NULL,
	[tenLoaiSanPham] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 26/10/2023 9:26:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[idNhaCungCap] [nvarchar](7) NOT NULL,
	[tenNhaCungCap] [nvarchar](50) NOT NULL,
	[diaChi] [nvarchar](50) NULL,
	[soDienThoai] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 26/10/2023 9:26:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[idNhanVien] [nvarchar](7) NOT NULL,
	[tenNhanVien] [nvarchar](50) NOT NULL,
	[soDienThoai] [nvarchar](10) NULL,
	[diaChi] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[ngaySinh] [date] NULL,
	[gioiTinh] [bit] NULL,
	[chucVu] [nvarchar](50) NULL,
	[trangThai] [bit] NULL,
	[luong] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[idNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhapSanPham]    Script Date: 26/10/2023 9:26:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapSanPham](
	[idPhieuNhapSanPham] [nvarchar](7) NOT NULL,
	[ngayNhap] [date] NULL,
	[nhanVien] [nvarchar](7) NOT NULL,
	[tongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[idPhieuNhapSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 26/10/2023 9:26:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[idSanPham] [nvarchar](7) NOT NULL,
	[tenSanPham] [nvarchar](30) NOT NULL,
	[tacGia] [nvarchar](7) NOT NULL,
	[theLoai] [nvarchar](7) NOT NULL,
	[namXuatBan] [date] NOT NULL,
	[ISBN] [nvarchar](255) NOT NULL,
	[soTrang] [int] NULL,
	[hinhAnhSanPham] [nvarchar](255) NOT NULL,
	[loaiSanPham] [nvarchar](7) NOT NULL,
	[nhaCungCap] [nvarchar](7) NOT NULL,
	[kichThuoc] [float] NOT NULL,
	[mauSac] [nvarchar](255) NOT NULL,
	[trangThai] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 26/10/2023 9:26:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[idSanPham] [nvarchar](7) NOT NULL,
	[tenSanPham] [nvarchar](30) NOT NULL,
	[hinhAnhSanPham] [nvarchar](255) NOT NULL,
	[loaiSanPham] [nvarchar](7) NOT NULL,
	[nhaCungCap] [nvarchar](7) NOT NULL,
	[kichThuoc] [float] NOT NULL,
	[mauSac] [nvarchar](255) NOT NULL,
	[trangThai] [bit] NOT NULL,
	[soLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 26/10/2023 9:26:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[idTacGia] [nvarchar](7) NOT NULL,
	[tenTacGia] [nvarchar](30) NOT NULL,
	[ngaySinh] [date] NULL,
	[soLuongTacPham] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 26/10/2023 9:26:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[idTaiKhoan] [nvarchar](7) NOT NULL,
	[matKhau] [nvarchar](20) NOT NULL,
	[ngayLap] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[idTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 26/10/2023 9:26:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[idTheLoai] [nvarchar](7) NOT NULL,
	[tenTheLoai] [nvarchar](30) NOT NULL,
	[soLuongSach] [int] NULL,
	[moTa] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT ((1)) FOR [trangThai]
GO
ALTER TABLE [dbo].[TaiKhoan] ADD  DEFAULT (getdate()) FOR [ngayLap]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([idDonHang])
REFERENCES [dbo].[HoaDon] ([idDonHang])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([idSanPham])
REFERENCES [dbo].[SanPham] ([idSanPham])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapSanPham]  WITH CHECK ADD FOREIGN KEY([idsanPham])
REFERENCES [dbo].[SanPham] ([idSanPham])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapSanPham]  WITH CHECK ADD FOREIGN KEY([phieuNhapSanPham])
REFERENCES [dbo].[PhieuNhapSanPham] ([idPhieuNhapSanPham])
GO
ALTER TABLE [dbo].[ChuongTrinhKhuyenMai]  WITH CHECK ADD FOREIGN KEY([idSanPham])
REFERENCES [dbo].[SanPham] ([idSanPham])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([khachHang])
REFERENCES [dbo].[KhachHang] ([idKhachHang])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([nhanVien])
REFERENCES [dbo].[NhanVien] ([idNhanVien])
GO
ALTER TABLE [dbo].[PhieuNhapSanPham]  WITH CHECK ADD FOREIGN KEY([nhanVien])
REFERENCES [dbo].[NhanVien] ([idNhanVien])
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD FOREIGN KEY([nhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([idNhaCungCap])
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD FOREIGN KEY([tacGia])
REFERENCES [dbo].[TacGia] ([idTacGia])
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD FOREIGN KEY([theLoai])
REFERENCES [dbo].[TheLoai] ([idTheLoai])
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD FOREIGN KEY([loaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([idLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([loaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([idLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([nhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([idNhaCungCap])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([idTaiKhoan])
REFERENCES [dbo].[NhanVien] ([idNhanVien])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD CHECK  (([soLuong]>(0)))
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapSanPham]  WITH CHECK ADD CHECK  (([giaNhap]>(0)))
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapSanPham]  WITH CHECK ADD CHECK  (([soLuongNhap]>(0)))
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD CHECK  (([tienKhachDua]>=(0)))
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD CHECK  (([ngaySinh]<getdate()))
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([luong]>(2000000)))
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([ngaySinh]<getdate()))
GO
ALTER TABLE [dbo].[PhieuNhapSanPham]  WITH CHECK ADD CHECK  (([ngayNhap]<=getdate()))
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD CHECK  ((datepart(year,[namXuatBan])<=datepart(year,getdate())))
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD CHECK  (([soTrang]>(0)))
GO
ALTER TABLE [dbo].[TacGia]  WITH CHECK ADD CHECK  (([ngaySinh]<getdate()))
GO
ALTER TABLE [dbo].[TacGia]  WITH CHECK ADD CHECK  (([soLuongTacPham]>(0)))
GO
ALTER TABLE [dbo].[TheLoai]  WITH CHECK ADD CHECK  (([soLuongSach]>(0)))
GO
