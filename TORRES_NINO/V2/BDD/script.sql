CREATE TABLE Utilisateur(
   ID_user INT auto_increment,
   nom VARCHAR(50) DEFAULT NULL,
   prenom VARCHAR(50) DEFAULT NULL,
   mail VARCHAR(50) NOT NULL,
   mot_de_passe VARCHAR(50),
   codePromo VARCHAR(10),
   PRIMARY KEY(ID_user)
);

CREATE TABLE Voiture(
   ID_voiture INT auto_increment,
   marque VARCHAR(50) DEFAULT NULL,
   modele VARCHAR(50) DEFAULT NULL,
   année VARCHAR(4),
   puisance VARCHAR(10) DEFAULT NULL,
   spécificité VARCHAR(200),
   ID_user INT NOT NULL,
   PRIMARY KEY(ID_voiture),
   FOREIGN KEY(ID_user) REFERENCES Utilisateur(ID_user)
);

CREATE TABLE Louer(
   ID_voiture INT,
   ID_user INT,
   date_location DATE,
   PRIMARY KEY(ID_voiture, ID_user),
   FOREIGN KEY(ID_voiture) REFERENCES Voiture(ID_voiture),
   FOREIGN KEY(ID_user) REFERENCES Utilisateur(ID_user)
);

INSERT INTO Utilisateur VALUES 
(1, "AIT HAMOUCHE", "Noury", "noury93@gmail.com", "root", "PROMO10"),
(2, "ANOTA", "Tyron", "tyron.anota@gmail.com","root", "PROMO10"),
(3, "BENMAHI", "Zakaria", "zaki@gmail.com", "root", "PROMO10"),
(4, "BENSAADI", "Smaïl", "bensaadi-smail@gmail.com", "root", "PROMO10"),
(5, "BISSEY", "Morgan", "morgan@gmail.com", "root", "PROMO10"),
(6, "BOUZIDI", "Sophiane", "so.pso@gmail.com", "root", "PROMO10"),
(7, "DANFAKHA", "Almamy Daouda", "daouda1@gmail.com", "root", "PROMO10"),
(8, "DUGAST", "Maxime", "max.max@gmail.com", "root", "PROMO10"),
(9, "EL KHADRAOUI", "Oumaima", "oumaima@gmail.com", "root", "PROMO10"),
(10, "GUILLEVIC", "Arthur", "aurthurido12@gmail.com", "root", "PROMO10"),
(11, "HADJI", "Azraoui", "az93200@gmail.com", "root", "PROMO10"),
(12, "KHERBOUCHE", "Rayane", "kherboucherayane@gmail.com", "root", "PROMO10"),
(13, "test", "test", "test@gmail.com", "test", "PROMO10");

INSERT INTO Voiture VALUES 
(1, "Alpine", "A310", "2019", "193 chevaux","très polyvalente!",1 ),
(2, "Audi", "RSQ8", "2022","600 chevaux"," ",2 ),
(3, "Ferrari", "F40", "1991", "478 chevaux"," ",3),
(4, "FIAT", "500", "2017", "90 chevaux"," ",4),
(5, "Mercedes-Benz", "classe A", "2014", "115 chevaux"," ",5),
(6, "Lotus", "elise", "2002", "130 chevaux"," ",6),
(7, "Lamborghini", "Aventador", "2015", "740 chevaux"," ",7),
(8, "Citroën", "C3", "2009", "75 chevaux"," ",8),
(9, "Renault", "twingo", "2000", "60 chevaux","",9),
(10, "Rolls-Royce", "phantom", "2022", "571 chevaux"," ",10),
(11, "Seat", "ibiza", "1996", "75 chevaux"," ",11),
(12, "Toyota", "Supra", "2020", "340 chevaux"," ",12),
(13, "Porsche", "Boxter", "2001", "220 chevaux"," ",13);

INSERT INTO Louer VALUES
(1, 1, "2022-05-11"),
(2, 2, "2022-01-16"),
(3, 3, "2022-02-23"),
(4, 4, "2022-02-16"),
(5, 5, "2022-05-25"),
(6, 6, "2022-03-01"),
(7, 7, "2022-08-11"),
(8, 8, "2022-04-02");