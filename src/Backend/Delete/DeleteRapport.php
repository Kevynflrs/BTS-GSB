<?php
require_once '../config.php';
session_start();

// Vérification du rôle utilisateur
if (!isset($_SESSION['role']) || $_SESSION['role'] !== 'responsable') {
    die("Accès refusé : seuls les responsables peuvent supprimer un rapport.");
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!isset($_POST['id_rapport'])) {
        die("Erreur : ID du rapport manquant.");
    }

    $idRapport = intval($_POST['id_rapport']);
    if (!filter_var($idRapport, FILTER_VALIDATE_INT)) {
        die("Erreur : ID du rapport invalide.");
    }

    try {
        $bdd = getDatabaseConnection();
        $stmt = $bdd->prepare("UPDATE rapport SET etat = 'supprimer' WHERE Id_Rappport = :idRapport");
        $stmt->execute([':idRapport' => $idRapport]);

        echo "<script>
            alert('Rapport marqué comme supprimé.');
            window.location.href = '../../Frontend/Add/Rapport.php';
        </script>";
    } catch (Exception $e) {
        die('Erreur lors de la suppression logique du rapport : ' . $e->getMessage());
    }
} else {
    die("Méthode non autorisée.");
}
?>