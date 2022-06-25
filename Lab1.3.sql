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