drop database if exists frizerski_salon;
create database frizerski_salon;
use frizerski_salon;
create table frizerski_salon(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	vlasnik varchar(50),
	djelatnica int,
	usluga varchar(50) not null
);
create table djelatnica(
	sifra int not null primary key auto_increment,
	frizerski_salon int not null,
	iban varchar(50),
	osoba int not null,
	korisnik int
);
create table korisnik(
	sifra int not null primary key auto_increment,
	kontakt varchar(100),
	usluga int,
	osoba int not null
);
create table usluga(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	cijena decimal(18,2) not null
);
create table osoba(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(60) not null,
	datum_rodenja date
);

alter table djelatnica add foreign key (frizerski_salon)
references frizerski_salon(sifra);

alter table djelatnica add foreign key (korisnik )
references korisnik(sifra);

alter table djelatnica add foreign key (osoba)
references osoba(sifra);

alter table korisnik add foreign key (osoba)
references osoba(sifra);

alter table korisnik add foreign key (usluga)
references usluga(sifra);

