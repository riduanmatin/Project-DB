USE SandwEJ

--Simulasi proses transaksi


-- Simulasi Purchase
-- Pada purchase kedua (PH002) Staff bernama Gorgc Janno (ST002) membeli ingredient dari vendor Stroehmann Bakeries Llc (VE003) 
-- pada tanggal 14 Agustus 2019, ingredient yang dibeli yaitu selada (IG004) sebanyak 5 buah.

-- berikut query untuk simulasi purchase

INSERT INTO PurchaseTransactionHeaderEJ VALUES
('PH002','ST002','VE003','2019-08-14')

INSERT INTO PurchaseTransactionDetailEJ VALUES
('PH002','IG004',5)

-----------------------------------------------------------------------------------------------------------------------------------------

-- Simulasi Sales

-- Pada sales pertama (SH001) dilayani oleh staff bernama Camilla Cabello (ST010) dan pembelinya bernama Travis Scott (CS005) pada tanggal
-- 2 Agustus 2019, Ia membeli 2 jenis sandwich yaitu Cheese & Egg Sandwich (SW001) dimasak oleh chef Anthony Bourdain (CH001) sebanyak 
-- 3 buah dan Black Pepper Sandwich (SW002) dimasak oleh chef Gordon Ramsay (CH003) sebanyak 4 buah.

-- berikut query untuk simulasi sales

INSERT INTO SalesTransactionHeaderEJ VALUES
('SH001','ST010','CS005','2019-08-02')

INSERT INTO SalesTransactionDetailEJ VALUES
('SH001','SW001','CH001',3),
('SH001','SW002','CH003',4)