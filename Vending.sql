Use Master
go

drop database Vending
go


if not exists (select * from sys.databases where name = 'Vending')
	begin
	create database Vending
	print 'Databasen "Vending" er nu oprettet'
	end
else
	begin
	print 'Databasen "Vending" eksisterer allerede'
	end
go

use Vending
go

if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'PostNrBy')
	begin
	create table PostNrBy(
	Postnr int constraint PostNrBy_Postnr_PK primary key Not Null,
	ByNavn varchar (50) not null
	)
	print 'Tabellen "PostNrBy" er nu oprettet'
	end	
else
	begin
	print 'Tabellen "PostNrBy" eksisterer allerede'
	end
go

if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'Bruger')
	begin
	create table Bruger(
	UserName_PK varchar(30) primary key,
	UserPwd varchar(30) not null,
	UserType varchar(20) Not Null,
	CVR int not null,
	B_Postnr int not null,

	foreign key (B_Postnr) references Postnrby(Postnr)
	)
	print 'Tabellen "Bruger" er nu oprettet'
	end	
else
	begin
	print 'Tabellen "Bruger" eksisterer allerede'
	end
go

if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'Lev')
	begin
	create table Lev(
	LevId int constraint Lev_LevId_PK primary key Not Null,
	LevName varchar(30) not null,
	CVR int not null,
	L_Postnr int not null,

	foreign key (L_Postnr) references Postnrby(Postnr)
	)
	print 'Tabellen "Lev" er nu oprettet'
	end	
else
	begin
	print 'Tabellen "Lev" eksisterer allerede'
	end
go

if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'Produkt')
	begin
	create table Produkt(
	ProduktId int unique identity(1,1),
	Produkt_Name_PK varchar(50) primary key,
	Antal int not null,
	Pris int not null,
	P_Lev int not null,

	foreign key (P_Lev) references Lev(LevId)
	)
	print 'Tabellen "Produkt" er nu oprettet'
	end	
else
	begin
	print 'Tabellen "Produkt" eksisterer allerede'
	end
go

if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'BrugerOrdre')
	begin
	create table BrugerOrdre(
	BrugerOrdreId int unique identity(1,1),
	Bruger_Ordre_PK varchar(50) primary key,
	BrugerOrdre_FK varchar(30) Not Null,
	BrugerOrdreProdukt_FK varchar(50) Not Null,

	--ProduktName varchar(30) Not Null,

	foreign key (BrugerOrdre_FK) references Bruger(UserName_PK),
	foreign key (BrugerOrdreProdukt_FK) references Produkt(Produkt_Name_PK)
	)
	print 'Tabellen "ProduktOrdre" er nu oprettet'
	end	
else
	begin
	print 'Tabellen "ProduktOrdre" eksisterer allerede'
	end
go

if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'Indkøbskurv')
	begin
	create table Indkøbskurv(
	IndkøbskurvId int constraint Indkøbskurv_IndkøbskurvId_PK primary key Not Null,

	)
	print 'Tabellen "Indkøbskurv" er nu oprettet'
	end	
else
	begin
	print 'Tabellen "Indkøbskurv" eksisterer allerede'
	end
go

insert into PostNrBy values
	(2000, 'Frederiksberg'),
	(3650, 'Ølstykke'),
	(4000, 'Roskilde'),
	(2770, 'Kastrup'),
	(2300, 'København S')
go


insert into Bruger values
	('Admin', '1234', 'Admin', 31502004, 3650),
	('Gert', '1234', 'User', 31502005, 4000)
go


insert into Lev values
	(1, 'Carlsberg', 37649185, 4000),
	(2, 'Faxe Bryghus', 37649186, 3650),
	(3, 'Toms', 37649187, 2770),
	(4, 'KiMs', 37649188, 2300),
	(5, 'Stimirol', 37649189, 2000)
go


insert into Produkt values
	('Coca Cola',295,14,1),
	('Faxe Kondi', 323, 14,2),
	('Tuborg', 545, 14,1),
	('Snickers', 510, 13,3),
	('Sour Cream & Onion', 200, 13,4)

go

insert into BrugerOrdre values('y','Gert','Coca Cola')

go


select * from Produkt
select * from Bruger
select * from BrugerOrdre
select * from PostNrBy
select * from Lev