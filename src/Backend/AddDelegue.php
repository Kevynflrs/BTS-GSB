<?php
require_once 'config.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $region = intval($_POST['region']);
    $utilisateur = intval($_POST['utilisateur']);

    try {
        $bdd = getDatabaseConnection();
        if (!$bdd) {
            throw new Exception("Impossible de se connecter à la base de données.");
        }

        // Insertion dans la base de données
        $req = $bdd->prepare('INSERT INTO délégué (IdRegion, Id_Utilisateur) VALUES (?, ?)');
        $req->execute([$region, $utilisateur]);

        echo "Délégué ajouté avec succès. <a href='../Frontend/AddDelegue.html'>Ajouter un autre délégué</a>";
    } catch (Exception $e) {
        echo "Erreur : " . $e->getMessage();
    }
}
?>