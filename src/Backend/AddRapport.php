<?php
require_once 'config.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $adresse = htmlspecialchars(trim($_POST['adresse']));
    $date = htmlspecialchars(trim($_POST['date']));
    $echantillon = intval($_POST['echantillon']);
    $produit = intval($_POST['produit']);
    $visiteur = intval($_POST['visiteur']);
    $practicien = intval($_POST['practicien']);

    try {
        $bdd = getDatabaseConnection();
        if (!$bdd) {
            throw new Exception("Impossible de se connecter à la base de données.");
        }

        // Insertion dans la base de données
        $req = $bdd->prepare('INSERT INTO rapport (AdresseRapport, DateRapport, Id_Echantillon, Id_Produit, Id_Visiteur, Id_Practicien) VALUES (?, ?, ?, ?, ?, ?)');
        $req->execute([$adresse, $date, $echantillon, $produit, $visiteur, $practicien]);

        echo "Rapport ajouté avec succès. <a href='../Frontend/AddRapport.html'>Ajouter un autre rapport</a>";
    } catch (Exception $e) {
        echo "Erreur : " . $e->getMessage();
    }
}
?>