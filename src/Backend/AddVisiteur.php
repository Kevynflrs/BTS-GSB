<?php
require_once 'config.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $prenom = htmlspecialchars(trim($_POST['prenom']));
    $adresse = htmlspecialchars(trim($_POST['adresse']));
    $mail = htmlspecialchars(trim($_POST['mail']));
    $telephone = htmlspecialchars(trim($_POST['telephone']));
    $region = intval($_POST['region']);
    $delegue = intval($_POST['delegue']);
    $utilisateur = intval($_POST['utilisateur']);

    // Validation des champs
    if (!filter_var($mail, FILTER_VALIDATE_EMAIL)) {
        echo "L'adresse e-mail est invalide.";
        exit;
    }

    if (!preg_match('/^\+?[0-9\s\-]+$/', $telephone)) {
        echo "Le numéro de téléphone est invalide.";
        exit;
    }

    try {
        $bdd = getDatabaseConnection();
        if (!$bdd) {
            throw new Exception("Impossible de se connecter à la base de données.");
        }

        // Insertion dans la base de données
        $req = $bdd->prepare('INSERT INTO visiteur (PrenomVisiteur, AdresseVisiteur, MailVisiteur, NumeroTelephoneVisiteur, IdRegion, Id_Délégué, Id_Utilisateur) VALUES (?, ?, ?, ?, ?, ?, ?)');
        $req->execute([$prenom, $adresse, $mail, $telephone, $region, $delegue, $utilisateur]);

        echo "Visiteur ajouté avec succès. <a href='../Frontend/ajout_visiteur.html'>Ajouter un autre visiteur</a>";
    } catch (Exception $e) {
        echo "Erreur : " . $e->getMessage();
    }
}
?>