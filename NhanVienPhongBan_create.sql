-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:11:15.037




-- tables
-- Table TNhanVien
CREATE TABLE TNhanVien (
    id int    NOT NULL ,
    MaNV varchar(10)    NOT NULL ,
    TenNV varchar(25)    NOT NULL ,
    NgaySinh date    NOT NULL ,
    GioiTinh timestamp    NOT NULL ,
    Email varchar(25)    NOT NULL ,
    MucLuong double(30,4)    NOT NULL ,
    MaPhong int    NOT NULL ,
    TPhongBan_id int    NOT NULL ,
    CONSTRAINT TNhanVien_pk PRIMARY KEY (id)
);

-- Table TPhongBan
CREATE TABLE TPhongBan (
    id int    NOT NULL ,
    MaPhong varchar(25)    NOT NULL ,
    TenPhong varchar(25)    NOT NULL ,
    CONSTRAINT TPhongBan_pk PRIMARY KEY (id)
);





-- foreign keys
-- Reference:  TNhanVien_TPhongBan (table: TNhanVien)


ALTER TABLE TNhanVien ADD CONSTRAINT TNhanVien_TPhongBan FOREIGN KEY TNhanVien_TPhongBan (TPhongBan_id)
    REFERENCES TPhongBan (id);



-- End of file.

