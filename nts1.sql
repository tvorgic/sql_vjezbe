# ljestve (hash) je komentar i on se ne izvodi
# Izvođenje naredbi na serveru
# Otvoriti CMD
# Zaljepiti sljedeću naredbu bez prvog hash znaka
# c:\xampp\mysql\bin\mysql -uroot < C:\Users\Tonko\Documents\edunovapp26\SQL\vjezbe\sql_vjezbe\nts1.sql

drop database if exists nts1;

##Klijent pokrenuti s --default-character-set=utf8 

create database nts1 DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
use nts1;

create table notes(
    id int primary key not null,
    body text,
    user_id int(11)
);

create table users(
  id int(11),
  name varchar(255),
  email varchar(255)
);