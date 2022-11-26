# ljestve (hash) je komentar i on se ne izvodi
# Izvođenje naredbi na serveru
# Otvoriti CMD
# Zaljepiti sljedeću naredbu bez prvog hash znaka
# c:\xampp\mysql\bin\mysql -uroot < C:\Users\Tonko\Documents\edunovapp26\SQL\vjezbe\sql_vjezbe\knjiznica.sql

drop database if exists knjiznica;
##Klijent pokrenuti s --default-character-set=utf8 
create database knjiznica DEFAULT CHARACTER SET utf8  DEFAULT COLLATE utf8_general_ci;
use knjiznica;

create table autor(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    datumrodenja datetime
);

create table izdavac(
    sifra int,
    naziv varchar(50),
    aktivan boolean
);

create table mjesto(
    sifra int,
    naziv varchar(50),
    postanskiBr varchar(10),
    drzava varchar(50)
);

create table katalog(
    sifra int,
    autor int,
    naslov varchar(50),
    izdavac int,
    mjesto int
);

#slijedi alter table niz naredbi radi novog unosa tablica sa vrijednostima.
#slijedi drop table niz naredbi radi brisanja tablica i novog unosa tablica sa vrijednostima. inače se unos radi za vrijeme kreiranja tablice

alter table autor change sifra sifra int not null;

drop table autor;
drop table izdavac;
drop table mjesto;
drop table katalog;

create table autor(
    sifra int not null primary key,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    datumrodenja datetime
);

create table izdavac(
    sifra int not null primary key,
    naziv varchar(50) not null,
    aktivan boolean
);

create table mjesto(
    sifra int not null primary key,
    naziv varchar(50) not null,
    postanskiBr varchar(10)
    
);

create table katalog(
    sifra int not null primary key,
    autor int,
    naslov varchar(100) not null,
    izdavac int,
    mjesto int,
    cijena decimal(18,2)
);

alter table katalog add foreign key (autor) references autor(sifra);
alter table katalog add foreign key (izdavac) references izdavac(sifra);
alter table katalog add foreign key (mjesto) references mjesto(sifra);

create index naziv_index on katalog(naslov);

#insert odnosno unos podataka

#mjesto

insert into mjesto (sifra, naziv, postanskiBr)
            values (1, 'Zagreb', 10000);

insert into mjesto (sifra, naziv, postanskiBr)
            values (2, 'Rijeka', 51000);

insert into mjesto (sifra, naziv, postanskiBr)
            values (3, 'Osijek', 31000);

#autor

insert into autor (sifra, ime, prezime, datumrodenja)
           values (1, 'Ivana', 'Brlić Mažuranić', 1874-04-18);

insert into autor (sifra, ime, prezime, datumrodenja)
           values (2, 'August', 'Šenoa', 1838-11-14);

insert into autor (sifra, ime, prezime, datumrodenja)
           values (3, 'Robert', 'Perišić', null);

#izdavač





