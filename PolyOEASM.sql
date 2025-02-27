USE master
GO
CREATE DATABASE PolyOEAsm
GO
USE PolyOEAsm
GO
CREATE TABLE Favorites(
	id bigint identity NOT NULL,
	userid varchar(20) NOT NULL,
	videoid varchar(20) NOT NULL,
	likedate date NOT NULL,
	CONSTRAINT PK_Username PRIMARY KEY CLUSTERED (id)
)
GO
CREATE TABLE Shares(
	id bigint identity NOT NULL,
	userid varchar(20) NOT NULL,
	videoid varchar(20) NOT NULL,
	emails varchar(250) NOT NULL,
	sharedate date NOT NULL
	CONSTRAINT PK_Shares PRIMARY KEY CLUSTERED (id)
)
GO
CREATE TABLE Users(
	username varchar(20) NOT NULL,
	password varchar(50) NOT NULL,
	fullname nvarchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	admin bit NOT NULL,
	CONSTRAINT PK_Users PRIMARY KEY CLUSTERED (username)
)
GO
CREATE TABLE Videos(
	id varchar(20) NOT NULL,
	title nvarchar(1000) NOT NULL,
	poster varchar(50) NOT NULL,
	views int NOT NULL,
	description nvarchar(max) NULL,
	active bit NOT NULL,
	code varchar(500) NOT NULL,
	CONSTRAINT PK_Videos PRIMARY KEY CLUSTERED (id)
)
GO

SET IDENTITY_INSERT Favorites ON
INSERT Favorites (id, userid, videoid, likedate) VALUES (1, 'admin', 'vd1', CAST(N'2021-02-02' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (2, 'duyplus', 'vd2', CAST(N'2021-03-12' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (3, 'duyplus', 'vd3', CAST(N'2021-05-15' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (6, 'duyplus', 'vd1', CAST(N'2021-07-05' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (7, 'hongdao', 'vd9', CAST(N'2021-04-11' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (8, 'binhloi', 'vd10', CAST(N'2021-05-13' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (9, 'tienthanh', 'vd12', CAST(N'2021-08-17' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (10, 'quanghung', 'vd21', CAST(N'2021-03-05' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (11, 'thanhthuy', 'vd15', CAST(N'2021-08-02' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (12, 'trunghung', 'vd19', CAST(N'2021-05-06' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (13, 'thuha', 'vd20', CAST(N'2021-09-12' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (14, 'hoangkim', 'vd25', CAST(N'2021-10-23' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (15, 'hungthinh', 'vd14', CAST(N'2021-10-15' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (16, 'trungkien', 'vd18', CAST(N'2021-01-18' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (17, 'huyphi', 'vd22', CAST(N'2021-10-13' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (18, 'honglinh', 'vd23', CAST(N'2021-11-26' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (19, 'ducduy', 'vd16', CAST(N'2021-12-06' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (20, 'thanhthuy', 'vd18', CAST(N'2021-10-09' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (21, 'hongdao', 'vd10', CAST(N'2021-09-27' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (22, 'binhloi', 'vd15', CAST(N'2021-02-08' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (23, 'tienthanh', 'vd17', CAST(N'2021-06-11' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (24, 'quanghung', 'vd11', CAST(N'2021-05-15' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (25, 'thanhthuy', 'vd12', CAST(N'2021-07-17' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (26, 'trunghung', 'vd19', CAST(N'2021-09-19' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (27, 'thuha', 'vd20', CAST(N'2021-10-27' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (28, 'hoangkim', 'vd20', CAST(N'2021-11-21' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (29, 'hungthinh', 'vd16', CAST(N'2021-01-23' AS Date))
INSERT Favorites (id, userid, videoid, likedate) VALUES (30, 'trungkien', 'vd27', CAST(N'2021-01-06' AS Date))
SET IDENTITY_INSERT Favorites OFF

SET IDENTITY_INSERT Shares ON
INSERT Shares (id, userid, videoid, emails, sharedate) VALUES (1, 'admin', 'vd1', 'duyplusdz@gmail.com', CAST(N'2022-02-06' AS Date))
INSERT Shares (id, userid, videoid, emails, sharedate) VALUES (2, 'admin', 'vd3', 'duyplusdz@gmail.com', CAST(N'2022-02-06' AS Date))
INSERT Shares (id, userid, videoid, emails, sharedate) VALUES (3, 'duyplus', 'vd3', 'duyplusdz@gmail.com', CAST(N'2022-02-06' AS Date))
INSERT Shares (id, userid, videoid, emails, sharedate) VALUES (4, 'duyplus', 'vd2', 'duyplusdz@gmail.com', CAST(N'2022-02-10' AS Date))
INSERT Shares (id, userid, videoid, emails, sharedate) VALUES (5, 'duyplus', 'vd6', 'duyplusdz@gmail.com', CAST(N'2022-02-10' AS Date))
INSERT Shares (id, userid, videoid, emails, sharedate) VALUES (6, 'duyplus', 'vd9', 'duyplusdz@gmail.com', CAST(N'2022-02-10' AS Date))
INSERT Shares (id, userid, videoid, emails, sharedate) VALUES (7, 'duyplus', 'vd20', 'duyplusdz@gmail.com', CAST(N'2022-02-10' AS Date))
INSERT Shares (id, userid, videoid, emails, sharedate) VALUES (8, 'duyplus', 'vd14', 'duyplusdz@gmail.com', CAST(N'2022-02-10' AS Date))
INSERT Shares (id, userid, videoid, emails, sharedate) VALUES (9, 'duyplus', 'vd17', 'duyplusdz@gmail.com', CAST(N'2022-02-10' AS Date))
SET IDENTITY_INSERT Shares OFF

INSERT Users (username, password, fullname, email, admin) VALUES ('admin', '123', N'Văn Tèo', 'admin@gmail.com', 1)
INSERT Users (username, password, fullname, email, admin) VALUES ('danhloi', '823806', N'Danh Lợi', 'danhloi@gmail.com', 0)
INSERT Users (username, password, fullname, email, admin) VALUES ('ducduy', '525090', N'Đức Duy', 'ducduy@gmail.com', 0)
INSERT Users (username, password, fullname, email, admin) VALUES ('duyplus', '123456', N'Hoàng Duy', 'duyplusdz@gmail.com', 0)
INSERT Users (username, password, fullname, email, admin) VALUES ('honglinh', '268252', N'Hồng Linh', 'honglinh@gmail.com', 0)
INSERT Users (username, password, fullname, email, admin) VALUES ('huyphi', '155530', N'Huy Phi', 'huyphi@gmail.com', 0)
INSERT Users (username, password, fullname, email, admin) VALUES ('trungkien', '781915', N'Trung Kiên', 'trungkien@gmail.com', 0)
INSERT Users (username, password, fullname, email, admin) VALUES ('hongdao', '962334', N'Hồng Đào', 'hongdao@gmail.com', 0)
INSERT Users (username, password, fullname, email, admin) VALUES ('lelai', '665844', N'Lê Lại', 'lelai@gmail.com', 0)
INSERT Users (username, password, fullname, email, admin) VALUES ('quanghung', '533240', N'Quang Hưng', 'quanghung@gmail.com', 0)
INSERT Users (username, password, fullname, email, admin) VALUES ('thanhthuy', '330543', N'Thanh Thuỳ', 'thanhthuy@gmail.com', 0)
INSERT Users (username, password, fullname, email, admin) VALUES ('hungthinh', '345983', N'Hưng Thịnh', 'hungthinh@gmail.com', 0)
INSERT Users (username, password, fullname, email, admin) VALUES ('daiphat', '301381', N'Đại Phát', 'daiphat@gmail.com', 0)
INSERT Users (username, password, fullname, email, admin) VALUES ('myduyen', '543397', N'Mỹ Duyên', 'myduyen@gmail.com', 0)
INSERT Users (username, password, fullname, email, admin) VALUES ('binhloi', '399458', N'Bình Lợi', 'binhloi@gmail.com', 0)
INSERT Users (username, password, fullname, email, admin) VALUES ('tienthanh', '469164', N'Tiến Thành', 'tienthanh@gmail.com', 0)
INSERT Users (username, password, fullname, email, admin) VALUES ('trunghung', '928937', N'Trung Hùng', 'trunghung@gmail.com', 0)
INSERT Users (username, password, fullname, email, admin) VALUES ('thuha', '147852', N'Thu Hà', 'thuha@gmail.com', 0)
INSERT Users (username, password, fullname, email, admin) VALUES ('hoangkim', '364430', N'Hoàng Kim', 'hoangkim@gmail.com', 0)

INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd1', N'Iron Man', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd2', N'The Incredible Hulk', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd3', N'Iron Man 2', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd4', N'Thor', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd5', N'Captain America: The First Avenger', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd6', N'The Avengers', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd7', N'Iron Man 3', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd8', N'Thor: The Dark World', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd9', N'Captain America 2: The Winter Soldier', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd10', N'Guardians of The Galaxy', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd11', N'Avengers: Age of Ultron', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd12', N'Ant-Man', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd13', N'Captain America: Civil War', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd14', N'Doctor Strange', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd15', N'Guardians of The Galaxy 2', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd16', N'Spider-Man: Homecoming', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd17', N'Thor: Ragnarok', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd18', N'Black Panther', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd19', N'Avengers: Infinity War', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd20', N'Ant-Man and the Wasp', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd21', N'Captain Marvel', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd22', N'Avengers: Endgame', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd23', N'Spider-Man: Far From Home', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd24', N'Black Widow', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd25', N'Shang-Chi and the Legend of the Ten Rings', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd26', N'Eternals', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd27', N'Spider-Man: No Way Home', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd28', N'Pacific War', 'uploads/VD01.jpg', 2, N'Pacific War', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd29', N'Dragon Ball', 'uploads/VD02.jpg', 5, N'Dragon Ball', 1, 'https://www.youtube.com/embed/AaFkbVh7St8')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd30', N'Dragon ball GT', 'uploads/VD03.jpg', 3, N'Dragon ball GT', 1, 'https://www.youtube.com/embed/bKRfxXwtafc')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd31', N'Kymetsu No Yaiba', 'uploads/VD04.jpg', 3, N'Kymetsu No Yaiba', 1, 'https://www.youtube.com/embed/VQGCKyvzIM4')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd32', N'Dragon Ball Super', 'uploads/VD05.jpg', 463, N'Dragon ball Super', 1, 'https://www.youtube.com/embed/WiONylGn8Xw')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd33', N'Tây Du Ký 2013', 'uploads/VD06.jpg', 1, N'Tây Du Ký 2013', 0, 'https://www.youtube.com/embed/DSbqlb_NSNI')
INSERT Videos (id, title, poster, views, description, active, code) VALUES ('vd34', N'One Piece', 'uploads/VD07.jpg', 999984, N'One Piece', 1, 'https://www.youtube.com/embed/1TiBoHQUj3I')
GO
-- Khoá phụ
ALTER TABLE Favorites WITH CHECK ADD CONSTRAINT FK_FAVORITES_USERS FOREIGN KEY(userid)
REFERENCES Users (username) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE Favorites CHECK CONSTRAINT FK_FAVORITES_USERS
GO
ALTER TABLE Favorites WITH CHECK ADD CONSTRAINT FK_FAVORITES_VidEOS FOREIGN KEY(videoid)
REFERENCES Videos (id) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE Favorites CHECK CONSTRAINT FK_FAVORITES_VidEOS
GO
ALTER TABLE Shares WITH CHECK ADD CONSTRAINT FK_SHARES_USERS FOREIGN KEY(userid)
REFERENCES Users (username) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE Shares CHECK CONSTRAINT FK_SHARES_USERS
GO
ALTER TABLE Shares WITH CHECK ADD CONSTRAINT FK_SHARES_VidEOS FOREIGN KEY(videoid)
REFERENCES Videos (id) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE Shares CHECK CONSTRAINT FK_SHARES_VidEOS
GO

