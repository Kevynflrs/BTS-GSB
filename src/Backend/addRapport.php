<?php
require_once 'db_connection.php';

try {
    // Connexion à la base de données
    $pdo = getDatabaseConnection();
} catch (Exception $e) {
    die("Erreur de connexion : " . $e->getMessage());
}

// Récupération des données du formulaire
$adresse = htmlspecialchars(trim($_POST['adresse']));
$dateRapport = date('Y-m-d'); // Date actuelle
$idEchantillon = intval($_POST['id_echantillon']);
$idProduit = intval($_POST['id_produit']);
$idVisiteur = intval($_POST['id_visiteur']);
$idPracticien = intval($_POST['id_practicien']);

try {
    // Insertion des données du rapport dans la base de données
    $insertQuery = $pdo->prepare("
        INSERT INTO rapport (AdresseRapport, DateRapport, Id_Echantillon, Id_Produit, Id_Visiteur, Id_Practicien)
        VALUES (:adresse, :dateRapport, :idEchantillon, :idProduit, :idVisiteur, :idPracticien)
    ");
    $insertQuery->execute([
        'adresse' => $adresse,
        'dateRapport' => $dateRapport,
        'idEchantillon' => $idEchantillon,
        'idProduit' => $idProduit,
        'idVisiteur' => $idVisiteur,
        'idPracticien' => $idPracticien
    ]);

    echo "Rapport ajouté avec succès.";
} catch (Exception $e) {
    echo "Erreur lors de l'ajout du rapport : " . $e->getMessage();
}
?>