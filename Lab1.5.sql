create database QL_HOADON
use QL_HOADON
create table tbl_KhachHang
(MaKH nvarchar(10)not null primary key,
TenKH nvarchar(50) not null,
DcKH nvarchar(100))
create table tbl_NhanVien
(MaNV nvarchar(10) not null primary key,
TenNV nvarchar(50)not null,
DCNV nvarchar(100),
DT varchar(15))
create table tbl_SanPham
(MaSP nvarchar(10)not null primary key,
TenSP nvarchar(50)not null,
DVi nvarchar(10)not null,
DonGia int not null)
create table tbl_HoaDon
(MaHD nvarchar(10)not null primary key,
MaKH nvarchar(10) not null,
MaNV nvarchar(10)not null,
NgayLapHD date,
NgayNhanHang date
constraint fk_hoadon_nhanvien foreign key(MaNV)references tbl_NhanVien(MaNV),
constraint fk_hoadon_khachhang foreign key(MaKH)references tbl_KhachHang(MakH))
create table tbl_CTHhoaDon
(MaHD nvarchar(10)not null,
MaSP nvarchar(10)not null,
SoLuong int not null,
primary key(MaHD,MaSP),
constraint fk_cthoadon_sanpham foreign key(MaSP)references tbl_SanPham(MaSP),
constraint fk_cthoadon_hoadon foreign key(MaHD)references tbl_hoadon(MaHD))