# ljestve (hash) je komentar i on se ne izvodi
# Izvođenje naredbi na serveru
# Otvoriti CMD
# Zaljepiti sljedeću naredbu bez prvog hash znaka
# c:\xampp\mysql\bin\mysql -uroot < C:\Users\Tonko\Documents\edunovapp26\SQL\vjezbe\sql_vjezbe\kolokvij_vjezba_1.sql
# c:\xampp\mysql\bin\mysql -uroot < C:\Users\Tonko\Documents\edunovapp26\SQL\vjezbe\sql_vjezbe\kolokvij_vjezba_1.sql

drop database if exists kolokvij_vjezba_1;
##Klijent pokrenuti s --default-character-set=utf8 
create database kolokvij_vjezba_1 DEFAULT CHARACTER SET utf8  DEFAULT COLLATE utf8_general_ci;
use kolokvij_vjezba_1;


create table sestra(
    sifra int not null primary key auto_increment,
    introvertno boolean null,
    haljina varchar(31) not null,
    maraka  decimal(16,6) null,
    hlace varchar(46) not null,
    narukvica int not null
);

create table punac(
    sifra int not null primary key auto_increment,
    ogrlica int null,
    gustoca decimal(14,9) null,
    hlace varchar(41) not null
);
