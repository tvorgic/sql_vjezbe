# ljestve (hash) je komentar i on se ne izvodi
# Izvođenje naredbi na serveru
# Otvoriti CMD
# Zaljepiti sljedeću naredbu bez prvog hash znaka
# c:\xampp\mysql\bin\mysql -uroot < C:\Users\Tonko\Documents\edunovapp26\SQL\vjezbe\sql_vjezbe\knjiznica.sql

drop database if exists knjiznica;
create database knjiznica;
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