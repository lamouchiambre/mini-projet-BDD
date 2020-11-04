DROP TABLE Inventaire;
DROP TABLE Vente;
DROP TABLE Acteur;
DROP TABLE Role;
DROP TABLE Chars;
DROP TABLE Dates;
DROP TABLE Heure;
DROP TABLE Costume;
DROP TABLE Billet;
DROP TABLE Visiteur;
DROP TABLE Promotion;

CREATE TABLE Inventaire (
    fk_acteur VARCHAR(10),
    fk_role VARCHAR(10), 
    fk_chars VARCHAR(10), 
    fk_dates VARCHAR(10), 
    fk_heure VARCHAR(10), 
    fk_costume VARCHAR(10), 
    quantite NUMERIC(10, 0),     /* i positif : ajouté à l'inventaire, si négatif : enlevé de l'inventaire */
    FOREIGN KEY (fk_acteur) REFERENCES Acteur(pk_acteur),
    FOREIGN KEY (fk_role) REFERENCES Role(pk_role),
    FOREIGN KEY (fk_chars) REFERENCES Chars(pk_chars),
    FOREIGN KEY (fk_dates) REFERENCES Dates(pk_dates),
    FOREIGN KEY (fk_heure) REFERENCES Heure(pk_heure),
    FOREIGN KEY (fk_costume) REFERENCES Costume(pk_costume)
);

CREATE TABLE Ventes (
    fk_billet VARCHAR(10),
    fk_promotion VARCHAR(10),
    fk_dates VARCHAR(10),
    fk_heure VARCHAR(10), 
    fk_visiteur VARCHAR(10), 
    prix NUMERIC(10, 2),
    FOREIGN KEY (fk_billet) REFERENCES Billet(pk_billet),
    FOREIGN KEY (fk_promotion) REFERENCES Promotion(pk_promotion),
    FOREIGN KEY (fk_dates) REFERENCES Dates(pk_dates),
    FOREIGN KEY (fk_heure) REFERENCES Heure(pk_heure),
    FOREIGN KEY (fk_visiteur) REFERENCES Visiteur(pk_visiteur)
);


CREATE TABLE Acteur (
    pk_acteur VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    age DECIMAL(2, 0),
    contrat VARCHAR(10) /* CDD ou CDI */
);

CREATE TABLE Role (
    pk_role VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(100),
    histoire VARCHAR(300)
);

CREATE TABLE Chars (
    pk_chars VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(100),
    theme VARCHAR(100)
);

CREATE TABLE Dates (
    pk_dates VARCHAR(10) PRIMARY KEY,
    jour VARCHAR(10),
    mois VARCHAR(10),
    annee VARCHAR(10)
);

CREATE TABLE Heure (
    pk_heure VARCHAR(10) PRIMARY KEY,
    second VARCHAR(10),
    minute VARCHAR(10),
    heure VARCHAR(10)
);

CREATE TABLE Costume (
    pk_costume VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(10),
    prix NUMERIC(10, 2),
    theme VARCHAR(100),
    taille VARCHAR(10),
    stock VARCHAR(10)
);

CREATE TABLE Billet (
    pk_billet VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(100),
    duree INT,
    nb_parcs VARCHAR(10),
    tarif_enfant VARCHAR(10),
    tarif_adulte VARCHAR(10),
    dates DATE,
);

CREATE TABLE Visiteur (
    pk_visiteur VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(10),
    prenom VARCHAR(10),
    age DECIMAL(2, 0),
    nationalite VARCHAR(100)
);

CREATE TABLE Promotion (
    pk_promotion VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(100),
    pourcentage NUMERIC(2, 0),
    debut DATE,
    fin DATE
);

CREATE VIEW parade_Noel_2019 
AS SELECT (Acteur.nom, Chars.nom, Role.nom, Costume.nom) 
FROM Inventaire, Dates, Chars Acteur 
WHERE pk_dates = fk_dates and pk_role = fk_role AND pk_acteur = fk_acteur AND pk_costume = fk_costume AND jour = "25" AND mois = "12" AND annee = "2019";