create database QL_BANHANG
use QL_BANHANG
create table tbl_hang(
HangID nvarchar(10) not null primary key,
TenHang nvarchar(50) not null,
DonVi nvarchar(10) not null,
DonGia int not null
)
create table tbl_khach(
KhachID nvarchar(10) not null primary key,
TenKhach nvarchar(50) not null,
DiaChi nvarchar(50),
Email nvarchar(50),
Picture nvarchar(10)
)
create table tbl_hoadon
(
HoaDonID nvarchar(10) not null primary key,
NgayBan date not null,
KhachID nvarchar(10) not null
)
create table tbl_hangban
(
	HangID nvarchar(10) not null,
	HoaDonID nvarchar(10) not null,
	primary key (HangID,HoaDonID),
	SoLuong int not null
)
alter table tbl_hoadon add constraint pk_hd_k foreign key (KhachID) references tbl_khach(KhachID)
alter table tbl_hangban add constraint pk_hb_hd foreign key (HoaDonID) references tbl_hoadon(HoaDonID)
alter table tbl_hangban add 
constraint pk_hb_h foreign key (HangID) references tbl_hang(HangID)
alter table tbl_hangban add constraint pc_sl check(SoLuong>0)

insert into tbl_hang values ('H001','Bàn Phím','Cái',10)
insert into tbl_hang values ('H002','Ram','Thanh',200)
insert into tbl_hang values ('H003','Màn Hình','Màn',300)
insert into tbl_hang values ('H004','Máy in','Cái',150)
insert into tbl_hang values ('H005','Ổ cứng','Ổ',100)

insert into tbl_khach values ('K001','Nguyễn Văn An','Hà Nội','an@gmail.com','Hinh 1')
insert into tbl_khach values ('K002','Trần Minh Chiến','Đà nẵng','chien@gmail.com','Hinh 2')
insert into tbl_khach values ('K003','Nguyễn Thị Hồng','Long An','hong@gmail.com','Hinh 3')
insert into tbl_khach values ('K004','Nguyễn Thu Trang','Hồ Chí Minh','trang@gmail.com','Hinh 4')
insert into tbl_khach values ('K005','Phạm Tuấn Ngọc','Hà Nội','ngoc@gmail.com','Hinh 5')
insert into tbl_khach values ('K006','Phạm Thành Danh','Hồ Chí Minh','danh@gmail.com','Hinh 6')

insert into tbl_hoadon values ('HD01','2021-03-12','K001')
insert into tbl_hoadon values ('HD02','2021-04-01','K002')
insert into tbl_hoadon values ('HD03','2021-08-09','K001')
insert into tbl_hoadon values ('HD04','2021-12-12','K003')
insert into tbl_hoadon values ('HD05','2022-01-12','K004')
insert into tbl_hoadon values ('HD06','2022-01-26','K005')
insert into tbl_hoadon values ('HD07','2022-02-02','K006')
insert into tbl_hoadon values ('HD08','2022-03-01','K002')
insert into tbl_hoadon values ('HD09','2022-03-11','K001')

insert into tbl_hangban values ('H001','HD01',4)
insert into tbl_hangban values ('H001','HD02',5)
insert into tbl_hangban values ('H001','HD04',4)
insert into tbl_hangban values ('H001','HD05',4)
insert into tbl_hangban values ('H002','HD01',2)
insert into tbl_hangban values ('H002','HD04',8)
insert into tbl_hangban values ('H002','HD06',4)
insert into tbl_hangban values ('H003','HD01',12)
insert into tbl_hangban values ('H003','HD02',8)
insert into tbl_hangban values ('H003','HD07',4)
insert into tbl_hangban values ('H004','HD03',4)
insert into tbl_hangban values ('H004','HD08',4)
insert into tbl_hangban values ('H005','HD03',11)