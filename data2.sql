/* Liste des Acteurs */
/*INSERT INTO Acteur (pk_acteur, nom, prenom, age, contrat) VALUES ('', '', '', '', '');*/
INSERT INTO Acteur (pk_acteur, nom, prenom, age, contrat) VALUES ('1', 'Jolie', 'Angelina', '45', 'CDD');

/* Liste des Roles */
/*INSERT INTO Role (pk_role, nom, histoire) VALUES ('', '', '');*/
INSERT INTO Role (pk_role, nom, histoire) VALUES ('1', 'Princesse', 'Blanche-neige');

/* Liste des Chars */
/*INSERT INTO Chars (pk_chars, nom, theme) VALUES ('', '', '');*/
INSERT INTO Chars (pk_chars, nom, theme) VALUES ('1', 'La Hotte du Père Noël', 'Noël');

/* Liste des Dates */
/*INSERT INTO Dates (pk_dates, jour, mois, annee) VALUES ('', '', '', '');*/
INSERT INTO Dates (pk_dates, jour, mois, annee) VALUES ('1', '04', '11', '2017');

/* Liste des Heures */
/*INSERT INTO Heure (pk_heure, second, minute, heure) VALUES ('', '', '', '');*/
INSERT INTO Heure (pk_heure, second, minute, heure) VALUES ('1', '42', '26', '22');

/* Liste des Costumes */
/*INSERT INTO Costume (pk_costume, nom, prix, theme, stock) VALUES ('', '', '', '', '');*/
INSERT INTO Costume (pk_costume, nom, prix, theme, stock) VALUES ('1', 'Superman', '90', 'Super héros', '42');

/* Liste des Billets */
/*INSERT INTO Billet (pk_billet, nom, duree, nb_parcs, tarif_enfant, tarif_adulte, dates) VALUES ('', '', '', '', '', '', '');*/
INSERT INTO Billet (pk_billet, nom, duree, nb_parcs, tarif_enfant, tarif_adulte, dates) VALUES ('1', 'Billet daté', '1', '2', '74', '79', '25/12/2020');

/* Liste des Visiteurs */
/*INSERT INTO Visiteur (pk_visiteur, nom, prenom, age) VALUES ('', '', '', '');*/
INSERT INTO Visiteur (pk_visiteur, nom, prenom, age, nationalite) VALUES ('1', 'Williams', 'Serena', '39', 'américaine');

/* Liste des Promotion */
/*INSERT INTO Promotion (pk_promotion, nom, debut, fin) VALUES ('', '', '', '');*/
INSERT INTO Promotion (pk_promotion, nom, debut, fin) VALUES ('1', 'Noel', '1/12/2020', '31/12/2020');

/* Liste des Inventaire */
/*INSERT INTO Inventaire (fk_acteur, fk_role, fk_chars, fk_dates, fk_heure, fk_costume, quantite) VALUES ('', '', '', '', '', '', '');*/
INSERT INTO Inventaire (fk_acteur, fk_role, fk_chars, fk_dates, fk_heure, fk_costume, quantite) VALUES ('1', '1', '1', '1', '1', '1', '25');

/* Liste des Vente */
/*INSERT INTO Vente (fk_billet, fk_promotion, fk_dates, fk_visiteur, prix) VALUES ('', '', '', '', '');*/
INSERT INTO Vente (fk_billet, fk_promotion, fk_dates, fk_visiteur, prix) VALUES ('1', '1', '2', '1', '74');
