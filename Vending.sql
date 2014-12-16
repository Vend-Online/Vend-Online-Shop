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
	BrugerId int constraint Bruger_BrugerId_PK primary key Not Null,
	UserName varchar(30) not null,
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
	ProduktId int constraint Produkt_ProduktId_PK primary key Not Null,
	ProduktName varchar(30) not null,
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

--if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'Ordre')
--	begin
--	create table Ordre(
--	OrdreId int constraint Ordre_OrdreId_PK primary key identity (1, 1) Not Null,

--	)
--	print 'Tabellen "Ordre" er nu oprettet'
--	end	
--else
--	begin
--	print 'Tabellen "Ordre" eksisterer allerede'
--	end
--go

if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'BrugerOrdre')
	begin
	create table BrugerOrdre(
	BOId int constraint BrugerOrdre_BOId_PK primary key identity (1,1) Not Null,
	BOB_FK int Not Null,
	BOP_FK int Not Null,

	ProduktName varchar(30) Not Null

	foreign key (BOB_FK) references Bruger(BrugerId),
	foreign key (BOP_FK) references Produkt(ProduktId)
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
	(160, 'Admin', '1234', 'Admin', 31502004, 3650),
	(161, 'Gert', '1234', 'User', 31502005, 4000),
	(162, 'Guest', '1234', 'Guest', 31502006, 2770)

go


insert into Lev values
	(1, 'Coca Cola', 37649185, 4000)

go


insert into Produkt values
	(134, 'Cola Cola',1,9,1)

go

insert into BrugerOrdre values(160, 134,  'Coca Cola')

go


select * from Produkt
select * from Bruger
select * from BrugerOrdre
select * from PostNrBy
select * from Lev