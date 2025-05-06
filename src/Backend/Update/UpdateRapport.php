<?php
require_once '../config.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $idRapport = intval($_POST['id_rapport']);
    $adresse = htmlspecialchars(trim($_POST['adresse']));
    $date = htmlspecialchars(trim($_POST['date']));
    $echantillon = intval($_POST['echantillon']);
    $produit = intval($_POST['produit']);
    $visiteur = intval($_POST['visiteur']);
    $practicien = intval($_POST['practicien']);

    // Vérification des champs obligatoires
    if (empty($idRapport) || empty($adresse) || empty($date) || empty($echantillon) || empty($produit) || empty($visiteur) || empty($practicien)) {
        die("Tous les champs sont obligatoires.");
    }

    if (strtotime($date) > time()) {
        die("La date du rapport ne peut pas être ultérieure à la date actuelle.");
    }

    try {
        // Connexion à la base de données
        $bdd = getDatabaseConnection();

        // Préparation de la requête de mise à jour
        $stmt = $bdd->prepare("
            UPDATE rapport
            SET AdresseRapport = :adresse,
                DateRapport = :date,
                Id_Echantillon = :echantillon,
                Id_Produit = :produit,
                Id_Visiteur = :visiteur,
                Id_Practicien = :practicien
            WHERE Id_Rappport = :id_rapport
        ");

        // Exécution de la requête avec les données du formulaire
        $stmt->execute([
            ':adresse' => $adresse,
            ':date' => $date,
            ':echantillon' => $echantillon,
            ':produit' => $produit,
            ':visiteur' => $visiteur,
            ':practicien' => $practicien,
            ':id_rapport' => $idRapport,
        ]);

        echo "<script>
            alert('Rapport mis à jour avec succès.');
            window.location.href = '../../Frontend/ajout.html';
        </script>";
    } catch (Exception $e) {
        die("Erreur lors de la mise à jour du rapport : " . $e->getMessage());
    }
} else {
    die("Méthode non autorisée.");
}
?>