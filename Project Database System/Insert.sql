USE HaLLoPharmacy
GO

-- Question :B. Create query using DML syntax to fill the tables in database systems with data based on the following conditions

-- Insert Table Employee
INSERT INTO Employee VALUES
('EM001','Evan Wijaya','evan76@hallo.com','0813791','Jl Kapuas no 10 Jakarta','1999-12-23','Male','4000000'),
('EM002','Evan Susanto','evanSus@hallo.com','0812425','Jl Merak no 29 Jakarta','1999-10-1','Male','1500000'),
('EM003','Rihandoko','handoko@hallo.com','081114','Jl Jahe no 29 Jakarta','1999-1-12','Male','4000000'),
('EM004','Gunawan','gunawan@hallo.com','08122425','Jl Kutilang no 29 Jakarta','1999-10-1','Male','1500000'),
('EM005','Salman Aji','Aji99@hallo.com','08122142','Jl Bandung no 20 Pekalongan','1998-5-10','Male','4000000'),
('EM006','Michelle Tan','Misel12@hallo.com','081223','Jl Batik Kawung no 70 Pekalongan','2001-7-21','Female','2500000'),
('EM007','Gisel Tan','Gisel127@hallo.com','08123426','Jl Kemayoran no 20 Pekalongan','2001-3-2','Female','2500000'),
('EM008','Geby Tan','Geby22@hallo.com','08122131','Jl Kemayoran no 20 Pekalongan','2001-3-2','Female','2500000'),
('EM009','Budi Wijaya','budi@hallo.com','0892123','Jl Kapau no 9 Semarang','2000-09-11','Male','2500000'),
('EM010','Bob','bob15@hallo.com','089212425','Jl Kapal Api no 13 Semarang','1998-12-10','Male','5000000'),
('EM011','Zainudin Sholeha','ZaiNud98@hallo.com','08921242','Jl Apel no 109 Semarang','2001-5-7','Male','2500000'),
('EM012','Jessica','jess21@hallo.com','08921287','Jl Pekantoran no 105 Semarang','2000-9-10','Female','3000000'),
('EM013','Erika Jane','erika54@hallo.com','0892196','Jl Batik Liris no 9 Semarang','1999-11-12','Female','3000000'),
('EM014','Eratmaja','eratmajaa21@hallo.com','089242141','Jl Kapuas no 187 Semarang','1997-7-6','Male','3500000'),
('EM015','Oskar','ost213@hallo.com','08921456','Jl Pelana no 247 Bandung','2002-8-9','Male','2500000');

-- Insert Table Customer
INSERT INTO Customer VALUES
('CU001','Herman Gunawan','herman@hallo.com','08813795912','Jl Melati no 79','2002-9-7','Male','herman123'),
('CU002','Yakuzi','yakuz@hallo.com','08813213201','Jl Merak no 211','2002-8-1','Male','yakuzi79a'),
('CU003','Tara Kuncoro','taraKun@hallo.com','08819812149','Jl Kemayoran no 212','2001-7-7','Male','taragans214'),
('CU004','Kimi Rabbit','kimiChan@hallo.com','08879130136','Jl Batik Liris no 811','2002-6-3','Female','k1m1765'),
('CU005','Gundala Gundali','gunDala123@hallo.com','08871911374','Jl Batik Swastika no 311','1999-5-12','Male','gundali456'),
('CU006','Lily Wijayanti','LiTwo2@hallo.com','08871283125','Jl Ubi Ungu no 111','1999-7-2','Female','blabla424'),
('CU007','Geraldy Tarigan','tariganPunya@hallo.com','08878672736','Jl Tentara Nasional no 99','2003-10-17','Male','graldT982'),
('CU008','Michael Tarigan','michaelT4@hallo.com','08211389130','Jl Panarukan no 131','2003-1-15','Male','m1ch43l8989'),
('CU009','Aziz Iik','iikAziz@hallo.com','08219833597','Jl Ponorogo no 58','2002-2-21','Male','aziz123'),
('CU010','Kevin Filemon','kevFil@hallo.com','08213745863','Jl Kemayoran no 43','2003-6-15','Male','kevFil123'),
('CU011','Calvin Kuntadi','calvyn@hallo.com','08216376428','Jl Taman Asri no 242','2001-4-26','Male','calvin7593'),
('CU012','Fatih Wijayanti','fatihW@hallo.com','08781631156','Jl Taman Asri no 189','2004-8-18','Female','fatih124'),
('CU013','Giselle Gunawan','gisGun@hallo.com','08786125136','Jl Batik Kawung no 675','1999-7-19','Female','gisgun123'),
('CU014','Livy Jane','livy96@hallo.com','08771361361','Jl Merak no 183','1999-9-14','Female','livyy134'),
('CU015','Wulandari','wulandarii131@hallo.com','08771938913','Jl Patriot no 93','2002-4-8','Female','wulan124');


-- Insert Table Vendor
INSERT INTO Vendor VALUES
('VN001','CV Kebanggaan','Kebanggaan217@hallo.com','0811324242','Jl Mawar no 57 Semarang',2003),
('VN002','PT Budidaya','budiDaya13@hallo.com','081876887','Jl Mawar no 66 Semarang','2001'),
('VN003','CV Burung Emas','BurungEmas12A@hallo.com','081720695','Jl Raya Merdeka no 1 Semarang',1999),
('VN004','CV Jaya Sakti','jayaSakti89A@hallo.com','084114156','Jl Melati no 12 Semarang',1999),
('VN005','PT Merdeka','merdeka1231@hallo.com','081720924','Jl Kelapa Sawit no 25 Tangerang',2000),
('VN006','PT Bagus','interbatOfficial@hallo.com','08555646','Jl Imam Bonjol no 25 Tangerang',2000),
('VN007','PT Panca Kebacita','pancaKabita@hallo.com','08211008','Kompl Taman Narogong Indah Bl TA/27 Bekasi',2002),
('VN008','PT Sri Dharma Tunggal','sdTunggal@hallo.com','08850678','Kompl Central Niaga Bl C-1/17 Bekasi',2004),
('VN009','PT Brayat Sehat Farma','brayatSehatFarma@hallo.com','087022453','Jl Bukit Indah I 7 Kompl Sukajadi Batam',2001),
('VN010','PT PT Bekapai','bekapai@hallo.com','08739074','Jl Bandar Balikpapan A-3 Balikpapan',2001),
('VN011','PT Meditama','mediatama123@yahoo.com','088317229','Jl KH Akhmad Dahlan 9 Semarang',1997),
('VN012','PT Bundamedik','bundamenik@yahoo.com','0831922005','Jl Teuku Cik Ditiro 28 Jakarta',2000),
('VN013','PT Mandara Medika Utama','mandaraMudika@yahoo.com','085881090','Jl Pantai Indah Utr III Jakarta',1997),
('VN014','PT Sarana Duta Jasamedika','saranaDuta@yahoo.com','086685070','Jl Pluit Slt Raya 2 Jakarta',2004),
('VN015','PT Pertamina Bina Medika','binaMedika198@yahoo.com','087219001','Jl Kyai Maja 43 Jakarta',1999);

-- Insert Table Medicine Category
INSERT INTO MedicineCategory VALUES
('CT001','Analgesik'),
('CT002','Antasida'),
('CT003','Antibiotik'),
('CT004','Trombolitik'),
('CT005','Antimuntah'),
('CT006','Antijamur'),
('CT007','Antihipertensi'),
('CT008','Anti-inflamasi'),
('CT009','Antineoplastik'),
('CT010','Antivirus'),
('CT011','Bronkodilator'),
('CT012','Kortikosteroid'),
('CT013','Dekongestan'),
('CT014','Antipsikotik'),
('CT015','Antidiare');

-- Insert Table Medicine
INSERT INTO Medicine VALUES
('MD001','Piroxcicam 100mg','Obat pereda nyeri dan peradangan',75000,150,'CT001'),
('MD002','Mylanta 150mg','Obat pereda maag',22000,200 ,'CT002'),
('MD003','Cefadroxil 500mg','Obat untuk mengatasi infeksi bakteri di tenggorokan, saluran kencing, kulit, atau jantung.',30000,200,'CT003'),
('MD004','Streptokinase 10mg','Obat untuk melarutkan gumpalan darah yang terbentuk di dalam pembuluh darah',100000,500,'CT004'),
('MD005','Vitamin B6 10mg','Obat anti mual',75000,100,'CT005'),
('MD006','Ketoconazole 200mg','Obat anti jamur',27000,50,'CT006'),
('MD007','Captopril 25mg','Obat anti hipertensi',30000,250,'CT007'),
('MD008','Bufaflam 25mg','Obat anti inflamasi',70000 ,300,'CT008'),
('MD009','Carboplatin','Obat untuk menangani kanker',7500,50,'CT009'),
('MD010','Acyclovir 400mg','Obat antivirus',15000,40,'CT010'),
('MD011','salbutamo','Obat asma / sesak napas',20000,250,'CT011'),
('MD012','Dexamethasone','Obat untuk Kortikosteroid',30000,370,'CT012'),
('MD013','Phenylephrine','Obat meredakan hidung tersumbat',45000,365,'CT013'),
('MD014','Haloperidol','Obat penenang',30000,350,'CT014'),
('MD015','Loperamid HCL','Obat anti diare',90000,40,'CT015');

-- Insert Table Sales Transaction
INSERT INTO SalesTransaction VALUES
('SL001','EM001','CU001','2021-10-09'),
('SL002','EM002','CU002','2021-11-02'),
('SL003','EM003','CU003','2021-05-15'),
('SL004','EM004','CU004','2021-11-02'),
('SL005','EM005','CU005','2021-09-03'),
('SL006','EM006','CU006','2021-05-04'),
('SL007','EM007','CU007','2021-04-05'),
('SL008','EM008','CU008','2021-06-15'),
('SL009','EM009','CU009','2021-02-19'),
('SL010','EM010','CU010','2021-07-17'),
('SL011','EM011','CU011','2021-03-18'),
('SL012','EM012','CU012','2021-08-01'),
('SL013','EM013','CU013','2021-01-21'),
('SL014','EM014','CU014','2021-04-03'),
('SL015','EM015','CU015','2021-07-12');

-- Insert Table Sales Transaction Detail
INSERT INTO SalesTransactionDetail VALUES
('SL001','MD010',100),
('SL001','MD008',100),
('SL002','MD006',50),
('SL002','MD004',150),
('SL003','MD002',20),
('SL003','MD015',30),
('SL004','MD013',40),
('SL004','MD011',30),
('SL005','MD009',35),
('SL005','MD007',16),
('SL006','MD005',14),
('SL006','MD003',23),
('SL007','MD001',22),
('SL007','MD015',25),
('SL008','MD015',50),
('SL008','MD014',20),
('SL009','MD013',25),
('SL009','MD012',18),
('SL010','MD011',42),
('SL010','MD010',100),
('SL011','MD009',150),
('SL011','MD008',300),
('SL012','MD007',20),
('SL012','MD006',10),
('SL013','MD006',16),
('SL013','MD005',15),
('SL014','MD004',100),
('SL014','MD003',50),
('SL015','MD002',50),
('SL015','MD001',100);

-- Insert Table Purchase Transaction
INSERT INTO PurchaseTransaction VALUES
('PC001','VN001','EM001','2021-01-11'),
('PC002','VN002','EM002','2021-11-1'),
('PC003','VN003','EM003','2021-05-19'),
('PC004','VN004','EM004','2021-04-20'),
('PC005','VN005','EM005','2021-02-12'),
('PC006','VN006','EM006','2021-05-01'),
('PC007','VN007','EM007','2021-04-03'),
('PC008','VN008','EM008','2021-06-04'),
('PC009','VN009','EM009','2021-02-25'),
('PC010','VN010','EM010','2021-09-17'),
('PC011','VN011','EM011','2021-03-19'),
('PC012','VN012','EM012','2021-08-12'),
('PC013','VN013','EM013','2021-12-24'),
('PC014','VN014','EM014','2021-04-03'),
('PC015','VN015','EM015','2021-07-12');

-- Insert Table Purchase Transaction Detail
INSERT INTO PurchaseTransactionDetail VALUES
('PC001','MD002',10),
('PC001','MD003',10),
('PC002','MD005',5),
('PC002','MD007',15),
('PC003','MD011',20),
('PC003','MD013',30),
('PC004','MD002',40),
('PC004','MD004',30),
('PC005','MD008',35),
('PC005','MD010',16),
('PC006','MD012',14),
('PC006','MD014',23),
('PC007','MD001',22),
('PC007','MD003',25),
('PC008','MD005',50),
('PC008','MD007',20),
('PC009','MD009',25),
('PC009','MD011',18),
('PC010','MD013',42),
('PC010','MD015',10),
('PC011','MD001',15),
('PC011','MD015',30),
('PC012','MD014',20),
('PC012','MD006',10),
('PC013','MD006',16),
('PC013','MD005',15),
('PC014','MD004',10),
('PC014','MD012',5),
('PC015','MD011',5),
('PC015','MD001',10);

