create database Siatkowka_MySQL DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;
use Siatkowka_MySQL;
create table Pozycje
(
	Id_p int primary key auto_increment,
	Nazwa varchar(20)
);
create table Trenerzy
(
	Id_t int primary key auto_increment,
	Imie varchar(20),
	Nazwisko varchar(20)	
);
create table Druzyny
(
	Id_d int primary key auto_increment,
	Nazwa varchar(20),
	Miasto varchar(20),
	Id_t int,
	UNIQUE (Id_t),
	FOREIGN KEY (Id_t) references Trenerzy (Id_t)
);
create table Gracze
(
	Id_g int primary key auto_increment,
	Imie varchar(20),
	Nazwisko varchar(20),
	Wzrost int,
	Atak int,
	Blok int,
	Id_d int,
	FOREIGN KEY (Id_d) references Druzyny (Id_d),
	Id_p int,
	FOREIGN KEY (Id_p) references Pozycje (Id_p)
);
create table Mecze
(
	Id_m int primary key auto_increment,
	Id_d1 int,
	FOREIGN KEY (Id_d1)	references Druzyny (Id_d),
	Wynik1 int,
	Id_d2 int,
	FOREIGN KEY (Id_d2)	references Druzyny (Id_d),
	Wynik2 int,
	Data date
);

insert into Pozycje (Nazwa) values
('atakuj�cy'),
('przyjmuj�cy'),
('rozgrywaj�cy'),
('�rodkowy'),
('libero');

insert into trenerzy (Imie,Nazwisko) values ('Vital','Heynen');
insert into trenerzy (Imie,Nazwisko) values ('Nikola','Grbi�');
insert into trenerzy (Imie,Nazwisko) values ('Micha�','Winiarski');
insert into trenerzy(imie,nazwisko) values ('Luke','Reynolds');
insert into trenerzy (Imie, Nazwisko) values ('Igor','Kolakovich');
insert into trenerzy (Imie,Nazwisko) values ('Andrea','Anastasi');
insert into trenerzy (Imie,Nazwisko) values ('Andrzej','Kowal');
insert into Trenerzy (imie, nazwisko) values ('Grzegorz', 'S�aby');
insert into trenerzy (Imie, Nazwisko) values ('Micha�','Gogol');
insert into Trenerzy(imie,nazwisko) values ('Alberto','Giulani');
insert into trenerzy (Imie,Nazwisko) values ('Dariusz','Frykowski');
insert into trenerzy (Imie,Nazwisko) values ('Marcelo','Fronckowiak');
Insert into trenerzy (Imie, Nazwisko) values ('Krzysztof','Stelmach');
Insert into trenerzy (Imie, Nazwisko) values ('Jakub','Bednaruk');

insert into Druzyny (Nazwa, Miasto, Id_t) values
('Zaksa','K�dzierzyn-Ko�le',2),
('Trefl','Gda�sk',3),
('Jastrz�bski W�giel','Jastrz�bie Zdr�j',4),
('Aluron Virtu','Zawiercie',5),
('Verva','Warszawa',6),
('�lepsk Malow','Suwa�ki',7),
('GKS','Katowice',8),
('Skra','Be�chat�w',9),
('Asseco Resovia','Rzesz�w',10),
('Cerrad Enea','Radom',11),
('Cuprum','Lubin',12),
('Stal','Nysa',13),
('MKS','B�dzin',NULL);

insert into gracze (Imie,Nazwisko,Wzrost,Atak,Blok,Id_d,Id_p) values 
('Pawe�','Zatorski',184,328,304,1,5),
('�ukasz','Kaczmarek',204,354,325,1,1),
('Jakub','Kochanowski',199,360,335,1,4),
('Krzysztof','Rejno',203,355,330,1,4),
('Benjamin','Toniutti',183,333,320,1,3),
('Piotr','�ukasik',208,350,325,1,2),
('Adrian','Staszewski',196,243,328,1,2),
('Bart�omiej','Kluth',209,350,340,1,1),
('Aleksander','�liwka',198,342,332,1,2),
('Kamil','Semeniuk',194,350,330,1,2),
('David','Smith',201,348,332,1,4),
('Rafa�','Prokopczuk',188,335,320,1,3),
('Mateusz','Zawalski',197,347,328,1,4),
('Korneliusz','Banach',185,310,290,1,5);
 
insert into gracze (Imie,Nazwisko,Wzrost,Atak,Blok,Id_d,Id_p) values 
('Micha�','Winiarski',201,355,325,2,4),
('Maciej','Olenderek',178,316,300,2,5),
('Seweryn','Lipi�ski',199,360,335,2,4),
('Jordan','Zaleszczyk',203,340,330,2,4),
('Fabian','Majcherski',172,305,295,2,5),
('Mateusz','Mika',206,352,325,2,2),
('Maciej','Olenderek',178,316,300,2,5),
('Karol','Urbanowicz',200,357,300,2,4),
('Mateusz','Janikowski',201,346,320,2,2),
('Moritz','Reichert',195,350,330,2,2),
('Kewin','Sasak',208,355,330,2,1),
('Marcin','Janusz',191,330,316,2,3),
('�ukasz','Kobuz',194,330,316,2,3),
('Mariusz','Wlaz�y',194,365,340,2,1),
('Bart�omiej','Lipi�ski',201,345,340,2,2);

insert into gracze (imie,nazwisko,wzrost,atak,blok,Id_d,Id_p)values
('Jakub','Bucki',197,343,324,3,1),
('Mohammed','AlHachdadi',200,370,345,3,1),
('Jakub','Popiwczak',180,320,310,3,5),
('Szymon','Biniek',180,320,310,3,5),
('�ukasz','Wi�niewski',198,343,323,3,4),
('Jurij','Gladyr',202,360,330,3,4),
('Micha�','Szalacha',202,365,335,3,4),
('Patryk','Cichosz-Dzyga',210,345,320,3,4),
('Lukas','Kampa',193,340,314,3,3),
('Eemi','Tervaportti',193,338,317,3,3),
('Yacine','Louati',198,345,320,3,2),
('Micha�','Gier�ot',206,360,330,3,2),
('Stanis�aw','Wawrzy�czyk',200,350,332,3,2),
('Tomasz','Fornal',200,350,330,3,2),
('Rafa�','Szymura',197,345,320,3,2);

Insert into Gracze (Imie, Nazwisko, Wzrost, Atak, Blok, Id_d, Id_p) values
('Gjorgi' , 'Gjorgiev' , 197 , 340 , 312 , 4 , 3),
('Michal' , 'Zurek' , 181 , 320 , 315 , 4 , 5),
('Patryk' , 'Niemiec' , 202 , 353 , 316 , 4 , 4),
('Mateusz' , 'Malinowski' , 198 , 349 , 331 , 4 , 1),
('Dominik' , ' Depowski' , 200 , 348 , 335 , 4 , 2),
('Krzystof' , 'Andrzejewski' , 180 , 315 , 315 , 4 , 5),
('Marcin' , 'Kania' , 203 , 352 , 335 , 4 , 4),
('Grzegorz ' , 'Bociek' , 195 , 341 , 321 , 4 , 1),
('Gualberto' , 'Flavio' , 200 , 356, 312 , 4 , 4),
('Maximiliano' , 'Cavanna' , 188 , 333 , 325 , 4 , 3),
('Pawe�' , 'Halaba' , 194 , 354 , 325 , 4 , 2),
('Piotr ' , 'Orczyk' , 198 , 355 , 325 , 4 , 2),
('Garrett' , 'Muagututia' , 196 , 359 , 312 , 4 , 2);

insert into gracze (Imie,Nazwisko,Wzrost,Atak,Blok,Id_d,Id_p) values 
('Jan','Kr�l',198,340,323,5,1),
('Jakub','Ziobrowski',202,360,335,5,1),
('Micha�','Superlak',206,355,332,5,1),
('Bartosz','Kwolek',193,345,328,5,2),
('Angel Trinado','Haro',195,342,325,5,3),
('Andrzej','Wrona',206,360,340,5,4),
('Piotr','Nowakowski',198, 256,145,5,4),
('Micha�','Koz�owski',203,349,330,5,2),
('Artur','Szalpuk',201,355,332,5,2),
('Jan','Fornal',192,342,328,5,2), 
('Micha�','Koz�owski',203,349,330,5,4);

insert into gracze (Imie,Nazwisko,Wzrost,Atak,Blok,Id_d,Id_p) values 
('Marcin','Walinski',195,339,304,6,2),
('Patryk','Szwardzki',195,354,325,6,1),
('�ukasz','Kaczorowski',195,350,335,6,1),
('Tomas','Rousseax',199,360,330,6,2),
('Kevin','Klinkenberg',197,345,320,6,2),
('Sebastian','Ward',204,355,325,6,4),
('Bart�omiej','Boladz',204,350,328,6,1),
('Andreas','Takvam',201,364,340,6,4),
('�ukasz','Rudzewicz',201,364,332,6,4),
('Cezary','Sapinski',203,350,330,6,4),
('Pawe�','Filipowicz',189,318,332,6,5),
('Kacper','Gonciarz',192,320,320,6,3),
('Mateusz','Sacharewicz',198,320,328,6,4),
('Mateusz','Czunkiewicz',187,316,290,6,5),
('Jakub','Rohnka',195,345,332,6,2),
('Josua','Tuaniga',195,345,320,6,3);

Insert into Gracze (Imie, Nazwisko, Wzrost, Atak, Blok, Id_d, Id_p) values
('Jan', 'Firlej', 188, 356, 321, 7 , 3),
('Jakub', 'Nowakowski', 193, 355, 324, 7, 3),
('Kamil', 'Drzazga', 210, 357, 327, 7, 4),
('Emanuel', 'Kohut', 204, 355, 325, 7, 4),
('Jan', 'Nowakowski', 202, 353, 322, 7, 4),
('Mi�osz', 'Zniszczo�', 201, 349, 320, 7, 4),
('Adrian', 'Buchowski', 194, 345, 321, 7, 2),
('Kamil', 'Kwasowski', 197, 346, 323, 7, 2),
('S�awomir', 'Stolc', 198, 347, 326, 7, 2),
('Jakub', 'Szyma�ski', 200, 353, 328, 7, 2),
('Jakub', 'Jarosz', 197, 350, 325, 7, 1),
('Wiktor', 'Musia�', 194, 346, 323, 7, 1),
('Dawid', 'Og�rek', 184, 352, 326, 7, 5),
('Dustin', 'Watten', 183, 340, 315, 7, 5);

Insert into Gracze (Imie, Nazwisko, Wzrost, Atak, Blok, Id_d, Id_p) values
('Bartosz' , 'Filipiak' , 198 , 325 , 320 , 8 , 4),
('Taylor' , 'Sander' , 172 , 315 , 305 , 8 , 5),
('Karol' , 'K�os' , 190 , 336 , 316 , 8 , 5),
('Sebastian' , 'Adamczyk' , 200 , 347 , 332 , 8 , 2),
('Mariusz' , 'Schamlewski' , 197 , 355 , 335 , 8 , 4),
('Milan' , 'Kati�' , 198 , 345 , 320 , 8 , 3),
('Milad' , 'Ebadipour' , 196 , 355 , 335 , 8 , 4),
('Dusan' , 'Petkovic' , 195 , 341 , 327 , 8 , 2),
('Grzegorz' , '�omacz' , 198 , 353 , 329 , 8 , 2),
('Kacper' , 'Piechocki' , 193 , 320 , 315 , 8 , 3),
('Mateusz' , 'Bieniek' , 195 , 350 , 325 , 8 , 2),
('Mihaljo' , 'Miti�' , 203 , 325 , 347 , 8 , 1),
('Miko�aj' , 'Sawicki' , 200 , 341 , 342 , 8 , 4);

insert into Gracze (Imie,Nazwisko,Wzrost,Atak,Blok, Id_d,Id_p) values ('Bart�omiej','Krulicki',205 ,355 , 330 ,9,4),
('Simone','Parodi',195 ,341 ,325 ,9,2),
('Nicolas','Szerszen',195 ,330 ,310 ,9,2),
('Damian','Domaga�a',199 ,330 ,319 ,9,1),
('Fabian','Drzyzga',196 ,335,325,9,3),
('Pawe�','Woicki',182 , 310 ,300 ,9,3) ,
('Micha�', 'Potera',183 , 317 ,305 ,9,5),
('Rafa�','Buszek',196 ,348 ,327 , 9,2),
('Jeffrey','Jendryk',205, 360, 340 , 9,4),
('Piotr','Hain',207 , 355 , 340 , 9, 4),
('Klemen','Cebulj',202,325 ,315, 9,2),
('Karol','Butryn',193, 330 ,315,9,1),
('Bartosz','Maria�ski',187,315,300,9,5),
('Robert', 'Taht',192,313,305,9,2),
('Timo', 'Tammemaa',204,344,320,9,4);

insert into gracze (Imie,Nazwisko,Wzrost,Atak,Blok,Id_d,Id_p) values 
('Dawid','Dryja',201,355,350,10,1), 
('Micha�','Ostrowski',203,330,346,10,1), 
('Micha�','K�dzierski',194,345,346,10,1), 
('Bart�omiej','Grzechnik',200,345,345,10,1), 
('Dawid','Konarski',198,355,365,10,1), 
('Lucas','Eduardo',195,348,324,10,2), 
('Daniel','G�sior',200,346,345,10,3), 
('Viktor','Yosifov',205,342,342,10,4), 
('Bartosz','Zrajkowski',199,345,341,10,5), 
('Mateusz','Mas�owski',199,346,342,10,3), 
('Artur','Pasi�ski',198,353,343,10,2), 
('Brenden','Sander',202,351,344,10,3), 
('Bartosz','Firszt',195,345,346,10,1), 
('Macjej','Nowowsiak',194,356,350,10,5),
('Kuba','Sadkowski',192,347,352,10,3);

insert into gracze (Imie,Nazwisko,Wzrost,Atak,Blok,Id_d,Id_p) values 
('Kamil','Maruszczyk',191,345,314,11,2),
('Dawid','Gunia',203,348,319,11,4),
('Wojciech','fernes',194,358,330,11,2),
('Bart�omiej','Zawalski',204,350,328,11,4),
('Adam','Lorenc',197,355,340,11,1),
('Pawe�','Pietraszko',203,352,330,11,4),
('Daniel','Muniz de Oliveira',194,355,335,11,2),
('Szymon','Jakubiszak',208,370,335,11,2),
('Miguel','Rodrigues',192,334,315,11,3),
('Mariusz','Magnuszewski',194,341,320,11,3),
('Ronald','Zamora',200,375,355,11,1),
('Przemys�aw','Smoli�ski',201,350,330,11,4),
('Bartosz','Mako�',176,315,300,11,5),
('Kamil','Szymura',185,320,310,11,5);

Insert into Gracze (Imie, Nazwisko, Wzrost, Atak, Blok, Id_d, Id_p) values
('Maciej' , 'Zajder' , 202 , 345 , 330 , 12 , 4),
('Kamil' , 'Dembiec' , 178 , 315 , 305 , 12 , 5),
('Micha�' , 'Ruciak' , 190 , 336 , 316 , 12 , 5),
('Kamil' , 'D�ugosz' , 200 , 347 , 332 , 12 , 2),
('Mariusz' , 'Schamlewski' , 197 , 355 , 335 , 12 , 4),
('Marcin' , 'Komenda' , 198 , 345 , 320 , 12 , 3),
('Bart�omiej' , 'Lema�ski' , 217 , 355 , 335 , 12 , 4),
('Bartosz' , 'Bu�ko' , 195 , 341 , 327 , 12 , 2),
('Zbigniew' , 'Bartman' , 198 , 363 , 329 , 12 , 2),
('Patryk' , 'Szczurek' , 193 , 333 , 315 , 12 , 3),
('�ukasz' , '�apszy�ski' , 195 , 350 , 325 , 12 , 2),
('Wassim' , 'Ben Tara' , 203 , 365 , 345 , 12 , 1),
('Moustapha' , 'Mbaye' , 198 , 361 , 342 , 12 , 4);
