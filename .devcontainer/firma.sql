drop database if exists firma;
create database firma;
use firma;

create table gehalt (
  geh_stufe varchar(4),
  betrag smallint not null,
  constraint Schluessel_Gehalt primary key (geh_stufe)
); 

create table abteilung (
  abt_nr char(3), 
  name char(20),
  constraint Schluessel_Abteilung primary key (abt_nr)
);

create table personal ( 
   pnr integer(4),
   name char(20) not null,
   vorname char(20),
   geh_stufe varchar(4),
   abt_nr char(3),
   krankenkasse char(3),
   constraint Schluessel_Personal primary key (pnr)
);

create table kind (
  pnr integer(4),
  k_name char(20) not null,
  k_vorname char(20),
  k_geb smallint
);

create table praemie (
  pnr integer(4),
  p_betrag smallint not null
);
   
create table maschine ( 
    mnr integer(4),
    name char(20) not null,
    pnr integer(4),
    ansch_datum date,
    neuwert integer,
    zeitwert integer,
    constraint Schluessel_Maschine primary key (mnr)
);

insert into gehalt (Geh_Stufe, Betrag) VALUES ('it1', 2523);
insert into gehalt (Geh_Stufe, Betrag) VALUES ('it2', 2873);
insert into gehalt (Geh_Stufe, Betrag) VALUES ('it3', 3027);
insert into gehalt (Geh_Stufe, Betrag) VALUES ('it4', 3341);
insert into gehalt (Geh_Stufe, Betrag) VALUES ('it5', 3782);

insert into abteilung (abt_nr, Name) VALUES ('d11', 'Verwaltung');
insert into abteilung (abt_nr, Name) VALUES ('d12', 'Projektierung');
insert into abteilung (abt_nr, Name) VALUES ('d13', 'Produktion');
insert into abteilung (abt_nr, Name) VALUES ('d14', 'Lagerung');
insert into abteilung (abt_nr, Name) VALUES ('d15', 'Verkauf');

insert into personal (PNR, Name, Vorname, Geh_Stufe, Abt_Nr, Krankenkasse)
 VALUES  (167, 'Krause', 'Gustav', 'it3', 'd12', 'dak');
insert into personal (PNR, Name, Vorname, Geh_Stufe, Abt_Nr, Krankenkasse)
 VALUES  (168, 'Hahn', 'Egon', 'it4', 'd11', 'bek');
insert into personal (PNR, Name, Vorname, Geh_Stufe, Abt_Nr, Krankenkasse)
 VALUES  (123, 'Lehmann', 'Karl', 'it3', 'd13', 'aok');
insert into personal (PNR, Name, Vorname, Geh_Stufe, Abt_Nr, Krankenkasse)
 VALUES  (133, 'Schulz', 'Harry', 'it1', 'd13', 'aok');
insert into personal (PNR, Name, Vorname, Geh_Stufe, Abt_Nr, Krankenkasse)
 VALUES  (124, 'Meier', 'Richard', 'it5', 'd13', 'aok');
insert into personal (PNR, Name, Vorname, Geh_Stufe, Abt_Nr, Krankenkasse)
 VALUES  (125, 'Wutschke', 'Oskar', 'it3', 'd13', 'aok');
insert into personal (PNR, Name, Vorname, Geh_Stufe, Abt_Nr, Krankenkasse)
 VALUES  (126, 'Schroeder', 'Karl-Heinz', 'it4', 'd13', 'aok');
insert into personal (PNR, Name, Vorname, Geh_Stufe, Abt_Nr, Krankenkasse)
 VALUES  (227, 'Wagner', 'Walter', 'it2', 'd13', 'dak');
insert into personal (PNR, Name, Vorname, Geh_Stufe, Abt_Nr, Krankenkasse)
 VALUES  (234, 'Krohn', 'August', 'it4', 'd13', 'aok');
insert into personal (PNR, Name, Vorname, Geh_Stufe, Abt_Nr, Krankenkasse)
 VALUES  (135, 'Tietze', 'Lutz', 'it2', 'd13', 'tkk');
insert into personal (PNR, Name, Vorname, Geh_Stufe, Abt_Nr, Krankenkasse)
 VALUES  (156, 'Hartmann', 'Juergen', 'it1', 'd14', 'bek');
insert into personal (PNR, Name, Vorname, Geh_Stufe, Abt_Nr, Krankenkasse)
 VALUES  (127, 'Ehlert', 'Siegfried', 'it1', 'd15', 'kkh');
insert into personal (PNR, Name, Vorname, Geh_Stufe, Abt_Nr, Krankenkasse)
 VALUES  (157, 'Schultze', 'Hans', 'it1', 'd14', 'aok');
insert into personal (PNR, Name, Vorname, Geh_Stufe, Abt_Nr, Krankenkasse)
 VALUES  (159, 'Osswald', 'Petra', 'it2', 'd15', 'bak');
insert into personal (PNR, Name, Vorname, Geh_Stufe, Abt_Nr, Krankenkasse)
 VALUES  (137, 'Haase', 'Gert', 'it1', 'd11', 'kkh');
insert into personal (PNR, Name, Vorname, Geh_Stufe, Abt_Nr, Krankenkasse)
 VALUES  (134, 'Meier', 'Gerd', 'it5', 'd11', 'tkk');

insert into kind (pnr, k_name, k_vorname, k_geb)  VALUES (167, 'Krause', 'Fritz', 1997);
insert into kind (pnr, k_name, k_vorname, k_geb)  VALUES (167, 'Krause', 'Ida', 1999);
insert into kind (pnr, k_name, k_vorname, k_geb) VALUES (123, 'Lehmann', 'Sven', 2002);
insert into kind (pnr, k_name, k_vorname, k_geb) VALUES (123, 'Lehmann', 'Karl', 2004);
insert into kind (pnr, k_name, k_vorname, k_geb) VALUES (168, 'Hahn', 'Hans', 1993);
insert into kind (pnr, k_name, k_vorname, k_geb) VALUES (133, 'Wendler', 'Klaus', 1996);
insert into kind (pnr, k_name, k_vorname, k_geb) VALUES (124, 'Meier', 'Gustav', 1999);
insert into kind (pnr, k_name, k_vorname, k_geb) VALUES (124, 'Meier', 'Susi', 2002);
insert into kind (pnr, k_name, k_vorname, k_geb) VALUES (124, 'Meier', 'Dirk', 2004);

insert into praemie (PNR, P_Betrag) VALUES (227, 550);
insert into praemie (PNR, P_Betrag) VALUES (227, 610);
insert into praemie (PNR, P_Betrag) VALUES (227, 250);
insert into praemie (PNR, P_Betrag) VALUES (168, 600);
insert into praemie (PNR, P_Betrag) VALUES (168, 700);
insert into praemie (PNR, P_Betrag) VALUES (124, 250);
insert into praemie (PNR, P_Betrag) VALUES (234, 600);
insert into praemie (PNR, P_Betrag) VALUES (234, 500);
insert into praemie (PNR, P_Betrag) VALUES (127, 300);

insert into maschine (MNR, Name, PNR, Ansch_Datum, Neuwert, Zeitwert)
 VALUES (1, 'Bohrmaschine', 123, '1999-02-01', 30000, 15000);
insert into maschine (MNR, Name, PNR, Ansch_Datum, Neuwert, Zeitwert)
 VALUES (2, 'Bohrmaschine', 123, '2002-07-01', 30000, 18000);
insert into maschine (MNR, Name, PNR, Ansch_Datum, Neuwert, Zeitwert)
 VALUES (3, 'Fraesmaschine', 124,'1998-01-04', 40000, 10000);
insert into maschine (MNR, Name, PNR, Ansch_Datum, Neuwert, Zeitwert)
 VALUES (11, 'Hobelmaschine', 127, '2002-01-15', 29000, 19000);
insert into maschine (MNR, Name, PNR, Ansch_Datum, Neuwert, Zeitwert)
 VALUES (12, 'Drehbank', 126, '1999-08-01', 31000, 21000);
insert into maschine (MNR, Name, PNR, Ansch_Datum, Neuwert, Zeitwert)
 VALUES (14, 'Hobelmaschine', 123, '1998-11-01', 32000, 22000);
insert into maschine (MNR, Name, PNR, Ansch_Datum, Neuwert, Zeitwert)
 VALUES (16, 'Drehbank', 134, '2001-11-25', 32000, 23000);
insert into maschine (MNR, Name, PNR, Ansch_Datum, Neuwert, Zeitwert)
 VALUES (17, 'Bohrmaschine', 127, '2003-02-01', 31000, 25000);
