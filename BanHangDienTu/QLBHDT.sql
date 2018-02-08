create database qlmhdt
use qlmhdt

Create table [Catalog] (
	[CatalogID] Integer NOT NULL,
	[Name] Nvarchar(50) NOT NULL,
Primary Key  ([CatalogID])
) 
go
insert into Catalog(CatalogID,Name) values
	(1,'Smartphone'),(2,'Mouse'),(3,'CPU'),(4,'Keyboard'),(5,'Laptop'),
	(6,'Mainboard'),(7,'Monitor'),(8,'CoolAir'),(9,'PSU'),(10,'RAM'),
	(11,'Case'),(12,'Stronges'),(13,'Tablet'),(14,'USB'),(15,'VGA');
select * from Catalog;

Create table [Product] (
	[ProductID] Integer NOT NULL,
	[CatalogID] Integer NOT NULL,
	[Name] Nvarchar(100) NOT NULL,
	[Image] Nvarchar(255) NULL,
	[Describe] Ntext NOT NULL,
	[Content] Ntext NOT NULL,
	[Price] Float NOT NULL,
	[Sale] Float NULL,
	[Amount] Integer NOT NULL,
	[Status] Bit NOT NULL,
Primary Key  ([ProductID])
) 
go
insert into Product(CatalogID,Name,Image,Describe,Content,Price,Sale,Amount,Status) values
( 1,'OPPO A37','Avt_OPPO_A37.png',N'Điện thoại thông minh thế hệ mới',N'Hệ điều hành Android 5.1.1','3300000','','100','1'),
( 1,'OPPO A83','Avt_OPPO_A83.png',N'Màn hình tràn viền - Sang trọng và thời thượng',N'Camera sau tăng cường góc máy','4590000','','100','1'),
( 1,'Huawei Nova 2i','Avt_huawei_nova_2i.png',N'Điện mời đời mới với hệ điều hành Window 8.1',N'Thiết kế nhỏ gọn, kiểu dáng sang trọng','5990000','','100','1'),
( 1,'Galaxy A7','Avt_Galaxy_A7.png',N'Chế tác tinh xảo',N'Kính cao cấp cong 2.5D ở mặt sau','6790000','','100','1'),
( 1,'Galaxy j7','Avt_J7.png',N'Thiết kế kim loại nguyên khối',N'2 camera sau với 13MP và 5MP','8890000','','100','1'),
( 1,'Galaxy Note8','Avt_Note8.png',N'Thiết kế khung kim loại với 2 mặt kính cường lực',N'Màn hình cong viền hoàn hảo','8890000','','100','1'),
( 1,'HTC U UlltraSapphire','Avt_HTC_U_UlltraSaphire.png',N'Thiết kế bề mặt trong suốt',N'Phản ánh hình chiếu cực đẹp','8890000','','100','1'),
( 1,'Iphone 6','Avt_Iphone6.png',N'Với bộ nhờ bên trong lên đến 32GB',N'Thiết kế nhôm nguyên khối','3200000','','100','1'),
( 1,'Iphone 8','Avt_Iphone8.png',N'Thiết kế sang trọng từ kính và kim loại',N'Phong cách bóng bẩy và tinh tế','10990000','','100','1'),
( 1,'Iphone X','Avt_IphoneX.png',N'Thiết kế toàn màn hình với đường viền siêu mỏng',N'Sang trọng và đẳng cấp','21590000','','100','1'),
( 1,'Motorona Z2 Play','Avt_Moto_Z2Play.png',N'Thiết kế trẻ trung, đơn giản',N'Góc bo bầu bĩnh giúp thoải mái khi cầm','6799000','','100','1'),
( 1,'OPPO F3 Plus','Avt_OPPO_F3Pluss.png',N'Thiết kế vỏ kim loại nguyên khối, sang trọng',N'Màn hình 6inch full HD','6890000','','100','1'),
( 1,'OPPO F5','Avt_OPPO_F5.png',N'Sang trọng và đẳng cấp',N'Phù hợp với các doanh nhân thành đạt','12890000','','100','1'),
( 1,'Sony XA1 Ulltra','Avt_XA1Ulltra.png',N'Thiết kế sang trọng với đường viền siêu mỏng',N'Mà hình tràn viền','12890000','','100','1'),
( 1,'Sony AZ','Avt_XZs.png',N'Thiết kế sang trọng với đường viền siêu mỏng',N'Đẳng cấp là sức mạnh','4290000','','100','1'),
( 1,'Huawei Y7 Prime','Avt_Y7_Prime.png',N'Thiết kế kim loại nguyên khối. Lịch lãm và sang trọng',N'Huawei đã chính thức giới thiệu đến người dùng điện thoại mới mang tên Y7 Prime, mẫu smartphone kế nhiệm của Y6 Prime được ra mắt vào năm ngoái.','4290000','','100','1'),
( 1,'Huawei Y5 2017','Avt_Huawei_Y5_2017.png',N'Độ phân giải Hd với hình ảnh sắc nét',N'Huawei Y5 2017 là phiên bản nâng cấp của Y5 II với cấu hình mạnh mẽ hơn, pin dung lượng cao dùng lâu hơn và thiết kế đẹp mắt, cứng cáp hơn.','2790000','','100','1'),
( 1,'Huawei Y3 2017','Avt_Huawei_Y3_2017.png',N'Thiết kế trẻ trung, thời thượng',N'Huawei Y3 2017 là thiết bị mới được Huawei cho ra mắt để thay thế cho chiếc Huawei Y3 đã ra mắt từ năm ngoái với một thiết kế mới mẻ cùng giá bán hấp dẫn.','1790000','','100','1'),
( 1,'Vivo V7','Avt_v7.png',N'Dù chỉ được hoàn thiện từ chất liệu nhựa thay vì kim loại như trên Vivo V7 Plus nhưng không vì thế mà máy mất đi vẻ sang trọng và tinh tế',N'Vivo V7 là một chiếc smartphone giá rẻ được trang bị màn hình tỉ lệ 18:9 đang trở thành trào lưu hiện nay cùng một cấu hình khá tốt cho các nhu cầu sử dụng hằng ngày.','6990000','','100','1'),
( 1,'Vivo V5s','Avt_v5s.png',N'Vivo V5s sở hữu cho mình một lớp vỏ nhựa nguyên khối chắc chắn, mọi chi tiết đều được gia công tỉ mỉ, độ hoàn thiện tốt không hề thua kém các sản phẩm cao cấp.',N'Vivo V5s là một chiếc điện thoại tầm trung với khả năng nghe nhạc chất lượng cao, camera trước độ phân giải lớn kết hợp với đèn flash hứa hẹn đem lại cho bạn những bức ảnh ấn tượng.','6690000','','100','1'),
( 1,'Vivo Y69','Avt_Y69.png',N'Với chất liệu kim loại nguyên khối sang trọng, phần ăng ten bắt sóng ở mặt lưng được làm hình chữ u làm người ta liên tưởng tới bộ đôi iPhone 7 và 7 Plus tới từ Apple.',N'Vivo Y69 là mẫu smartphone thuộc phân khúc tầm trung của Vivo với thiết kế thời trang, camera selfie độ phân giải lớn đón đầu xu thế tự sướng của giới trẻ','5990000','','100','1'),
( 1,'Vivo Y55s','Avt_Y55s.png',N'Y55s là bản nâng cấp của chiếc Vivo Y55 đã được ra mắt trước đó với cấu hình mạnh mẽ hơn và camera nhiều cải tiến.',N'Vivo Y55s có thiết kế khá quen thuộc của Vivo cho các smartphone giá rẻ của họ trong năm 2017 với thiết kế nguyên khối sang trọng, các góc cạnh bo cong mềm mại','5990000','','100','1'),
( 1,'Vivo Y53','Avt_y53.png',N'Dù là một sản phẩm giá rẻ nhưng Vivo vẫn trang bị cho Vivo Y53 một thiết kế nguyên khối, với lớp vỏ bên ngoài bằng nhựa, nhiều màu sắc trẻ trung.',N'Y53 là sản phẩm mới của Vivo trong năm 2017, máy sở hữu thiết kế đơn giản, cấu hình tầm trung cùng mức giá bán hấp dẫn với nhiều đối tượng người dùng khác nhau.','3390000','','100','1'),
( 1,'HTC 10 evo','Avt_HTC_10_evo.png',N'HTC 10 evo mang lại cho bạn trải nghiệm về thiết kế, những trang bị cao cấp của một chiếc flagship đến từ HTC nhưng với mức giá chưa tới một nửa',N'Đúng như tên gọi HTC 10 evo thì thiết kế của máy khá giống với người tiền nhiệm HTC 10, khác biệt duy nhất nằm ở mặt lưng khi máy được làm phẳng chứ không vát cong như chiếc HTC 10.','4790000','','100','1'),
( 1,'HTC U Play','Avt_U_Play.png',N'Người bạn đồng hành',N'HTC U Play đánh dấu sự trở lại của HTC ở phân khúc tầm trung với triết lý thiết kế mới: đẹp hơn - sang trọng hơn - bóng bẩy hơn, ngoài ra trải nghiệm người dùng được nâng cấp thông qua trợ lý ảo HTC Sense Companion.','5990000','','100','1'),
( 1,'HTC One ME','Avt_One_ME.png',N'HTC One ME là một thiết bị thuộc phân khúc tầm trung của HTC với điểm nhấn là thiết kế cao cấp cùng màn hình có độ phân giải lên tới 2K.',N'HTC One ME mang trong mình thiết kế cao cấp của HTC trên các dòng One với điểm nhấn là cặp loa BoomSound đối xứng trên dưới. Tuy nhiên điều đáng tiếc là One ME chỉ được làm từ nhựa chứ không phải kim loại cứng cáp như trên One M7 hay M8.','3990000','','100','1'),
( 1,'Mobell Nova P3','Avt_Nova_P3.png',N'Mobell Nova P3 là bản nâng cấp của chiếc Mobell Nova P2 đã ra mắt trước đó với thiết kế được chăm chút hơn và pin vẫn là thế mạnh của chiếc smartphone này.',N'Máy được hoàn thiện với chất liệu nhựa nhưng vẫn mang lại cho người dùng sự bóng bẩy và sang trọng nhờ các chi tiết được gia công khá sắc sảo.','2390000','','100','1'),
( 1,'Mobell Nova F7 Pro','Avt_Nova_F7_Pro.png',N'Nâng cấp từ chiếc Mobell Nova F7 trước đây với thiết kế cực mạnh mẽ với khung viền kim loại chắc chắn chạy dọc viền máy, Mobell Nova F7 Pro có cấu hình mạnh mẽ hơn cùng giá bán cũng rất hấp dẫn.',N'Sự khác biệt của Mobell Nova F7 Pro chính là phần viền máy lớn bằng kim loại chắc chắn, được chế tác bóng bẩy, vừa mang lại cảm giác bền bỉ vừa sang trọng. Và thực sự thiết kế này cũng tăng độ chắc chắn của sản phẩm khi có va đập.','2290000','','100','1'),
( 1,'Mobell S40','Avt_S40.png',N'Có thiết kế đẹp nhờ mặt lưng giả kim loại xước phay, màu sắc theo xu hướng, Mobell S40 là điện thoại giá rẻ phù hợp cho những ai thích một chiếc điện thoại cảm ứng nhỏ gọn và có nhu cầu lướt web, xài mạng xã hội là chủ yếu',N'Mobell S40 có màn hình 5 inch vừa đủ dùng để xem phim hoặc giải trí. Kích thước gọn gàng dễ thao tác bằng một tay hay bỏ túi mà không lo bị cấn. Màu sắc của Mobell S40 hợp xu hướng, màu đỏ nổi bật, sang trọng và màu đồng nhẹ nhàng, thanh thoát','1350000','','100','1'),
( 1,'Sony Xperia XA1 Ultra','Avt_XA1_Ultra.png',N'Kế nhiệm sự thành công của phablet không viền Sony Xperia XA Ultra thì Sony giới thiệu phiên bản XA1 Ultra với nhiều cải tiến đáng giá',N'Sony XA1 Ultra vẫn sở hữu cho mình phong cách thiết kế edge-to-edge với viền bezel siêu mỏng và "sexy".','8490000','','100','1');
select * from Product;

Create table [Order] (
	[OrderID] Integer NOT NULL,
	[UserID] Integer NOT NULL,
	[CreatedDate] Datetime NOT NULL,
	[NameCustomer] Nvarchar(30) NOT NULL,
	[Address] Nvarchar(255) NOT NULL,
	[Phone] Char(12) NOT NULL,
	[Status] Bit NOT NULL,
Primary Key  ([OrderID])
) 
go

Create table [User] (
	[UserID] Integer NOT NULL,
	[RoleID] Integer NOT NULL,
	[Avatar] Nvarchar(255) NULL,
	[FullName] Nvarchar(30) NOT NULL,
	[UserName] Nvarchar(30) NOT NULL,
	[Email] Varchar(50) NOT NULL,
	[Password] Varchar(100) NOT NULL,
	[Sex] Bit NULL,
	[Address] Nvarchar(255) NULL,
	[Phone] Char(12) NULL,
Primary Key  ([UserID])
) 
go

Create table [Role] (
	[RoleID] Integer NOT NULL,
	[Name] Nvarchar(50) NOT NULL,
Primary Key  ([RoleID])
) 
go

Create table [OrderDetail] (
	[ProductID] Integer NOT NULL,
	[OrderID] Integer NOT NULL,
Primary Key  ([ProductID],[OrderID])
) 
go


Alter table [Product] add  foreign key([CatalogID]) references [Catalog] ([CatalogID]) 
go
Alter table [OrderDetail] add  foreign key([ProductID]) references [Product] ([ProductID]) 
go
Alter table [OrderDetail] add  foreign key([OrderID]) references [Order] ([OrderID]) 
go
Alter table [Order] add  foreign key([UserID]) references [User] ([UserID]) 
go
Alter table [User] add  foreign key([RoleID]) references [Role] ([RoleID]) 
go


Set quoted_identifier on
go

Set quoted_identifier off
go
