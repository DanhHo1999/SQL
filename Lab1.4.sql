create database QL_SINHVIEN
use QL_SINHVIEN
create table tbl_monhoc
(
MaMH nvarchar(10) not null primary key,
TenMH nvarchar (50) not null
)
create table tbl_truong
(
MaTruong nvarchar(10) not null primary key,
TenTruong nvarchar(50) not null
)
create table tbl_sinhvien
(
MaSV nvarchar(10) not null primary key,
TenSV nvarchar(50)not null,
Phai nvarchar(5),
NgaySinh date,
MaTruong nvarchar(10)not null,
constraint fk_sv_t foreign key (MaTruong) references tbl_truong(MaTruong)
)
create table tbl_diem
(
MaSV nvarchar(10)not null,
MaMH nvarchar(10)not null,
DiemTB int not null,
primary key (MaSV,MaMH),
constraint fk_diem_monhoc foreign key (MaMH)references tbl_monhoc(MaMH),
constraint fk_diem_sinhvien foreign key(MaSV)references tbl_sinhvien(MaSV)
)