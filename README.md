# BTS-GSB

Ce projet est une application web de gestion de rapports pour le laboratoire GSB, réalisée dans le cadre du BTS SIO.

## Fonctionnalités principales

- Authentification des utilisateurs (visiteur, délégué, responsable)
- Ajout et gestion des rapports, produits, échantillons, praticiens, visiteurs et délégués
- Gestion des droits d'accès selon le rôle
- Visualisation des rapports personnels et régionaux
- Interface responsive et moderne

## Structure du projet

- **public/** : ressources statiques (images, CSS)
- **src/Backend/** : logique serveur, accès base de données, authentification, API
- **src/Frontend/** : pages HTML/PHP pour l’interface utilisateur
- **gsb_rapport.sql** : script SQL pour la base de données