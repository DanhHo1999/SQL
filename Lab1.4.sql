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
DiemTB float not null,
primary key (MaSV,MaMH),
constraint fk_diem_monhoc foreign key (MaMH)references tbl_monhoc(MaMH),
constraint fk_diem_sinhvien foreign key(MaSV)references tbl_sinhvien(MaSV)
)

insert into tbl_truong values ('MT01','ĐH Bách Khoa')
insert into tbl_truong values ('MT02','ĐH Kinh Tế')
insert into tbl_truong values ('MT03','ĐH Sư Phạm')
insert into tbl_truong values ('MT04','ĐH Giao Thông')
insert into tbl_truong values ('MT05','VTCA')

insert into tbl_sinhvien values ('SV001','Nguyễn Văn Hùng','Nam','1990-03-12','MT01')
insert into tbl_sinhvien values ('SV002','Trần Diệu Nhi','Nữ','1990-06-22','MT02')
insert into tbl_sinhvien values ('SV003','Phạm Minh Đăng','Nam','1990-12-09','MT03')
insert into tbl_sinhvien values ('SV004','Nguyễn Anh Đào','Nữ','1991-08-12','MT01')
insert into tbl_sinhvien values ('SV005','Trần Văn Hưng','Nam','1990-09-12','MT02')

insert into tbl_monhoc values ('MH01','Thiết kế WEB')
insert into tbl_monhoc values ('MH02','Lập Trình WEB')
insert into tbl_monhoc values ('MH03','ASP.NET')
insert into tbl_monhoc values ('MH04','SQL Server')
insert into tbl_monhoc values ('MH05','HTML và CSS')
insert into tbl_monhoc values ('MH06','Lập trình căn bản')

insert into tbl_diem values ('SV001','MH01',9)
insert into tbl_diem values ('SV001','MH02',6.5)
insert into tbl_diem values ('SV001','MH03',8.5)
insert into tbl_diem values ('SV001','MH04',7)
insert into tbl_diem values ('SV002','MH01',8)
insert into tbl_diem values ('SV002','MH02',6.8)
insert into tbl_diem values ('SV002','MH03',7.5)
insert into tbl_diem values ('SV002','MH04',9)
insert into tbl_diem values ('SV003','MH01',8)
insert into tbl_diem values ('SV003','MH02',8)
insert into tbl_diem values ('SV003','MH03',5)
insert into tbl_diem values ('SV003','MH04',8)
insert into tbl_diem values ('SV004','MH01',8.5)
insert into tbl_diem values ('SV004','MH02',8.6)
insert into tbl_diem values ('SV004','MH03',5.8)
insert into tbl_diem values ('SV004','MH04',8.5)
insert into tbl_diem values ('SV005','MH01',7)
insert into tbl_diem values ('SV005','MH02',9.6)
insert into tbl_diem values ('SV005','MH03',8.8)
insert into tbl_diem values ('SV005','MH04',8.5)
