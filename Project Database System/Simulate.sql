-- Question : C. Create query using DML syntax to simulate the transactions process for sales and purchase transactions.

USE HaLLoPharmacy
GO

BEGIN TRAN
-- Simulasi Tranksaksi --
-- Ada seorang customer baru mengenal HaLLoPharmacy. Dia ingin melakukan transksaksi di HaLLoPharmacy.
-- Maka dari itu dia harus mengisi data customer terlebih dahulu agar dapat melakukan transaksi di HaLLoPharmacy dan data tersebut tersimpan di database
-- Customer mengisi data berupa Nama, E-mail, Phone Number, Address, Date of Birth, Gender, Password
-- Contoh : Nama: Chatarine Caroline, E-Mail: chatarine@hallo.com, Phone Number: 089602797205, Address: Jl Halimun 4 No 2, Date of Birth: 2002-12-19, Gender: Female, Password: chatarine07
-- Maka otomatis data tersebut akan tersimpan di database HaLLoPharmacy
INSERT INTO Customer VALUES ('CU016', 'Chatarine Caroline', 'chatarine@hallo.com', '089602797205', 'Jl Halimun 4 No 2', '2002-12-19', 'Female', 'chatarine07')
-- Chatarine sedang mengalami maag dan diare. Jadi untuk meredakan maag, diare, dan mual yang dialami, Chatarine melakukan tranksaksi dengan membeli sebuah obat berjenis antasida yang bernama Mylanta 150g sebanyak 2 pcs, Loperamid HCL yang berjenis anti diare sebanyak 1 pcs dan Vitamin B6 10mg sebanyak 5 pcs di PT Bundamedik
-- Tranksaksi tersebut dilayani oleh employee yang bernama Jessica.
-- Maka dari itu database akan mengalami perubahan, perubahan tersebut, yaitu
-- 1. Perubahan pada tabel sales transaction dan sales transaction detail karena terjadi tranksaksi
INSERT INTO SalesTransaction VALUES 
('SL016', 'EM012', 'CU016', '2022-01-01') 
INSERT INTO SalesTransactionDetail VALUES 
('SL016', 'MD002', '2'), 
('SL016', 'MD015', '1'),
('SL016', 'MD005', '5');
-- 2. Perubahan pada tabel purchase transaction dan purchase transaction detail karena terjadi transaksi dan tranksaksi terjadi di vendor PT Bundamedik
-- Terjadi penambahan purchase transaction yang dilayani oleh Jessica di vendor PT Bundamedik
INSERT INTO PurchaseTransaction VALUES 
('PC016', 'VN012', 'EM012', '2022-01-01') -- Karena EM012 (Jessica) terakhir melayani purchase transaction terjadi pada tanggal 2022-01-01
INSERT INTO PurchaseTransactionDetail VALUES 
('PC016', 'MD002', '2'), 
('PC016', 'MD015', '1'),
('PC016', 'MD005', '5');
-- 3 Perubahan pada stock obat pada tabel medicine
UPDATE Medicine SET MedicineStock = MedicineStock - 2 WHERE MedicineID = 'MD002' -- Stock dikurangi 2 karena MD002 sudah dibeli sebanyak 2 pcs oleh CU016
UPDATE Medicine SET MedicineStock = MedicineStock - 1 WHERE MedicineID = 'MD015' -- Stock dikurangi 1 karena MD015 sudah dibeli sebanyak 1 pcs oleh CU016
UPDATE Medicine SET MedicineStock = MedicineStock - 5 WHERE MedicineID = 'MD005' -- Stock dikurangi 5 karena MD005 sudah dibeli sebanyak 5 pcs oleh CU016
ROLLBACK