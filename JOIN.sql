CREATE TABLE Db_Mahasiswa (
	NIM Varchar (10),
	Nama Varchar (30)
)

CREATE TABLE Db_Asal (
	NIM Varchar(10),
	AsalKota Varchar(15))
	
	
INSERT INTO Db_Mahasiswa (NIM,Nama)
VALUES ('2100015049','Wisnu Catur R'),
	   ('2100015041','Sindy Mei Marantika'),
	   ('2215015035','Hasan Darmawan'),
	   ('2100015051','Saiful Andika')
	   
INSERT INTO Db_Mahasiswa (NIM)
VALUES ('1800015053'),
	   ('2100015037')

INSERT INTO Db_Asal (NIM,AsalKota)
VALUES ('2100015049','Pasuruan'),
	   ('2100015041','Oku Timur'),
	   ('1800015053','Ciamis'),
	   ('2100015037','Bandung'),
	   ('2100015050','Kudus'),
	   ('2100015002','Bogor')
	   
INSERT INTO Db_Asal (NIM)
VALUES ('2200015023'),
	   ('2200015012')
	   
	   
	   
SELECT * FROM Db_Mahasiswa

-- INNER JOIN 
SELECT m.NIM, m.Nama, a.Asalkota 
FROM Db_Mahasiswa m
INNER JOIN Db_Asal a 
ON m.NIM = a.NIM

-- INNER JOIN With Order
SELECT m.NIM, m.Nama, a.Asalkota 
FROM Db_Mahasiswa m
INNER JOIN Db_Asal a 
ON m.NIM = a.NIM
ORDER by m.NIM

-- INNER JOIN With Order
SELECT m.NIM, m.Nama, a.Asalkota 
FROM Db_Mahasiswa m
INNER JOIN Db_Asal a 
ON m.NIM = a.NIM
ORDER by a.AsalKota DESC

-- LEFT JOIN 
SELECT m.NIM, m.Nama, a.Asalkota 
FROM Db_Mahasiswa m
LEFT JOIN Db_Asal a 
ON m.NIM = a.NIM

-- RIGHT JOIN 
SELECT m.NIM, m.Nama, a.Asalkota 
FROM Db_Mahasiswa m
RIGHT JOIN Db_Asal a 
ON m.NIM = a.NIM
 