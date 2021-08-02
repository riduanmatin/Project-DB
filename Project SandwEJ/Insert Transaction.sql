USE SandwEJ

INSERT INTO PurchaseTransactionHeaderEJ VALUES
('PH001','ST001','VE002','2019-08-12'),
('PH002','ST002','VE003','2019-08-14'),
('PH003','ST004','VE005','2019-08-16'),
('PH004','ST003','VE004','2019-09-02'),
('PH005','ST005','VE010','2019-09-06'),
('PH006','ST006','VE008','2019-09-07'),
('PH007','ST006','VE009','2019-09-25'),
('PH008','ST007','VE006','2019-10-10'),
('PH009','ST007','VE001','2019-10-12'),
('PH010','ST008','VE007','2019-10-25'),
('PH011','ST009','VE010','2019-10-27'),
('PH012','ST010','VE008','2019-11-11'),
('PH013','ST010','VE007','2019-11-23'),
('PH014','ST005','VE003','2019-12-12'),
('PH015','ST003','VE002','2019-12-26')

SELECT * FROM PurchaseTransactionHeaderEJ

INSERT INTO PurchaseTransactionDetailEJ VALUES
('PH001','IG001',2),
('PH001','IG002',3),
('PH002','IG004',5),
('PH003','IG008',4),
('PH003','IG009',6),
('PH004','IG002',7),
('PH004','IG003',2),
('PH004','IG004',3),
('PH005','IG005',1),
('PH006','IG006',5),
('PH006','IG007',6),
('PH006','IG008',8),
('PH007','IG009',5),
('PH008','IG005',4),
('PH008','IG010',8),
('PH009','IG002',9),
('PH009','IG001',1),
('PH009','IG003',1),
('PH009','IG004',3),
('PH010','IG005',4),
('PH010','IG006',6),
('PH011','IG007',7),
('PH013','IG008',8),
('PH014','IG009',5),
('PH015','IG001',2)

SELECT * FROM PurchaseTransactionDetailEJ

INSERT INTO SalesTransactionHeaderEJ VALUES
('SH001','ST010','CS005','2019-08-02'),
('SH002','ST009','CS004','2019-08-10'),
('SH003','ST008','CS003','2019-08-12'),
('SH004','ST007','CS002','2019-09-03'),
('SH005','ST006','CS001','2019-09-22'),
('SH006','ST005','CS010','2019-09-28'),
('SH007','ST004','CS009','2019-09-30'),
('SH008','ST003','CS008','2019-10-06'),
('SH009','ST002','CS007','2019-10-08'),
('SH010','ST001','CS005','2019-11-05'),
('SH011','ST010','CS004','2019-11-23'),
('SH012','ST009','CS003','2019-11-27'),
('SH013','ST008','CS002','2019-12-01'),
('SH014','ST007','CS001','2019-12-20'),
('SH015','ST006','CS010','2019-12-29')

SELECT * FROM SalesTransactionHeaderEJ

INSERT INTO SalesTransactionDetailEJ VALUES
('SH001','SW001','CH001',3),
('SH001','SW002','CH003',4),
('SH002','SW003','CH004',1),
('SH003','SW004','CH002',6),
('SH003','SW005','CH005',2),
('SH004','SW002','CH007',2),
('SH005','SW003','CH008',6),
('SH006','SW006','CH009',5),
('SH007','SW007','CH010',4),
('SH007','SW010','CH010',3),
('SH008','SW010','CH002',2),
('SH009','SW008','CH005',1),
('SH010','SW009','CH003',1),
('SH011','SW009','CH004',2),
('SH011','SW001','CH006',3),
('SH012','SW002','CH007',4),
('SH012','SW003','CH008',5),
('SH013','SW004','CH002',6),
('SH013','SW005','CH004',3),
('SH013','SW007','CH002',4),
('SH014','SW006','CH003',4),
('SH014','SW009','CH001',3),
('SH015','SW003','CH006',3),
('SH015','SW002','CH007',2),
('SH015','SW001','CH008',2)

SELECT * FROM SalesTransactionDetailEJ