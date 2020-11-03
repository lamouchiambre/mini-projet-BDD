DROP TABLE Inventaire;
DROP TABLE Vente;
DROP TABLE Acteur;
DROP TABLE Role;
DROP TABLE Char;
DROP TABLE Date;
DROP TABLE Heure;
DROP TABLE Costume;
DROP TABLE Billet;
DROP TABLE Visiteur;
DROP TABLE Promotion;

CREATE TABLE Inventaire (
    fk_acteur VARCHAR(10) FOREIGN KEY REFERENCES Acteur(pk_acteur),
    fk_role VARCHAR(10) FOREIGN KEY REFERENCES Role(pk_role),
    fk_char VARCHAR(10) FOREIGN KEY REFERENCES Char(pk_char),
    fk_date VARCHAR(10) FOREIGN KEY REFERENCES Date(pk_date),
    fk_heure VARCHAR(10) FOREIGN KEY REFERENCES Heure(pk_heure),
    fk_costume VARCHAR(10) FOREIGN KEY REFERENCES Costume(pk_costume),
    quantite NUMERIC(10, 0) /* i positif : ajouté à l'inventaire, si négatif : enlevé de l'inventaire */
);

CREATE TABLE Ventes (
    fk_billet VARCHAR(10) FOREIGN KEY REFERENCES Billet(pk_billet),
    fk_promotion VARCHAR(10) FOREIGN KEY REFERENCES Promotion(pk_promotion),
    fk_date VARCHAR(10) FOREIGN KEY REFERENCES Date(pk_date),
    fk_heure VARCHAR(10) FOREIGN KEY REFERENCES Heure(pk_heure),
    fk_visiteur VARCHAR(10) FOREIGN KEY REFERENCES Visiteur(pk_visiteur),
    prix NUMERIC(10, 2)
);

CREATE TABLE Acteur (
    pk_acteur VARCHAR(10) FOREIGN KEY REFERENCES Acteur(pk_acteur),
    nom VARCHAR(100),
    prenom VARCHAR(100),
    age DECIMAL(2, 0),
    contrat VARCHAR(10) /* CDD ou CDI */
);

CREATE TABLE Role (
    pk_role VARCHAR(10) FOREIGN KEY REFERENCES Role(pk_role),
    nom VARCHAR(100),
    histoire VARCHAR(300)
),

CREATE TABLE Char (
    pk_char VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(100),
    theme VARCHAR(100)
);

CREATE TABLE Date (
    pk_date VARCHAR(10) PRIMARY KEY,
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
    theme VARCHAR(100)
);

CREATE TABLE Billet (
    pk_billet VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(100),
    duree INT,
    nb_parcs VARCHAR(10),
    tarif_enfant VARCHAR(10),
    tarif_adulte VARCHAR(10),
    date DATE,
);

CREATE TABLE Visiteur (
    pk_visiteur VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(10),
    prenom VARCHAR(10),
    age DECIMAL(2, 0)
);

CREATE TABLE Promotion (
    pk_promotion VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(100),
    pourcentage NUMERIC(2, 0),
    debut DATE,
    fin DATE
);

/* Liste des Acteurs */
/*INSERT INTO Acteur (pk_acteur, nom, prenom, age, contrat) VALUES ('', '', '', '', '');*/
INSERT INTO Acteur (pk_acteur, nom, prenom, age, contrat) VALUES ('1', 'Jolie', 'Angelina', '45', 'CDD');

/* Liste des Roles */
/*INSERT INTO Role (pk_role, nom, histoire) VALUES ('', '', '');*/
INSERT INTO Role (pk_role, nom, histoire) VALUES ('1', 'Princesse', 'Blanche-neige');

/* Liste des Chars */
/*INSERT INTO Char (pk_char, nom, theme) VALUES ('', '', '');*/
INSERT INTO Char (pk_char, nom, theme) VALUES ('1', 'La Hotte du Père Noël', 'Noël');

/* Liste des Dates */
/*INSERT INTO Date (pk_date, jour, mois, annee) VALUES ('', '', '', '');*/
INSERT INTO Date (pk_date, jour, mois, annee) VALUES ('1', '23', '09', '1998');

/* Liste des Heures */
/*INSERT INTO Heure (pk_heure, second, minute, heure) VALUES ('', '', '', '');*/
INSERT INTO Heure (pk_heure, second, minute, heure) VALUES ('1', '', '', '');

/* Liste des Costumes */
/*INSERT INTO Costume (pk_costume, nom, prix, theme) VALUES ('', '', '', '');*/
INSERT INTO Costume (pk_costume, nom, prix, theme) VALUES ('1', '', '', '');

/* Liste des Billets */
/*INSERT INTO Billet (pk_billet, nom, duree, nb_parcs, tarif_enfant, tarif_adulte, date) VALUES ('', '', '', '', '', '', '');*/
INSERT INTO Billet (pk_billet, nom, duree, nb_parcs, tarif_enfant, tarif_adulte, date) VALUES ('1', '', '', '', '', '', '');

/* Liste des Visiteurs */
/*INSERT INTO Visiteur (pk_visiteur, nom, prenom, age) VALUES ('', '', '', '');*/
INSERT INTO Visiteur (pk_visiteur, nom, prenom, age) VALUES ('1', '', '', '');

/* Liste des Promotion */
/*INSERT INTO Promotion (pk_promotion, nom, debut, fin) VALUES ('', '', '', '');*/
INSERT INTO Promotion (pk_promotion, nom, debut, fin) VALUES ('1', '', '', '');

/* Liste des Inventaire */
/*INSERT INTO Inventaire (fk_acteur, fk_role, fk_char, fk_date, fk_heure, fk_costume, quantite) VALUES ('', '', '', '', '', '', '');*/
INSERT INTO Inventaire (fk_acteur, fk_role, fk_char, fk_date, fk_heure, fk_costume, quantite) VALUES ('1', '1', '1', '1', '1', '1', '25');

/* Liste des Vente */
/*INSERT INTO Vente (fk_billet, fk_promotion, fk_date, fk_visiteur, prix) VALUES ('', '', '', '', '');*/
INSERT INTO Vente (fk_billet, fk_promotion, fk_date, fk_visiteur, prix) VALUES ('1', '1', '2', '1', '74');