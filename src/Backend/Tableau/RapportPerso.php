<?php
session_start();
$isConnected = isset($_SESSION['user_id']);

require_once '../../Backend/config.php';
require_once '../../Backend/auth.php';

if (!isset($_SESSION['user_id'])) {
    die("Vous devez être connecté pour accéder à cette page.");
}

$userId = $_SESSION['user_id'];

try {
    $bdd = getDatabaseConnection();
    $stmt = $bdd->prepare("
        SELECT 
            r.AdresseRapport, 
            r.CodePostal, 
            r.DateRapport, 
            p.NomProduit, 
            e.NomEchantillon, 
            v.PrenomUtilisateur AS Visiteur, 
            pr.EmailPracticien AS Practicien
        FROM rapport r
        JOIN produit p ON r.Id_Produit = p.Id_Produit
        JOIN echantillon e ON r.Id_Echantillon = e.Id_Echantillon
        JOIN utilisateur v ON r.Id_Visiteur = v.Id_Utilisateur
        JOIN practicien pr ON r.Id_Practicien = pr.Id_Practicien
        WHERE r.Id_Visiteur = :userId
    ");
    $stmt->execute([':userId' => $userId]);
    $reports = $stmt->fetchAll();
} catch (Exception $e) {
    die("Erreur : " . $e->getMessage());
}
?>