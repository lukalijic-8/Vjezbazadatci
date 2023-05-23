drop database if exists salon_za_uljepsavanje;
create database salon_za_uljepsavanje;
use salon_za_uljepsavanje;
create table salon(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	adresa varchar(50),
	djelatnica int
);
create table djelatnica(
	sifra int not null primary key auto_increment,
	iban varchar(30),
	korisnik int,
	osoba int
);
create table korisnik(
	sifra int not null primary key auto_increment,
	usluga int not null,
	osoba int
);
create table usluga(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	cijena decimal(18,2) not null
);
create table osoba(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	e_mail varchar(100),
	datum_rođenja date
);


alter table salon add foreign key (djelatnica)
references djelatnica(sifra);

alter table djelatnica add foreign key (korisnik)
references korisnik(sifra);

alter table djelatnica add foreign key (osoba)
references osoba(sifra);

alter table korisnik add foreign key (osoba)
references osoba(sifra);

alter table korisnik add foreign key (usluga)
references usluga(sifra);