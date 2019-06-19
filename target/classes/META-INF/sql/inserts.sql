DROP TABLE IF EXISTS dzieci;
DROP TABLE IF EXISTS pracownicy;


CREATE TABLE pracownicy (
                          id serial primary key,
                          imie varchar not null,
                          nazwisko varchar not null
);

CREATE TABLE dzieci (
                      id SERIAL primary key,
                      imie varchar not null,
                      data_urodzenia date not null,
                      rodzic1id integer references pracownicy(id),
                      rodzic2id integer references pracownicy(id)
);

INSERT INTO pracownicy (id,imie,nazwisko) VALUES (1,'Orencjusz','Krawczyk');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (2,'Zdziebud','Mazur');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (3,'Jozue','Woźniak');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (4,'Waldebert','Mazur');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (5,'Amalberga','Zając');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (6,'Mariola','Zając');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (7,'Alodiusz','Król');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (8,'Tina','Wójcik');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (9,'Irmegarda','Krawczyk');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (10,'Strzeżysław','Król');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (11,'Elpin','Nowak');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (12,'Sędzisław','Dudek');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (13,'Filomen','Kaczmarek');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (14,'Zefiryna','Zając');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (15,'Oleksiy','Kowalczyk');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (16,'Wibert','Zając');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (17,'Serena','Król');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (18,'Alberta','Kowalczyk');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (19,'Benedykta','Dudek');
INSERT INTO pracownicy (id,imie,nazwisko) VALUES (20,'Ninomysł','Wójcik');

INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (1,'Cieszyrad','2005-05-21',19,NULL);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (2,'Aurelia','2000-09-07',7,4);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (3,'Magda','2013-02-23',13,1);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (4,'Eufemia','2005-08-29',3, NULL);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (5,'Więcerad','2004-09-16',2,2);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (6,'Matron','2002-09-23',1, NULL);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (7,'Teofila','2009-10-31',20, NULL);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (8,'Gościwuj','2015-09-04',8, NULL);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (9,'Symforiana','2013-02-05',10, NULL);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (10,'Dobrogniewa','2004-01-22', NULL,8);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (11,'Agatangel','2006-12-28',4,13);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (12,'Eufemia','2013-02-15',3,7);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (15,'Ozeasz','2010-09-26',8, NULL);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (16,'Liwiusz','2005-07-01',11,13);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (17,'Zygbert','2000-04-08',5,7);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (18,'Sabrina','2014-05-24',7, NULL);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (19,'Stosław','2009-01-17',2,3);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (20,'Sawin','2014-10-05',5, NULL);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (21,'Gaweł','2010-07-18',6,14);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (23,'Biezrząd','2009-03-07',6, NULL);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (24,'Charyzjusz','2003-11-19',20,5);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (25,'Sebastiana','2015-03-01',6,20);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (26,'Gereon','2007-08-19',6,20);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (27,'Ananiasz','2012-10-17',5, NULL);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (28,'Kancjanela','2010-09-17',11, NULL);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (29,'Sulibrat','2003-08-31',3,17);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (30,'Lucyliusz','2013-07-21',14, NULL);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (14,'Vlasta','2014-01-06', NULL, NULL);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (22,'Nestor','1998-12-27',4,11);
INSERT INTO dzieci (id,imie,data_urodzenia,rodzic1id,rodzic2id) VALUES (13,'Margarita','1998-12-30',5, NULL);