<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire de Rapport de Visite</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<?php
include 'config.php';

echo "<h2> Forumaire envoyé </h2>";

if (isset($_POST['submit'])) {
    $dateVisite = $_POST['visit-date'];
    $dateVisite = date('Y-m-d', strtotime($dateVisite));
    
    if (empty($dateVisite)) {
        echo "<p> Veuillez entrer une date de visite </p>";
    } else {
        $now = new DateTime('now');
        $now = $now->format('Y-m-d');
        
        if ($dateVisite > $now) {
            echo "<p> La date de visite doit être inférieure ou égale à la date actuelle </p>";
        }
        else
        {
            echo "<p> La date de visite est correcte </p>";

            // Récupérer les données du formulaire
            $visitDate = $_POST['visit-date'];
            $prenom = $_POST['prenom'];
            $samples = $_POST['samples'];
            $adresse = $_POST['address'];
            $codepostal = $_POST['codepostal'];
            $ville = $_POST['ville'];
            
            $idPracticien = (int) $_POST['practitioner'][0];
            $idRegion = (int) $_POST['region'][0];
            $idEchantillon = $_POST['samples'];
            $idProduit = $_POST['products'];
            
            
            
            var_dump("Produit", $idProduit);
            
            
            
            
            
            $adresse = $adresse . " " . $codepostal . " " . $ville;
            
            // Vérifier si des fichiers ont été téléchargés
            $attachments = $_FILES['attachments'] ?? null;

            // Afficher les données
            echo "<h2>Résultats du formulaire</h2>";
            echo "<p><strong>Date de visite:</strong> $visitDate</p>";
            echo "<p><strong>Prénom:</strong> $prenom</p>";
            echo "<p><strong>Échantillons fournis:</strong> $samples</p>";
            echo "<p><strong>Ville:</strong> $adresse</p>";
            echo "<p><strong>Code postal:</strong> $codepostal</p>";
            echo "<p><strong>Ville :</strong> $ville</p>";
            
            
            
        }
    }
        
}



?>
</body>
</html>