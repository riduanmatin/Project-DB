USE SandwEJ

INSERT INTO StaffEJ VALUES
('ST001', 'Babang abang', 'Male', 2000000, '082269696969'),
('ST002', 'Gorgc Janno', 'Male', 2100000, '082233445566'),
('ST003', 'Abeng Bengbeng', 'Male', 2200000, '082244556677'),
('ST004', 'Kocak Lutin', 'Male', 2300000, '082255667788'),
('ST005', 'Abangnya Matin', 'Male', 2400000, '082266778899'),
('ST006', 'Nina Dobrev', 'Female', 2500000, '082242002345'),
('ST007', 'Gal Gadot', 'Female', 2400000, '082212345678'),
('ST008', 'Kendall Jenner', 'Female', 2400000, '082287654321'),
('ST009', 'Ini Cewek', 'Female', 2450000, '082277889966'),
('ST010', 'Camilla Cabello', 'Female', 2300000, '082288112233')

--TRUNCATE TABLE StaffEJ

SELECT * FROM StaffEJ

INSERT INTO ChefEJ VALUES
('CH001', 'Anthony Bourdain', 'Expert'),
('CH002', 'Raihan Naufal', 'Expert'),
('CH003', 'Gordon Ramsay', 'Beginner'),
('CH004', 'Wolfgang Puck', 'Expert'),
('CH005', 'Marco Pierre', 'Advance'),
('CH006', 'Chef Juna', 'Beginner'),
('CH007', 'Chef Arnold', 'Advance'),
('CH008', 'Thomas Keller', 'Expert'),
('CH009', 'Emeril Lagasse', 'Expert'),
('CH010', 'Charlie Trotter', 'Beginner')

SELECT * FROM ChefEJ

INSERT INTO CustomerEJ VALUES
('CS001', 'Willi Wonka', 'Male', '1928-09-02', '082211223344'),
('CS002', 'Abidin Abadon', 'Male', '2000-10-10', '082222334455'),
('CS003', 'Keanu Reeves', 'Male', '1964-09-02', '082233445566'),
('CS004', 'Tuan Crab' , 'Male', '1996-11-30', '082244556677'),
('CS005', 'Travis Scott', 'Male', '1985-04-30', '082255667788'),
('CS006', 'Ariana Grande', 'Female', '1993-06-26', '082299767643'),
('CS007', 'Billie Eilish', 'Female', '2001-12-18', '082288776655'),
('CS008', 'Dua Lipa', 'Female', '1995-08-22', '082277665544'),
('CS009', 'Pevita Pearce', 'Female', '1992-10-06', '082266554433'),
('CS010', 'Isyana Sarasvati', 'Female', '1993-05-02', '082255443322')

SELECT * FROM CustomerEJ

INSERT INTO VendorEJ VALUES
('VE001', 'Cavanagh Company', 'Jl. Puri Agung Mal Puri Indah, Dki Jakarta', '021726023612', 'Cavanagh@gmail.com'),
('VE002', 'Pita Land Inc', 'Jl. Kalibata Raya Stasiun Kereta Api, Dki Jakarta', '021661153322', 'Pitalandofc@gmail.com'),
('VE003', 'Stroehmann Bakeries Llc', 'Jl. Ancol Barat III No. 1-2, DKI Jakarta', '021520196544', 'Stroehmans@gmail.com'),
('VE004', 'Sweetery Inc', 'Jl. Bulungan 76 Blok M Plaza, Dki Jakarta', '022421991433', 'Sweeteryinc@gmail.com'),
('VE005', 'Winterport CO', 'Psr. Regional Tanah Abang Bl, Dki Jakarta', '021691523167', 'winterportco@gmail.com'),
('VE006', 'Pine River Dairy Inc', 'Jl. Bahagia 41, Sumatera Utara', '021669175978', 'pineriver@gmail.com'),
('VE007', 'Veggieland Inc', 'Jl. Menteng Raya 31, Dki Jakarta', '021345514288', 'Veggielandinc@gmail.com'),
('VE008', 'Apples & Pcs', 'Jl. Tmn Suropati 2, Dki Jakarta', '021593837685', 'applepcsco@gmail.com'),
('VE009', 'Vermont Morning Company', 'Jl. Suka Mulia 17 C, Sumatera Utara', '021568148265', 'vermorning@gmail.com'),
('VE010', 'Swhusky Inc', 'Jl. MH Thamrin Menara Thamrin, Dki Jakarta', '021530723476', 'swhuskyco@gmail.com')

SELECT * FROM VendorEJ

INSERT INTO IngredientEJ VALUES
('IG001', 'Roti', 15000),
('IG002', 'Bacon', 20000),
('IG003', 'Beef Patty', 30000),
('IG004', 'Selada', 10000),
('IG005', 'Mayonaise', 10000),
('IG006', 'Saus Sambal', 5000),
('IG007', 'Sosis', 15000),
('IG008', 'Telur', 15000),
('IG009', 'Salmon', 25000),
('IG010', 'Tuna', 20000)

SELECT * FROM IngredientEJ

INSERT INTO SandwichEJ VALUES
('SW001', 'Cheese & Egg Sandwich' , 'Melt Cheese',30000),
('SW002', 'Black Pepper Sandwich', 'Black Pepper', 30000),
('SW003', 'Chicken & Ham Sandwich', 'Ketchup', 50000),
('SW004', 'Beef Teriyaki Sandwich', 'Teriyaki', 350000),
('SW005', 'Mushroom & Egg Sandwich', 'Mushroom', 35000),
('SW006', 'Sausage Sandwich', 'Mayonaise', 30000),
('SW007', 'Sandwich Mozarella', 'Cheese', 90000),
('SW008', 'Chicken Bolognese', 'Bolognese', 30000),
('SW009', 'Tuna Sandwich', 'Mayonaise', 40000),
('SW010', 'Salmon Sandwich', 'Mayonaise', 50000)

SELECT * FROM SandwichEJ