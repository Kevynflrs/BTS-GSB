CREATE TABLE Utilisateur(
   Id_Utilisateur INT AUTO_INCREMENT,
   MotDePasse VARCHAR(50),
   NomUtilisateur VARCHAR(50),
   PrenomUtilisateur VARCHAR(50),
   Login VARCHAR(50),
   NumeroTelephoneUtilisateur VARCHAR(255),
   MailUtilisateur VARCHAR(255),
   Rôle VARCHAR(50),
   PRIMARY KEY(Id_Utilisateur)
);



CREATE TABLE Region(
   IdRegion INT AUTO_INCREMENT,
   NomRegion VARCHAR(50),
   Code_Postal VARCHAR(50),
   PRIMARY KEY(IdRegion)
);

CREATE TABLE practicien(
   Id_Practicien INT AUTO_INCREMENT,
   SpecialitePracticien VARCHAR(50),
   DescriptionPracticien VARCHAR(255),
   Cabinet VARCHAR(255),
   PRIMARY KEY(Id_Practicien)
);

CREATE TABLE Delegue(
   Id_Delegue INT AUTO_INCREMENT,
   IdRegion INT NOT NULL,
   Id_Utilisateur INT NOT NULL,
   PRIMARY KEY(Id_Delegue),
   FOREIGN KEY(IdRegion) REFERENCES Region(IdRegion),
   FOREIGN KEY(Id_Utilisateur) REFERENCES Utilisateur(Id_Utilisateur)
);

CREATE TABLE Visiteur(
   Id_Visiteur INT AUTO_INCREMENT,
   PrenomVisiteur VARCHAR(50),
   Adresse VARCHAR(50),
   IdRegion INT NOT NULL,
   Id_Delegue INT NOT NULL,
   Id_Utilisateur INT NOT NULL,
   PRIMARY KEY(Id_Visiteur),
   FOREIGN KEY(IdRegion) REFERENCES Region(IdRegion),
   FOREIGN KEY(Id_Delegue) REFERENCES Delegue(Id_Delegue),
   FOREIGN KEY(Id_Utilisateur) REFERENCES Utilisateur(Id_Utilisateur)
);

CREATE TABLE Responsable(
   Id_Responsable INT AUTO_INCREMENT,
   Id_Utilisateur INT NOT NULL,
   PRIMARY KEY(Id_Responsable),
   FOREIGN KEY(Id_Utilisateur) REFERENCES Utilisateur(Id_Utilisateur)
);

CREATE TABLE Echantillon(
   Id_Echantillon INT AUTO_INCREMENT,
   NomEchantillon VARCHAR(50),
   DateDistributionEchantillon DATE,
   Libele VARCHAR(50),
   QuantiteEchantillon VARCHAR(50),
   PRIMARY KEY(Id_Echantillon)
);

CREATE TABLE Produit(
   Id_Produit INT AUTO_INCREMENT,
   NomProduit VARCHAR(50),
   DateAjoutProduit VARCHAR(50),
   Libele VARCHAR(50),
   QuantiteProduit VARCHAR(50),
   PRIMARY KEY(Id_Produit)
);



CREATE TABLE Rapport(
   Id_Rapport INT AUTO_INCREMENT,
   AdresseRapport varchar(255),
   DateRapport DATE,
   Id_Visiteur INT NOT NULL,
   Id_Practicien INT NOT NULL,
   PRIMARY KEY(Id_Rapport),
   FOREIGN KEY(Id_Visiteur) REFERENCES Visiteur(Id_Visiteur),
   FOREIGN KEY(Id_Practicien) REFERENCES Practicien(Id_Practicien)
);

CREATE TABLE Dirige(
   Id_Delegue INT,
   Id_Responsable INT,
   PRIMARY KEY(Id_Delegue, Id_Responsable),
   FOREIGN KEY(Id_Delegue) REFERENCES Delegue(Id_Delegue),
   FOREIGN KEY(Id_Responsable) REFERENCES Responsable(Id_Responsable)
);

INSERT INTO `utilisateur` (`Id_Utilisateur`, `MotDePasse`, `NomUtilisateur`, `PrenomUtilisateur`, `Login`, `NumeroTelephoneUtilisateur`, `MailUtilisateur`, `Role`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, 'Visiteur'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, 'Responsable'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, 'Délégué');

ALTER TABLE `delegue`
  ADD CONSTRAINT `fk_region` FOREIGN KEY (`IdRegion`) REFERENCES `region` (`IdRegion`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;